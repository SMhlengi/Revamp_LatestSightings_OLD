﻿<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="categoryBlogList.aspx.cs" Inherits="Revamp_LatestSightings.categoryBlogList" %>

<asp:Content ID="categoryBlogs" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<style>
    .img-link img{
        height:218px;
    }

    h3{
        border-bottom:none !important;
        padding-bottom:0px !important;
        margin-bottom:0px !important;
    }
    .blog-grid-content{
        min-height:100px !important;
    }
</style>

        <!-- Blog Category BEGIN -->
        <asp:PlaceHolder ID="cagegories" runat="server"></asp:PlaceHolder>
        <!-- Blog Category END -->
                    
        <!-- Blog List BEGIN -->
        <h1 class="main-title" style="margin-top:0px !important;">Read Our Blog</h1>
        <% if (cateogryArticles != null && cateogryArticles.Count > 0)
           { %>
        <div class="col-md-12">
            <div class="blog-grid">
                <div class="row">
                    <% foreach (var categoryArticle in cateogryArticles)
                       { %>
                    <div class="col-md-4 col-md-offset-0 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
							<div class="blog-grid-item triggerAnimation animated" data-animate="fadeInUp">
								<a class="img-link" href="/blog.aspx?id=<%=categoryArticle["id"] %>&cat=<%=categoryArticle["categoryId"]  %>"><img alt="" src="<%=ConfigurationManager.AppSettings["articleImagePath"] %>/<%=categoryArticle["picture"] %>"></a>
								<div class="blog-grid-controls">
									<a href="/blog.aspx?id=<%=categoryArticle["id"] %>&cat=<%=categoryArticle["categoryId"]  %>" title="Sep. 19 2014"><i class="fa fa-clock-o"></i></a>
<%--									<a href="#" title="5 Comments"><i class="fa fa-comments"></i></a>--%>
									<a href="/blog.aspx?id=<%=categoryArticle["id"] %>&cat=<%=categoryArticle["categoryId"]  %>" title="Continue Reading"><i class="fa fa-arrow-right"></i></a>
								</div>
								<div class="blog-grid-content">
									<h3><a href="/blog.aspx?id=<%=categoryArticle["id"] %>&cat=<%=categoryArticle["categoryId"]  %>"><%=categoryArticle["header"] %></a></h3>									
<%--                                    <%= categoryArticle["body"] %>--%>
								</div>
							</div>
						</div>
                    <%} %>
                </div>
            </div>
        </div>
        <!-- Blog List END -->
        <%}else { %>           
                No Blogs at the moment
         <%} %>
                    
                    
	<div class="row">
            <!-- LEFT Content BEGIN -->
			<div class="leftcol">
                        
                <!-- Latest Galleries BEGIN -->
                <asp:PlaceHolder ID="latestGalleries" runat="server"></asp:PlaceHolder>
                <!-- Latest Galleries END --> 
                            
            <!-- LEFT Content END -->
			</div>
                        
        <!-- RIGHT Content BEGIN -->
		<div class="rightcol">
			<div id="sidebar-area">
                             
            <!-- 300x250 AD -->
            <div class="ad300">
                <asp:PlaceHolder ID="ad300by50" runat="server"></asp:PlaceHolder>
			</div>
            <!-- 300x250 AD -->
                            
            <div class="clearfix"></div>
            <div class="spacer"></div>
                            
                <!-- Top 10 BEGIN -->
                    <asp:PlaceHolder ID="monthlyTopContributors" runat="server"></asp:PlaceHolder>
                <!-- Top 10 END -->

                <div class="clearfix"></div>
                <div class="spacer small"></div>
                <asp:PlaceHolder ID="topearningvideos" runat="server"></asp:PlaceHolder>
                            
			</div>
		</div>
        <!-- RIGHT Content END -->
                        
                        
	</div>
<!-- End Content Area -->
                        <!-- Modal Pop-Up BEGIN -->
                        <div id="popup_container">
                	        <div id="over_lay"></div>
                	        <div class="popup_ex">
                  		
                                <div id="close_button"><a href="#"><i class="fa fa-times-circle "></i></a></div>
                        
                                <!-- Container -->
                                <div class="lightboxcontainer">
                        	
                                    <!-- Photo -->
                                    <div class="col-md-9 col-sm-12">
                            
        <%--                            	<div class="slider-container portfolio-featured-gallery" style="margin:0 !important">
								        <div class="image-slider">
									        <div class="image-gallery-item item">
										        <img alt="" src="images/slideshow-1140x390.gif">
									        </div>
									        <div class="image-gallery-item item">
										        <img alt="" src="images/slideshow-1140x390.gif">
									        </div>
									        <div class="image-gallery-item item">
										        <img alt="" src="images/slideshow-1140x390.gif">
									        </div>
									        <div class="image-gallery-item item">
										        <img alt="" src="images/slideshow-1140x390.gif">
									        </div>
								        </div>
								        </div>--%>
							            <div class="portfolio-featured-image triggerAnimation animated" style="margin:0 !important">
								            <img alt="" src="images/slideshow-1140x390.gif" class="imageDialog galleryImage">
							            </div>
                            
                                    </div>
                            
                                    <!-- Photo Details & Social Sharing -->
                                    <div class="col-md-4 col-sm-12">
                            
                            	        <div class="spacer small"></div>
                                
                            	        <div class="left"><img src="images/FBandTwitter.jpg" width="202" height="20"></div>
                                
                                        <div class="clearfix"></div>
                                        <div class="spacer"></div>
                                
                                        <h4> Battle of the Kruger </h4>
                                
                                        <div class="clearfix"></div>
                                        <div class="spacer small"></div>
                                
                                        <p>
                                        Location: Kruger National Park <br>
                                        Submitted by: LionWhisperer
                                        </p>
                                
                                        <div class="clearfix"></div>
                                        <div class="spacer small"></div>
                                
                                        <div class="left">
                                	        <a href="#" title="Share to Facebook"><i style="font-size:36px; padding-right:10px;" class="fa fa-facebook-square"></i></a>
                                            <a href="#" title="Share to Google"><i style="font-size:36px; padding-right:10px;" class="fa fa-google"></i></a>
                                            <a href="#" title="Share to Twitter"><i style="font-size:36px; padding-right:10px;" class="fa fa-twitter"></i></a>
                                        </div>
                                
                                        <div class="clearfix"></div>
                                        <div class="spacer small"></div>
                                
                                        <!-- Facebook Comments BEGIN -->
                                        <h4 class="page-titles">Comments</h4>
                                        <div class="blog-grid">
                                            <img src="images/FBComments_sml.jpg" width="587" height="682"> 
                                        </div>
                                        <!-- Facebook Comments END -->
                                
                                  </div>
                        
                                </div> 
                  		        <!-- Container -->
                  		
                	        </div>
              	        </div>
                        <!-- Modal Pop-Up END3 -->


    <script src="<%= ResolveUrl("~/js/galleryviewmodal.js") %>"></script>
    <script src="<%= ResolveUrl("~/js/homePage.js?v=5") %>"></script>
    <script src="<%= ResolveUrl("~/js/bootstrap.youtubepopup.min.js?v=10") %>"></script>


</asp:Content>