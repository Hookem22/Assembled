<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Review.aspx.cs" Inherits="Review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assembled</title>
    <link rel="icon" type="image/png" href="img/fav.png">
    <link href="Styles/Style.css" rel="stylesheet" type="text/css" />
    <style>
        body, header
        {
            min-width: 750px;
            background-color: #EAEAEA;
        }
        .content
        {
            width: 1024px;
            margin: 0 auto;
        }
        .mainnav
        {
            position: absolute;
        }
        .mainnav .logoWord
        {
            font-family: "KlinicSlab","Helvetica Neue",Helvetica,Arial,sans-serif;
            color: white;
            float: left;
            font-size: 30px;
            padding: 20px 0 0;
            cursor: pointer;
        }
        .mainnav ul
        {
            text-align: right;
            margin: 6px 12px;
            padding: 6px 0 0;
        }
        .mainnav ul li
        {
            margin: 8px 12px;
        }
        .mainnav ul li a
        {
            font-size: 16px;
        }
        .mainnav .navPlaceholder::-webkit-input-placeholder { /* WebKit browsers */
            color: #F19F00;
        }
        .mainnav img
        {
            height: 50px;
            float: left;
            margin: 0 4px 4px 15px;
        }
        .mainCol
        {
            max-width: 690px;
            margin-left: 15px;
            float: left;
        }
        .title
        {
            height: 185px;
            margin-top: 80px;
            background-color: white;
            border: 1px solid #dcdcdc;
            border-radius: 2px;
            box-shadow: 0 1px 1px -1px rgba(153,153,153,0.6);
        }
        .title img.logoImg
        {
            margin: -30px 15px 0 30px;
            float: left;
            height: 80px;
        }
        .title h1, .title h2
        {
            float: left;
            color: #484848;

        }
        .title h1
        {
            margin: 26px 15px 0 0;
        }
        .title h2.subtitle
        {
            margin: 29px 0 0;
        }
        .title .gradient
        {
            height: 50px;

            background: rgb(40,52,59); /* Old browsers */
            background: -moz-linear-gradient(left,  rgba(40,52,59,1) 0%, rgba(130,140,149,1) 64%, rgba(181,189,200,1) 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, right top, color-stop(0%,rgba(40,52,59,1)), color-stop(64%,rgba(130,140,149,1)), color-stop(100%,rgba(181,189,200,1))); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(left,  rgba(40,52,59,1) 0%,rgba(130,140,149,1) 64%,rgba(181,189,200,1) 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(left,  rgba(40,52,59,1) 0%,rgba(130,140,149,1) 64%,rgba(181,189,200,1) 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(left,  rgba(40,52,59,1) 0%,rgba(130,140,149,1) 64%,rgba(181,189,200,1) 100%); /* IE10+ */
            background: linear-gradient(to right,  rgba(40,52,59,1) 0%,rgba(130,140,149,1) 64%,rgba(181,189,200,1) 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#28343b', endColorstr='#b5bdc8',GradientType=1 ); /* IE6-9 */

        }
        .metrics
        {
            border-top: 2px solid #EAEAEA;
            margin-top: 65px;
        }
        .metrics .thumb
        {
            border-right: 2px solid #EAEAEA;
            width: 60px;
            margin: 0 0 0 20px;
            float: left;
            height: 67px;
        }
        .thumb img
        {
            margin: 8px 0 0;
            height: 50px;
        }
        .metrics h1
        {
            font-size: 42px;
            font-weight: normal;
            letter-spacing: 0px;
            margin: 14px 0 0;
        }
        .metrics .metric
        {
            float: left;
            padding: 0 10px;
            border-right: 2px solid #EAEAEA;
            height: 67px;
        }
        .metrics .metric h2
        {
            margin: 10px 0px 0;
            font-size: 18px;
        }
        .metrics .metric img
        {
            height: 20px;
            margin-left: 4px;
            clear: both;
            float: left;
        }
        .addReview
        {
            float: left;
            margin: 16px 0 0 7px;
            height: 34px;
            background-color: #3399FE;
            color: white;
            width: 160px;
            font-size: 20px;
            line-height: 32px;
            border-radius: 15px;
            text-align: center;
            transition-duration: 0.7s;
            -webkit-transition: 0.7s;
        }
        .addReview:hover
        {
            cursor: pointer;
            box-shadow: inset 0 60px 0 0 #0154a7;
            transition-duration: 0.6s;
            -webkit-transition: 0.6s;
        }

        .interested
        {
            width: 646px;
            background-color: #dff2fa;
            border: 1px solid #ddeaed;
            border-left: 3px solid #2c84cc;
            color: #666;
            border-radius: 2px;
            margin: 15px 0;
            padding: 20px;
            font-weight: bold;
            font-size: 18px;
            float: left;
        }
        .interested .learnMore
        {
            float: right;
            height: 34px;
            background-color: #F19F00;
            color: white;
            width: 160px;
            font-size: 20px;
            line-height: 32px;
            border-radius: 15px;
            text-align: center;
            transition-duration: 0.7s;
            -webkit-transition: 0.7s;
            margin: -6px 0 0;
        }
        .interested .learnMore:hover
        {
            cursor: pointer;
            box-shadow: inset 0 60px 0 0 #ca8500;
            transition-duration: 0.6s;
            -webkit-transition: 0.6s;
        }
        .review
        {
            background-color: white;
            border: 1px solid #dcdcdc;
            border-radius: 2px;
            box-shadow: 0 1px 1px -1px rgba(153,153,153,0.6);
            clear: both;
            margin-bottom: 12px;

            height: 275px;
        }
        .review .thumb
        {
            border: 2px solid #eaeaea;
            float: left;
            margin: 20px;
            padding: 0 10px 4px;
        }
        .review .owner
        {

        }
        .review .owner h3 
        {
            font-size: 24px;
            margin: 32px 0 12px;
        }
        .review span
        {
            color: #3399FD;
        }
        .review p
        {
            clear: both;
            margin: 0 40px 0 110px;
        }
        .review .stars
        {
            float: left;
            margin: 30px 110px;
        }
        .review .stars div
        {
            float: left;
            margin-left: 55px;
        }
        .review .stars h2 
        {
            font-size: 18px;
            margin: 0;
        }
        .review .stars img
        {
            height: 15px;
            margin-left: 16px;
        }

        .rightCol
        {
            float: left;
            width: 300px;
            padding-left: 14px;
            margin-top: 80px;
        }
        .suggested
        {
            float: left;
            margin-top: 12px;
            background-color: white;
            border: 1px solid #dcdcdc;
            border-radius: 2px;
            box-shadow: 0 1px 1px -1px rgba(153,153,153,0.6);
            padding-left: 12px;
        }
        .suggestion
        {
            float: left;
            margin-bottom: 18px;
        }
        .suggestion img
        {
            float: left;
            height: 56px;
            width: 56px;
        }
        .suggestion h3
        {
            float: left;
            margin: 6px 50px 2px 15px;
        }
        .suggestion h3:hover
        {
            text-decoration: underline;
            cursor: pointer;
        }
        .suggestion p
        {
            float: left;
            margin: 0 15px;
        }
       
    </style>
    <script src="Scripts/jquery-2.0.3.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#SearchTextbox').focus(function () {
                $("#SearchTextbox").removeClass("navPlaceholder").css("background-color", "white").animate({ "width": "260px" }, 500, function () {
                    
                });
                
            });
            $('#SearchTextbox').blur(function () {
                $("#SearchTextbox").addClass("navPlaceholder").css("background-color", "#ffc554").animate({ "width": "160px" }, 500, function () {

                });

            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <header class="mainnav">
        <div class="content">
            <a href="#"><img src="img/logoshadow.png" /></a>
            <div class="logoWord">Assembled</div>
            <ul>
                <li><a href="#">Reviews</a></li>
                <li><a href="#"><input id="SearchTextbox" class="navPlaceholder" type="text" placeholder="Search..." style="border:none;background-color:#ffc554;padding: 8px;border-radius:5px;font-size:16px;" /></a></li>
                <li><a href="#">Vendors</a></li>
                <li><a href="#" style="text-decoration:underline;">Sign In</a></li>
            </ul>
        </div>
    </header>
    <div class="content">
        <div class="mainCol">
            <div class="title">
                <div class="gradient"></div>
                <img class="logoImg" src="img/hotschedules.png" />
                <h1>HotSchedules</h1><h2 class="subtitle">Austin, TX</h2>
                <div class="metrics">
                    <div class="thumb">
                        <img src="img/thumbsup.png" />
                    </div>
                    <div class="metric">
                        <h1>89%</h1>
                        <p style="margin-top: 42px;">4 Reviews</p>
                    </div>
                    <div class="metric">
                        <h2>Ease of Use</h2>
                        <img src="img/reviewstars.png" />
                    </div>
                    <div class="metric">
                        <h2 style="padding-left:5px;">Durability</h2>
                        <img src="img/reviewstars.png" />
                    </div>
                    <div class="metric">
                        <h2 style="padding-left:21px;">Price</h2>
                        <img src="img/reviewstars.png" />
                    </div>
                    <div class="addReview">
                        Add Review
                    </div>
                </div>
            </div>
            <div class="interested">
                <div style="float:left;"> Interested in using Hot Schedules for your restaurant?</div>
                <div class="learnMore">Learn More</div>
            </div>
            <div class="review">
                <div class="thumb">
                    <img src="img/thumbsup.png" />
                </div>
                <div class="owner"><h3>P Terry's Franchise</h3>John P, Owner&nbsp;&nbsp;<span>Verified</span></div>
                <p>Review of the product goes here. It will be written very well and people will read this because they have to. Make a change, use this product. Just a few sentances needed.</p>
                <div class="stars">
                    <div>
                        <h2>Ease of Use</h2>
                        <img src="img/reviewstars.png" />
                    </div>
                    <div>
                        <h2 style="padding-left:3px;">Durability</h2>
                        <img src="img/reviewstars.png" />
                    </div>
                    <div>
                        <h2 style="padding-left:26px;">Price</h2>
                        <img src="img/reviewstars.png" />
                    </div>
                </div>
            </div>
            <div class="review">
                <div class="thumb">
                    <img src="img/thumbsdown.png" />
                </div>
                <div class="owner"><h3>The Garden Spot</h3>Zach P, Owner&nbsp;&nbsp;<span>Verified</span></div>
                <p>Review of the product goes here. It will be written very well and people will read this because they have to. Make a change, use this product. Just a few sentances needed.</p>
                <div class="stars">
                    <div>
                        <h2>Ease of Use</h2>
                        <img src="img/reviewstars.png" />
                    </div>
                    <div>
                        <h2 style="padding-left:3px;">Durability</h2>
                        <img src="img/reviewstars.png" />
                    </div>
                    <div>
                        <h2 style="padding-left:26px;">Price</h2>
                        <img src="img/reviewstars.png" />
                    </div>
                </div>
            </div>
            <div class="review">
                <div class="thumb">
                    <img src="img/thumbsup.png" />
                </div>
                <div class="owner"><h3>Pinthouse Pizza</h3>Philip W, Owner&nbsp;&nbsp;<span>Verified</span></div>
                <p>Review of the product goes here. It will be written very well and people will read this because they have to. Make a change, use this product. Just a few sentances needed.</p>
                <div class="stars">
                    <div>
                        <h2>Ease of Use</h2>
                        <img src="img/reviewstars.png" />
                    </div>
                    <div>
                        <h2 style="padding-left:3px;">Durability</h2>
                        <img src="img/reviewstars.png" />
                    </div>
                    <div>
                        <h2 style="padding-left:26px;">Price</h2>
                        <img src="img/reviewstars.png" />
                    </div>
                </div>
            </div>
            <div style="clear:both;height:10px;"></div>
        </div>
        <div class="rightCol">
            <div class="ad">
                <img src="img/Ad.png" />
            </div>
            <div class="suggested">
                <h2>Featured POS Systems</h2>
                <div class="suggestion">
                    <img src="http://static.wixstatic.com/media/01b22f_0ded1288a8c24bc89dd503aea01a1e5c.png" />
                    <h3>Square POS</h3>
                    <p>92% Overall</p>
                </div>
                <div class="suggestion">
                    <img src="https://admin.poslavu.com/cp/images/lavucp.png" />
                    <h3>LAVU Point of Sale</h3>
                    <p>88% Overall</p>
                </div>
                <div class="suggestion">
                    <img src="http://www.saimgs.com/imglib/products/logos-small/logo_4997_0_106x85.jpg" />
                    <h3>Toast POS</h3>
                    <p>85% Overall</p>
                </div>
                <div class="suggestion">
                    <img src="http://www.saimgs.com/imglib/products/logos-small/logo_3384_0_106x85.jpg" />
                    <h3>Maitre'D POS</h3>
                    <p>80% Overall</p>
                </div>
                <div class="suggestion">
                    <img src="http://www.saimgs.com/imglib/products/logos-small/logo_3631_0_106x85.jpg" />
                    <h3>Instore</h3>
                    <p>67% Overall</p>
                </div>
                <div class="suggestion">
                    <img src="http://www.squirrelsystems.com/Frontend/Images/logo.gif" />
                    <h3>Squirrel Systems</h3>
                    <p>55% Overall</p>
                </div>
            </div>

        </div>
    </div>
    <div class="footer" style="background-color:#3399FE;">
        <span>Call Us:</span> 512-762-9449 <span>| Email Us:</span> Hello@asmbled.com <span>| Send Us Mail:</span> 1709 Northwood Rd, Austin
    </div>
    </form>
</body>
</html>
