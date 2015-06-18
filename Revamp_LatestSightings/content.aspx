﻿<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="Revamp_LatestSightings.content" %>

<asp:Content id="content" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

<!-- Page Content Area -->
                
        <!-- Blog Category BEGIN -->
        <asp:PlaceHolder ID="cagegories" runat="server"></asp:PlaceHolder>
        <!-- Blog Category END -->
                    
	<div class="row">
        <!-- LEFT Content BEGIN -->
		<div class="leftcol">
                        	
            <!-- Blog BEGIN -->
            <h1 class="main-title" style="margin-top:0px !important;"><%= contentArticle["header"] %></h1>
                            
            <div class="blog-list-post triggerAnimation animated" data-animate="fadeIn">
                <%if (!String.IsNullOrEmpty(contentArticle["picture"])){ %>
               <div class="blog-list-featured-image">
                    <a href="#"><img alt="" src="<%= ConfigurationManager.AppSettings["articleImagePath"] %>/<%= contentArticle["picture"] %>"></a>
                </div>
                <%} %>
                                
                <div class="blog-details">
                            <span class="blog-date"><%= contentArticle["dateCreated"] %></span>
						</div>
                                            
                <div class="blog-list-content">
                                
                    <div style="color:white">
                        <%= contentArticle["body"].Replace("color: #111111;", "").Replace("color: #333333;", "").Replace("color: #444444;", "").Replace("color: #636e7b", "") %>
                    </div>

					<div class="clearfix"></div>
                    <div class="spacer sml"></div>

<%--					<div class="left">
                        <div class="right">
                            <a href="#" title="Share to Facebook"><i style="font-size:36px; padding-right:10px;" class="fa fa-facebook-square"></i></a>
                            <a href="#" title="Share to Google"><i style="font-size:36px; padding-right:10px;" class="fa fa-google"></i></a>
                            <a href="#" title="Share to Twitter"><i style="font-size:36px; padding-right:10px;" class="fa fa-twitter"></i></a>
                        </div>
                    </div>--%>
                                    
                    <div class="clearfix"></div>
                    <div class="spacer sml"></div>
                                    
                </div>
                                
                                
                                
                                
                            
            </div>

            <!-- Latest Blogs BEGIN -->
            <asp:PlaceHolder ID="otherRelatedArticles" runat="server"></asp:PlaceHolder>
            <!-- Latest Blogs END -->
                            
            <!-- Blog END -->
            <div class="clearfix"></div>
            <div class="spacer sml"></div>
                            
<%--            <!-- Facebook Comments BEGIN -->
            <h4 class="page-titles">Join the Conversation</h4>
            <div class="blog-grid">
                <img src="images/FBComments.jpg" width="587" height="682"> 
            </div>
            <!-- Facebook Comments END -->--%>
                            
        <!-- LEFT Content END -->
		</div>
                        
        <!-- RIGHT Content BEGIN -->
		<div class="rightcol">
			<div id="sidebar-area">
                                                        
            <!-- Top Stories BEGIN -->
            <asp:PlaceHolder ID="lastBlogs" runat="server"></asp:PlaceHolder>
            <!-- Top Stories END -->
                            
            <div class="clearfix"></div>
            <div class="spacer"></div>
                            
            <!-- 300x250 AD -->
            <div class="ad300">
                <img src='<% = ConfigurationManager.AppSettings["siteUrl"] %>images/ads-300x250.gif' width="300" height="250">
			</div>
            <!-- 300x250 AD -->
                            
            <div class="clearfix"></div>
            <div class="spacer"></div>
                            
            <!-- Top 10 BEGIN -->
            <asp:PlaceHolder ID="monthlyTopContributors" runat="server"></asp:PlaceHolder>
            <!-- Top 10 END -->
                            
												
			</div>
		</div>
	</div>
<!-- End Content Area -->

</asp:Content>
