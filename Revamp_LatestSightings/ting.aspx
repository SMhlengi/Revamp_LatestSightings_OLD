﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ting.aspx.cs" Inherits="Revamp_LatestSightings.ting" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="<%=ResolveUrl("~/js/SightingTingInfo.js?v=2") %>"></script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3&key=AIzaSyB3O6AqwnZ3uHY0h6ulDrxlAWXXrs99VqI"></script>
					<div class="row">
                    	<!-- LEFT Content BEGIN -->
						<div class="leftcol">
                        
                        <h1 class="main-title" style="margin-top:0px !important;">Latest Sightings</h1>
                            
                            <div class="clearfix"></div>
                        	<div class="spacer"></div>
                           
                            <img src="" id="lodgeImage" width="100%">
                            
<%--                            <div class="left">
                                <div class="col-md-3 button">Picture</div>
                                <div class="col-md-3 button">View Map</div>
                            </div>--%>

                            <div class="clearfix"></div>

                            <div class="row">
                                <div class="col-md-3">
                                    <button class="btn btn-primary btn-block">Previous</button>
                                </div>
                                <div class="col-md-3">
                                    <button class="btn btn-primary btn-block">Next</button>
                                </div>

                            </div>
                            <div class="clearfix"></div>

                            <h3 style="text-align:center;" class="sightingTingTitle"> 2 Giraffes drinking at the waterhole.. Like father like son</h3>
                           
                            
                            <div class="left">
                            	<div class="left">
                                    <div class="row">
                                        <%--<div class="col-md-2"><a href="https://twitter.com/share" class="twitter-share-button" data-text="Lastest Kruger" data-via="LatestKruger">Tweet</a></div>
                                        <div class="col-md-8"><div class="fb-like" data-href="http://latestsightings.com/sighting/<%= tingId%>" data-layout="button" data-action="recommend" data-show-faces="false" data-share="false"></div></div>--%>
                                        
                                    </div>
                            	</div>
                                <div class="right">
                                	<a href="javascript:void(0);" title="Share to Facebook" class="aboutUsFacebookShare"><i style="font-size:36px; padding-right:10px;" class="fa fa-facebook-square"></i></a>
                                    <a href="javascript:void(0);" title="Share to Twitter" class="aboutUsTwitterShare"><i style="font-size:36px; padding-right:10px;" class="fa fa-twitter"></i></a>
                                </div>
                            </div>
                            
                            <p class="tingDescription">                                
                            </p>

                            <div class="clearfix"></div>
                        	<div class="spacer"></div>

                            <!-- testing something out-->
                            <div class="row">
                                <div id="map-canvas" style="width: 100%; height: 330px"></div>
                            </div>
                            <!-- end of testing something out -->
                            
                          <!-- Slideshow END -->
                            
                            <div class="clearfix"></div>
                            <div class="spacer sml"></div>
                            
                            <!-- Facebook Comments BEGIN -->
                            <h4 class="page-titles">Join the Conversation</h4>
                            <div class="fb-comments" data-href="http://latestsightings.com//sighting/<%= tingId%>" data-numposts="5" data-colorscheme="dark" data-width="750"></div>
                            <!-- Facebook Comments END -->
                            
                            <div class="clearfix"></div>
                            <div class="spacer"></div> 
                            
                            <div class="clearfix"></div>
                        	<div class="spacer"></div>
                        
                            <!-- Space for web ads BEGIN -->
                            <!-- Space for web ads END --> 
                            
                            <div class="clearfix"></div>
                        	<div class="spacer"></div>
                            
                            <!-- Latest Galleries BEGIN -->
                            <asp:PlaceHolder ID="latestGalleries" runat="server"></asp:PlaceHolder>
                            <!-- Latest Galleries END -->  
                        <!-- LEFT Content END -->
						</div>
                        
                        <!-- RIGHT Content BEGIN -->
						<div class="rightcol">
							<div id="sidebar-area">												
							</div>
						</div>
					</div>
</asp:Content>
