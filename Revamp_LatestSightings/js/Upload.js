﻿/// <reference path="~/Scripts/knockout-3.3.0.js" />
/// <reference path="~/Scripts/jquery-1.10.2.js" />
/// <reference path="~/Scripts/resumable.js" />
$(document).ready(function () {

    vm = function ViewModel() {
        var self = this;
        self.filesToUpload = ko.observableArray();
        self.startUploadButtonText = ko.observable("Start Upload");
        self.uploadHasStarted = ko.observable(false);

        self.mainProgressBar = ko.observable('0%');
        self.disableUpload = ko.observable(false);
        self.r = new Resumable({ target: 'https://rfuapi.socialengine.co.za/api/File/Upload' });
        self.r.assignBrowse(document.getElementById('browseButton'));
        self.r.on('progress', function () {
            self.mainProgressBar((self.r.progress() * 100) + '%');
        });

        self.r.on('fileSuccess', function (file) {
            //console.debug('fileSuccess', file);
        });
        self.r.on('fileProgress', function (file) {
            //console.debug('fileProgress', file);

            for (var i = 0, iLen = self.filesToUpload().length; i < iLen; i++) {
                if (self.filesToUpload()[i].uniqueIdentifier == file.uniqueIdentifier) {
                    self.filesToUpload()[i].progress((file.progress() * 100) + '%');
                }
            }

        });
        self.r.on('fileAdded', function (file, event) {
            console.log("FILENAME");
            console.log(file.fileName);
            self.filesToUpload.push({
                fileName: file.fileName,
                uniqueIdentifier: file.uniqueIdentifier,
                progress: ko.observable('0%'),
                resumableFile: file,
                img: file.relativePath
            });
            //console.debug('fileAdded', event);
        });
        self.r.on('filesAdded', function (array) {
            $("#browseButton").attr("disabled", true);
            //console.debug('filesAdded', array);
        });
        self.r.on('fileRetry', function (file) {
            //console.debug(file);
        });
        self.r.on('fileError', function (file, message) {
            //console.debug('fileError', file, message);
        });
        self.r.on('uploadStart', function () {
            self.uploadHasStarted(true);
            $("#content-inner").css("height", "1000px");
            //console.debug('uploadStart');
        });
        self.r.on('complete', function () {
            //document.getElementById('progressBar').style.width = 100 + '%';

            $(".updateVideoDetails").click();

        });
        self.r.on('error', function (message, file) {
            //console.debug('error', message, file);
        });
        self.r.on('pause', function () {
            //console.debug('pause');
        });
        self.r.on('cancel', function () {
            //console.debug('cancel');
        });

        self.removeFile = function (file) {
            $("#browseButton").attr("disabled", false);
            self.r.removeFile(file);
            for (var i = 0, iLen = self.filesToUpload().length; i < iLen; i++) {
                if (self.filesToUpload()[i].uniqueIdentifier == file.uniqueIdentifier) {
                    self.filesToUpload(self.filesToUpload.splice(i + 1, 1));
                }
            }
        };
        self.doUpload = function () {
            self.r.upload()
            self.startUploadButtonText("Uploading...");
            self.disableUpload(true);
        };

        self.pauseUpload = function () {
            self.r.pause();
            self.startUploadButtonText("Resume");
        };
    };

    ko.applyBindings(vm);
});

