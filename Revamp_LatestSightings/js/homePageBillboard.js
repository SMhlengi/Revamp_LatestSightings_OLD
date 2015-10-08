﻿var BILLBOARDS = [];

function constructBillboard(json) {
    BILLBOARDS = json;
}

function setupMainBB() {
    var control = "#itemOne";
    setupBBTitle(control, BILLBOARDS[0].Title);
    setupBBDesc(control, BILLBOARDS[0].ArticleBody);
    setupMainBBPicture(control, BILLBOARDS[0].Url)
}

function setupBBTitle(control, title) {
    $(control + " h3").html(title);
}


function setupBBDesc(control, desc) {
    $(control + " p").html(desc);
}

function setupMainBBPicture(control, imageUrl) {
    $(control + " img").attr("src", imageUrl);
}


function buildingBB() {
    var bb = '<div class="col-md-9">' + 
							'<div id="slider" class="slides Xowl-carousel">' +
								
                                '<div id="itemOne" class="item">' +
									'<div class="overlay">' +
										'<a href="blog-single.html">' +
											'<h3>Latin America growing middle classes are restless</h3>' +
											'<p>"Juan Middle Class" may be a cartoon, but the problems he faces -- expensive schools, crummy healthcare, ballooning grocery bills -- are all too real for millions of newly middle-class Latin Americans. [...]</p>' +
										'</a>' +
									'</div>' +
										'<img alt="" src="images/postslider-879x487.gif" />' +
								'</div>' +
                                
								'<div id="itemTwo" class="item">' +
									'<div class="overlay">' +
										'<a href="blog-sidebar.html">' +
											'<h3>Expert Tips for Winter Hair Care by Bharti Taneja</h3>' +
											'<p>A wedding in winters is always more cherished as it gives an opportunity to a would-be- bride to adorn herself in her own way. She does not have to worry about the heat and sweat, be it in the choice of clothes, footwear, makeup, or [...]</p>' +
										'</a>' +
									'</div>' +
									'<img alt="" src="images/postslider-879x487.gif" />' +
								'</div>' +
                                
								'<div id="ItemThree" class="item">' +
									'<div class="overlay">' +
										'<a href="blog-sidebar.html">' +
											'<h3>Serena leads ailing women to Singapore for WTA Finals</h3>' +
											'<p>By Patrick Johnston SINGAPORE (Reuters) - The top eight women in world tennis have limped to the season-ending WTA Finals in Singapore this week, with creaking knees and form fears casting a shadow over the WTA latest [...]</p>' +
										'</a>' +
									'</div>' +
									'<img alt="" src="images/postslider-879x487.gif" />' +
								'</div>' +
                                
								'<div id="itemFour" class="item">' +
									'<div class="overlay">' +
										'<a href="blog-single.html">' +
											'<h3>Egg freezing: controversial new benefit in the US workplace</h3>' +
											'<p>Free meals, four months of maternity leave and now egg-freezing: Facebook s latest gift to its employees has rekindled debate on the role of women in the [...]</p>' +
										'</a>' +
									'</div>' +
									'<img alt="" src="images/postslider-879x487.gif" />' +
								'</div>' +
                                
							'</div>' +
						'</div>' +
                        
						'<div class="col-md-3">' +
							'<div id="thumbnails" class="thumbs Xowl-carousel">' +
								'<div class="item active"><img alt="" src="images/350.gif" /><span>Latin Americas growing middle classes are restless</span></div>' +
								'<div class="item"><img alt="" src="images/350.gif" /><span>Expert Tips for Winter Hair Care by Bharti Taneja</span></div>' +
								'<div class="item"><img alt="" src="images/350.gif" /><span>Serena leads ailing women to Singapore for WTA Finals</span></div>' +
								'<div class="item"><img alt="" src="images/350.gif" /><span>Egg freezing: controversial new benefit in the US workplace</span></div>' +
							'</div>' +
						'</div>' +
                        						
						'<div class="clearfix"></div>';

    $(".post-slider").html(bb);
}

$(document).ready(function () {
    console.log("---- homePageBillboard ---");
    console.log(BILLBOARDS);
    //setupMainBB();
    buildingBB();
});