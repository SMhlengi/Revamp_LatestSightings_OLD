﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_TopMonthlyContributors.ascx.cs" Inherits="Revamp_LatestSightings.uc_TopMonthlyContributors" %>

<% if (contributorsViews != null && contributorsViews.Count > 0){ %>
<!-- Top 10 BEGIN -->
    <h4 class="page-titles"><%= stringMonth %> Top 10</h4>
                          	
    <ul class="nav nav-pills">
        <li role="presentation" class="active"><a href="#">Contributors</a></li>
        <!--<li role="presentation"><a href="#">Tingers</a></li>-->
    </ul>
                            
    <div class="table-responsive">
        <table class="table table-striped">                              	
		<tr>
			<td>Username</td>
			<td>Total Views</td>
		</tr>
	    <% foreach(var contributor in contributorsViews){%>
            <tr>
                <td><%= contributor.Stat2 %> <%= contributor.Stat3 %></td>
                <td><%= contributor.Stat4 %></td>
            </tr>
        <%} %>
        </table>
                              
        <a href="/partnership" >
        <div class="button becomeAContributor" style="text-align:center;">Become a Contributor</div>
        </a>
                              	
    </div>
    <!-- Top 10 END -->
<%} %>