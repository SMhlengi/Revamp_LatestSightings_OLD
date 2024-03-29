﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uc_FeaturedCategories.ascx.cs" Inherits="Revamp_LatestSightings.uc_FeaturedCategories" %>

<% if (featuredCategory != null && featuredCategory.Count > 0){ %>
<!-- Blog Category BEGIN -->
<ul class="filter triggerAnimation animated" data-animate="fadeInUp">
    <li><a class="homecat" href="/bloglist/" data-filter="*">Blog Home</a></li>
    <% foreach (var category in featuredCategory){ %>
        <%if (categoryId != -1){ %>
            <li class="linkToCategory"><a class="<%if (categoryId.ToString() == category.Id){ %>active<%} %>" href="/categoryBlogList.aspx?id=<%=category.Id %>" data-filter="*"><%=category.Title %></a></li>
        <%}else{ %>
    <li class="linkToCategory"><a class="" href="/categoryBlogList.aspx?id=<%=category.Id %>" data-filter=".pics"><%=category.Title %></a></li>
    <%} %>
    <%} %>
</ul>
<!-- Blog Category END -->

<script>
    $(document).ready(function () {
        $(".linkToCategory").find("a").click(function () {
            location.href = $(this).attr("href");
        });

        $(".homecat").click(function () {
            location.href = "/bloglist";
        });
    });
</script>

<%} %>