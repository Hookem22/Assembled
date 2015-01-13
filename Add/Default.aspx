<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assembled</title>
    <link rel="icon" type="image/png" href="/img/fav.png">
    <link href="/Styles/Style.css" rel="stylesheet" type="text/css" />
    <style>
        body, header
        {
            background-color: #EAEAEA;
        }
        .headerContent
        {
            max-width: 1024px;
            margin: 0 auto;
        }
        .content
        {
            width: 1024px;
            margin: 0 auto;
        }
        .mainnav
        {
            position: absolute;
            height: 60px;
        }
        .mainnav .logoWord
        {
            font-family: "KlinicSlab","Helvetica Neue",Helvetica,Arial,sans-serif;
            color: white;
            float: left;
            font-size: 30px;
            padding: 26px 0 0;
            cursor: pointer;
        }
        .mainnav ul
        {
            text-align: right;
            margin: 6px 12px;
            padding: 12px 0 0;
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
            width: 690px;
            float: left;
            margin: 80px 0 20px 15px;
        }
        .aboutYou
        {
            float: left;
            background-color: white;
            border: 1px solid #dcdcdc;
            border-radius: 2px;
            box-shadow: 0 1px 1px -1px rgba(153,153,153,0.6);
            padding: 20px 20px 8px;
            color: #666;
            margin-bottom: 16px;
            font-size:18px;
            width: 272px;

            display:none;
        }
        .aboutYou input
        {
            font-size:18px;
            width: 248px;
            margin-bottom:12px;
        }
        .thankYou
        {
            float: left;
            background-color: white;
            border: 1px solid #dcdcdc;
            border-radius: 2px;
            box-shadow: 0 1px 1px -1px rgba(153,153,153,0.6);
            padding: 20px 20px;
            color: #666;
            margin-bottom: 16px;
            font-size:18px;
            width: 272px;
        }
        .main
        {
            float: left;
            background-color: white;
            border: 1px solid #dcdcdc;
            border-radius: 2px;
            box-shadow: 0 1px 1px -1px rgba(153,153,153,0.6);
            padding: 0 16px 0 20px;
            color: #666;
        }
        .main h1
        {

        }
        .main h4
        {
            margin: 12px 4px 4px;
            font-size: 18px;
        }
        .main input
        {
            font-size: 18px;
            width: 337px;
        }
        .main select
        {
            font-size: 18px;
            width: 285px;
            color: #666;
        }
        .main p
        {
            font-size: 16px;
            color: #666;
        }

        .rating {
            unicode-bidi: bidi-override;
            direction: rtl;
            text-align: left;
        }
        .rating > span {
            display: inline-block;
            position: relative;
            width: 1.1em;
            color: #666;
        }
        .main .rating > span:hover:before,
        .main .rating > span:hover ~ span:before {
            content: "\2605";
            position: absolute;
            color: #F19F00;
            cursor: pointer;
        }
        .rating > span.active:before,
        .rating > span.active ~ span:before {
            content: "\2605";
            position: absolute;
            color: #F19F00;
            cursor: pointer;
        }

        .main .rating > span {
            font-size: 2em;
        }

        .main textarea
        {
            font-size: 16px;
            height: 72px;
            width: 193px;
        }
        .metric
        {
            float:right;
        }
        .metric p
        {
            float:left;
            margin: 4px;
        }
        .metric .rating
        {
            float: left;

        }
        .main .metric .rating > span {
            font-size: 2em;
        }

        .submitReview
        {
            float: left;
            margin: 8px 215px 36px;
            height: 34px;
            background-color: #3399FE;
            color: white;
            font-size: 20px;
            line-height: 32px;
            border-radius: 5px;
            text-align: center;
            transition-duration: 0.7s;
            -webkit-transition: 0.7s;
            padding: 0 10px;
        }
        .submitReview:hover
        {
            cursor: pointer;
            box-shadow: inset 0 60px 0 0 #0154a7;
            transition-duration: 0.6s;
            -webkit-transition: 0.6s;
        }

        .rightCol
        {
            float: left;
            width: 300px;
            padding-left: 14px;
            margin-top: 80px;
        }
        .samples
        {
            float: left;
            background-color: white;
            border: 1px solid #dcdcdc;
            border-radius: 2px;
            box-shadow: 0 1px 1px -1px rgba(153,153,153,0.6);
            padding-left: 12px;
            width: 300px;
            color: #666;
        }
        .sample
        {
            float: left;
            margin: 0 20px 18px;
            border-top: 2px solid #EAEAEA;
        }

        .rightCol .metric
        {
            float: left;
            text-align: center;
            width: 33%;
        }

        .rightCol .metric .rating
        {
            margin-left: 10px;
        }

        .signup {
            display: none;
            padding: 0 30px;
            position: absolute;
            width: 50%;
            margin: 90px 22%;
            border-radius: 15px;
            border: 2px solid #F19F00;
            color: #F19F00;
            background: white;
            z-index: 120;
        }
        .background
        {
            display: none;
            background: #aaaaaa url(https://apps.crowdtorch.com/Content/css_new/images/ui-bg_flat_0_aaaaaa_40x100.png) 50% 50% repeat-x;
            opacity: .80;
            z-index: 110;
            width: 100%;
            height: 100%;
            position: fixed;
        }
        
        .reviewSubmitted 
        {
            display:none;
            padding: 30px 30px 80px;
            position: fixed;
            width: 50%;
            margin: 90px 22%;
            border-radius: 15px;
            border: 2px solid #F19F00;
            color: #F19F00;
            background: white;
            z-index: 120;
            font-size: 20px;
            color: #666;
        }
        .addReview
        {
            float: left;
            height: 34px;
            background-color: #F19F00;
            color: white;
            width: 230px;
            font-size: 20px;
            line-height: 32px;
            border-radius: 5px;
            text-align: center;
            transition-duration: 0.7s;
            -webkit-transition: 0.7s;
            margin: 20px 224px;
        }
        .addReview:hover
        {
            cursor: pointer;
            box-shadow: inset 0 60px 0 0 #ca8500;
            transition-duration: 0.6s;
            -webkit-transition: 0.6s;
        }
    </style>
    <script src="/Scripts/jquery-2.0.3.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            if ($("#NameTextbox").val() || $("#RestaurantTextbox").val() || $("#EmailTextbox").val()) {
                $(".content").show();
                $(".pitch").fadeOut();
                $("html, body").animate({ scrollTop: 0 }, "slow");
            }

            $(".mainCol").on("click", ".main .rating span", function () {
                $(this).closest(".rating").children().each(function () {
                    $(this).removeClass("active");
                });
                $(this).addClass("active");
            });

            //$('#SignInButton').click(function () {
            //    $(".signupContent").show();
            //    $(".background").fadeIn();
            //    $(".signup").fadeIn();
            //});

            //$('.closeButton').click(function () {
            //    $(".background").fadeOut();
            //    $(".signup").fadeOut();
            //});

            $(".signupContent .button").click(function () {

                $(".content").show();
                $(".pitch").fadeOut();
                $("html, body").animate({ scrollTop: 0 }, "slow");
            });

            //$("#SignOutButton").click(function () {

            //    $(".headerContent li").hide();
            //    $("#SignInButton").show();
            //    $("#SignedIn a").html("");
            //    $(".signupContent input").val("");
            //});

            $(".mainCol").on("click", ".submitReview", function (e) {

                //$(this).closest(".review").hide();

                $(this).closest(".review").animate({ height: "60px" }, 700, function () {
                    var html = '<h2 style="text-align:center;width: 648px;margin-top: 20px;">Thank you. This review has been submitted.</h2>'
                    $(this).closest(".review").html(html);
                });


                var subject = "Assembled new review submitted";
                if (EscapeString($("#RestaurantTextbox").val()))
                    subject = EscapeString($("#RestaurantTextbox").val()) + " - " + subject;
                var body = "Name: " + EscapeString($("#NameTextbox").val()) + "<br/> Restaurant: " + EscapeString($("#RestaurantTextbox").val()) + "<br/>Email: " + EscapeString($("#EmailTextbox").val());
                body += "<br/><br/>";
                body += "Product: " + EscapeString($(this).closest(".review").find("#ProductNameTextbox").val()) + "<br/> Type: " + $(this).closest(".review").find("h1").html() + "<br/>";
                body += "Overall Stars: ";
                $(this).closest(".review").find(".rating.overall").children().each(function (i) {
                    if ($(this).hasClass("active")) {
                        if (i == 0) body += 4 + " of 4";
                        if (i == 1) body += 3 + " of 4";
                        if (i == 2) body += 2 + " of 4";
                        if (i == 3) body += 1 + " of 4";
                    }
                });
                body += "<br/>";
                body += "Ease of Use: ";
                $(this).closest(".review").find(".rating.ease").children().each(function (i) {
                    if ($(this).hasClass("active")) {
                        if (i == 0) body += 4 + " of 4";
                        if (i == 1) body += 3 + " of 4";
                        if (i == 2) body += 2 + " of 4";
                        if (i == 3) body += 1 + " of 4";
                    }
                });
                body += "<br/>";
                body += "Customer Service: ";
                $(this).closest(".review").find(".rating.customer").children().each(function (i) {
                    if ($(this).hasClass("active")) {
                        if (i == 0) body += 4 + " of 4";
                        if (i == 1) body += 3 + " of 4";
                        if (i == 2) body += 2 + " of 4";
                        if (i == 3) body += 1 + " of 4";
                    }
                });
                body += "<br/>";
                body += "Price: ";
                $(this).closest(".review").find(".rating.price").children().each(function (i) {
                    if ($(this).hasClass("active")) {
                        if (i == 0) body += 4 + " of 4";
                        if (i == 1) body += 3 + " of 4";
                        if (i == 2) body += 2 + " of 4";
                        if (i == 3) body += 1 + " of 4";
                    }
                });

                body += "<br/><br/>";
                body += "Title: " + EscapeString($(this).closest(".review").find("#TitleTextbox").val()) + "<br/>Pros: " + EscapeString($(this).closest(".review").find("#ProsTextbox").val()) + "<br/>Cons: " + EscapeString($(this).closest(".review").find("#ConsTextbox").val()) + "<br/>Comments: " + EscapeString($(this).closest(".review").find("#CommentsTextbox").val()) + "<br/><br/>";

                SendEmail(subject, body);

            });

            $(".reviewSubmitted .button").click(function () {
                $(".main input").val("");
                $(".main textarea").val("");
                $(".main .rating span").removeClass("active");
                $(".main select").val($(".main select option:first").val());

                $(".background").fadeOut();
                $(".reviewSubmitted").fadeOut();
            });

            $(".addReview").click(function () {
                var html = '<div class="main review" style="border-bottom:2px solid #EAEAEA;height:0;"><h1 style="text-align: center;">Add Review</h1><input id="ProductNameTextbox" type="text" placeholder="Product Name" style="float:left;margin: 17px 4px 0;" /><div style="float:right;width: 270px;margin: 18px 15px 0 0;"><div class="metric" style="margin-bottom:10px;"><p style="font-size:18px;">Overall Rating</p><div class="rating overall"><span>☆</span><span>☆</span><span>☆</span><span>☆</span></div></div><div class="metric"><p>Ease of Use</p><div class="rating ease"><span>☆</span><span>☆</span><span>☆</span><span>☆</span></div></div><div class="metric"><p>Customer Service</p><div class="rating customer"><span>☆</span><span>☆</span><span>☆</span><span>☆</span></div> </div><div class="metric"><p>Price</p><div class="rating price"><span>☆</span><span>☆</span><span>☆</span><span>☆</span></div></div></div><p style="margin: 16px 2px 6px;float: left;">Title of your review</p><textarea id="TitleTextbox" placeholder="In one sentence describe your experience with this product." style="width: 341px;height: 44px;float:left;clear: left;" ></textarea><div style="clear:both;"><div style="float:left;margin-right:15px;"><p style="margin: 16px 2px 6px;">Pros</p><textarea id="ProsTextbox" placeholder="What are the best aspects of this product?" style="height:4em;" ></textarea></div><div style="float:left;margin-right:15px;"><p style="margin: 16px 2px 6px;">Cons</p><textarea id="ConsTextbox" placeholder="What are some negatives of this product?" style="height:4em;" ></textarea></div><div style="float:left;"><p style="margin: 16px 2px 6px;">Additional Comments</p><textarea id="CommentsTextbox" style="height:4em;" ></textarea></div></div><div class="submitReview" style="clear:both;">Submit this Review</div></div>';
                $(".mainCol .main").last().after(html);
                $(".mainCol .main").last().animate({ height: "396px" }, 700, function () {

                });
            });

        });

        function SendEmail(subject, body) {
            $.ajax({
                type: "POST",
                url: "Default.aspx/SendEmail",
                data: "{subject:'" + subject + "', body:'" + body + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                }
            });
        }

        function EscapeString(val) {
            val = encodeURI(val);
            val = val.replace(/'/g, "\\'");
            return val;
        }



    </script>
</head>
<body>
    <form id="form1" runat="server">
<%--    <div class="background"></div>
    <div class="signup">
        <div class="signupContent">
            <img class="closeButton" src="/img/close.png" style="position:absolute; top:5px; right:5px;cursor:pointer;" />
            <div>Your Name: </div><input id="NameTextbox" type="text" /><br />
            <div>Restaurant: </div><input id="RestaurantTextbox" type="text" /><br />
            <div>Email: </div><input id="EmailTextbox" type="text" /><br />
            <a class="button" style="margin:0 35%;">Sign In</a>
        </div>
    </div>
    <div class="reviewSubmitted">
        <div>Thank you for submitting a review. Click Ok submit another review.</div>
        <a class="button" style="margin:2em 30% 0;position:absolute;">Ok</a>
    </div>--%> 
    <header class="mainnav">
        <div class="headerContent">
            <a href="#"><img src="/img/logoshadow.png" /></a>
            <div class="logoWord">Assembled</div>
<%--            <ul style="display:none;">
                <li id="SignInButton"><a href="#" style="text-decoration:underline;">Sign In</a></li>
                <li style="display:none;font-size:20px;" id="SignedIn"><a></a></li>
                <li style="display:none;"><a id="SignOutButton" href="#" style="text-decoration:underline;">Sign Out</a></li>
            </ul>--%>
        </div>
    </header>
    <div class="pitch" style="height:105%;">
        <div class="logoDiv">
            <img src="/img/logo.png" />
        </div>
            
        <div class="tagline">
            <span>As a Restaurant Owner, who do you trust?<br />
                  Reviews for Restaurant Owners, by Restaurant Owners.</span>
        </div>
        <div class="signup" style="display:block;margin: 0 22%;">
            <div class="signupContent" style="display:block;">
                <div>Your Name: </div><input runat="server" id="NameTextbox" type="text" /><br />
                <div>Restaurant: </div><input runat="server" id="RestaurantTextbox" type="text" /><br />
                <div>Email: </div><input runat="server" id="EmailTextbox" type="text" /><br />
                <a class="button" style="margin:0 35%;">SUBMIT</a>
                <div style="width: 100%;font-size: 18px;line-height: 20px;margin: 16px 0;color: #555;">*We only use this to verify your reviews. None of your information will be shared or posted without your consent.</div>
            </div>
        </div>
    </div>
    <div class="content" style="display:none;">
        <div class="mainCol">
            <div class="main review" style="border-bottom:2px solid #EAEAEA;">
                <h1 style="text-align: center;">POS System</h1>
                <input id="ProductNameTextbox" type="text" placeholder="Product Name" style="float:left;margin: 17px 4px 0;" />
                <select style="display:none;">
                    <option>- Select Type -</option>
                    <option>Point of Sale Systems</option>
                    <option>Inventory Management</option>
                    <option>Retail Accounting</option>
                    <option>Merchandising Management</option>
                    <option>Retail CRM</option>
                    <option>Scheduling</option>
                </select>
                <div style="float:right;width: 270px;margin: 18px 15px 0 0;">
                    <div class="metric" style="margin-bottom:10px;">
                    <p style="font-size:18px;">Overall Rating</p>
                        <div class="rating overall">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Ease of Use</p>
                        <div class="rating ease">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Customer Service</p>
                        <div class="rating customer">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Price</p>
                        <div class="rating price">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                </div>
                <p style="margin: 16px 2px 6px;float: left;">Title of your review</p>
                <textarea id="TitleTextbox" placeholder="In one sentence describe your experience with this product." style="width: 341px;height: 44px;float:left;clear: left;" ></textarea>              
                <div style="clear:both;">
                    <div style="float:left;margin-right:18px;">
                        <p style="margin: 16px 2px 6px;">Pros</p>
                        <textarea id="ProsTextbox" placeholder="What are the best aspects of this product?" style="height:4em;" ></textarea>
                    </div>
                    <div style="float:left;margin-right:18px;">
                        <p style="margin: 16px 2px 6px;">Cons</p>
                        <textarea id="ConsTextbox" placeholder="What are some negatives of this product?" style="height:4em;" ></textarea>
                    </div>
                    <div style="float:left;">
                        <p style="margin: 16px 2px 6px;">Additional Comments</p>
                        <textarea id="CommentsTextbox" style="height:4em;" ></textarea>
                    </div>
                </div>
                <div class="submitReview" style="clear:both;">
                    Submit this Review
                </div>
            </div>
            <div class="main review" style="border-bottom:2px solid #EAEAEA;">
                <h1 style="text-align: center;">Payroll</h1>
                <input id="ProductNameTextbox" type="text" placeholder="Product Name" style="float:left;margin: 17px 4px 0;" />

                <div style="float:right;width: 270px;margin: 18px 15px 0 0;">
                    <div class="metric" style="margin-bottom:10px;">
                    <p style="font-size:18px;">Overall Rating</p>
                        <div class="rating overall">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Ease of Use</p>
                        <div class="rating ease">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Customer Service</p>
                        <div class="rating customer">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Price</p>
                        <div class="rating price">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                </div>
                <p style="margin: 16px 2px 6px;float: left;">Title of your review</p>
                <textarea id="TitleTextbox" placeholder="In one sentence describe your experience with this product." style="width: 341px;height: 44px;float:left;clear: left;" ></textarea>
                <div style="clear:both;">
                    <div style="float:left;margin-right:18px;">
                        <p style="margin: 16px 2px 6px;">Pros</p>
                        <textarea id="ProsTextbox" placeholder="What are the best aspects of this product?" style="height:4em;" ></textarea>
                    </div>
                    <div style="float:left;margin-right:18px;">
                        <p style="margin: 16px 2px 6px;">Cons</p>
                        <textarea id="ConsTextbox" placeholder="What are some negatives of this product?" style="height:4em;" ></textarea>
                    </div>
                    <div style="float:left;">
                        <p style="margin: 16px 2px 6px;">Additional Comments</p>
                        <textarea id="CommentsTextbox" style="height:4em;" ></textarea>
                    </div>
                </div>
                <div class="submitReview" style="clear:both;">
                    Submit this Review
                </div>
            </div>
            <div class="main review" style="border-bottom:2px solid #EAEAEA;">
                <h1 style="text-align: center;">Inventory Management</h1>
                <input id="ProductNameTextbox" type="text" placeholder="Product Name" style="float:left;margin: 17px 4px 0;" />

                <div style="float:right;width: 270px;margin: 18px 15px 0 0;">
                    <div class="metric" style="margin-bottom:10px;">
                    <p style="font-size:18px;">Overall Rating</p>
                        <div class="rating overall">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Ease of Use</p>
                        <div class="rating ease">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Customer Service</p>
                        <div class="rating customer">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Price</p>
                        <div class="rating price">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                </div>
                <p style="margin: 16px 2px 6px;float: left;">Title of your review</p>
                <textarea id="TitleTextbox" placeholder="In one sentence describe your experience with this product." style="width: 341px;height: 44px;float:left;clear: left;" ></textarea>
                <div style="clear:both;">
                    <div style="float:left;margin-right:18px;">
                        <p style="margin: 16px 2px 6px;">Pros</p>
                        <textarea id="ProsTextbox" placeholder="What are the best aspects of this product?" style="height:4em;" ></textarea>
                    </div>
                    <div style="float:left;margin-right:18px;">
                        <p style="margin: 16px 2px 6px;">Cons</p>
                        <textarea id="ConsTextbox" placeholder="What are some negatives of this product?" style="height:4em;" ></textarea>
                    </div>
                    <div style="float:left;">
                        <p style="margin: 16px 2px 6px;">Additional Comments</p>
                        <textarea id="CommentsTextbox" style="height:4em;" ></textarea>
                    </div>
                </div>
                <div class="submitReview" style="clear:both;">
                    Submit this Review
                </div>
            </div>
            <div class="main review" style="border-bottom:2px solid #EAEAEA;">
                <h1 style="text-align: center;">CRM</h1>
                <input id="ProductNameTextbox" type="text" placeholder="Product Name" style="float:left;margin: 17px 4px 0;" />

                <div style="float:right;width: 270px;margin: 18px 15px 0 0;">
                    <div class="metric" style="margin-bottom:10px;">
                    <p style="font-size:18px;">Overall Rating</p>
                        <div class="rating overall">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Ease of Use</p>
                        <div class="rating ease">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Customer Service</p>
                        <div class="rating customer">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Price</p>
                        <div class="rating price">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                </div>
                <p style="margin: 16px 2px 6px;float: left;">Title of your review</p>
                <textarea id="TitleTextbox" placeholder="In one sentence describe your experience with this product." style="width: 341px;height: 44px;float:left;clear: left;" ></textarea>
                <div style="clear:both;">
                    <div style="float:left;margin-right:18px;">
                        <p style="margin: 16px 2px 6px;">Pros</p>
                        <textarea id="ProsTextbox" placeholder="What are the best aspects of this product?" style="height:4em;" ></textarea>
                    </div>
                    <div style="float:left;margin-right:18px;">
                        <p style="margin: 16px 2px 6px;">Cons</p>
                        <textarea id="ConsTextbox" placeholder="What are some negatives of this product?" style="height:4em;" ></textarea>
                    </div>
                    <div style="float:left;">
                        <p style="margin: 16px 2px 6px;">Additional Comments</p>
                        <textarea id="CommentsTextbox" style="height:4em;" ></textarea>
                    </div>
                </div>
                <div class="submitReview" style="clear:both;">
                    Submit this Review
                </div>
            </div>
            <div class="main review" style="border-bottom:2px solid #EAEAEA;">
                <h1 style="text-align: center;">Loyalty</h1>
                <input id="ProductNameTextbox" type="text" placeholder="Product Name" style="float:left;margin: 17px 4px 0;" />

                <div style="float:right;width: 270px;margin: 18px 15px 0 0;">
                    <div class="metric" style="margin-bottom:10px;">
                    <p style="font-size:18px;">Overall Rating</p>
                        <div class="rating overall">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Ease of Use</p>
                        <div class="rating ease">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Customer Service</p>
                        <div class="rating customer">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                    <div class="metric">
                        <p>Price</p>
                        <div class="rating price">
                            <span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                        </div>
                    </div>
                </div>
                <p style="margin: 16px 2px 6px;float: left;">Title of your review</p>
                <textarea id="TitleTextbox" placeholder="In one sentence describe your experience with this product." style="width: 341px;height: 44px;float:left;clear: left;" ></textarea>
                <div style="clear:both;">
                    <div style="float:left;margin-right:18px;">
                        <p style="margin: 16px 2px 6px;">Pros</p>
                        <textarea id="ProsTextbox" placeholder="What are the best aspects of this product?" style="height:4em;" ></textarea>
                    </div>
                    <div style="float:left;margin-right:18px;">
                        <p style="margin: 16px 2px 6px;">Cons</p>
                        <textarea id="ConsTextbox" placeholder="What are some negatives of this product?" style="height:4em;" ></textarea>
                    </div>
                    <div style="float:left;">
                        <p style="margin: 16px 2px 6px;">Additional Comments</p>
                        <textarea id="CommentsTextbox" style="height:4em;" ></textarea>
                    </div>
                </div>
                <div class="submitReview" style="clear:both;">
                    Submit this Review
                </div>
            </div>
            <div class="addReview">Add Another Review</div>
            
        </div>
        <div class="rightCol">
<%--             <div class="aboutYou">
                <div>Your Name: </div><input id="NameTextbox" type="text" /><br />
                <div>Restaurant: </div><input id="RestaurantTextbox" type="text" /><br />
                <div>Email: </div><input id="EmailTextbox" type="text" /><br />
            </div>--%>
            <div class="thankYou">
                Thank you for signing up.<br /><br /> We appreciate you filling out a couple of reviews so we can help 
                restaurant owners find the best products to run their restaurant.
            </div>
            <div class="samples">
                <h2 style="margin-left:20px;">Sample Reviews</h2>
                <div class="sample">
                    <h3 style="margin: 8px 0;">"Easy to use POS"</h3>
                    <div class="rating" style="font-size:2em;">
                        <span class="active">☆</span><span>☆</span><span>☆</span><span>☆</span>
                    </div>
                    <p><b style="font-size:18px;">Pros:</b>&nbsp;This is a really great, easy to use POS system. I would highly recommend it to other restaurant owners.</p>
                    <p><b style="font-size:18px;">Cons:</b>&nbsp;It is a little more expensive than several of its competitors, but it is worth the price.</p>
                    <div>
                        <div class="metric">
                            <p style="margin: 0px 0 10px;">Ease of Use</p>
                            <div class="rating">
                                <span class="active">☆</span><span>☆</span><span>☆</span><span>☆</span>
                            </div>
                        </div>
                        <div class="metric">
                            <p style="line-height: 1em;margin: 0px 0 2px;">Customer Service</p>
                            <div class="rating" style="margin-left: 14px;">
                                <span class="active">☆</span><span>☆</span><span>☆</span><span>☆</span>
                            </div>
                        </div>
                        <div class="metric">
                            <p style="margin: 0px 18px 10px;">Price</p>
                            <div class="rating">
                                <span>☆</span><span class="active">☆</span><span>☆</span><span>☆</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sample">
                    <h3 style="margin: 8px 0;">"Poor customer service"</h3>
                    <div class="rating" style="font-size:2em;">
                        <span class="active">☆</span><span>☆</span><span>☆</span><span>☆</span>
                    </div>
                    <p><b style="font-size:18px;">Pros:</b>&nbsp;Relatively inexpensive system.</p>
                    <p><b style="font-size:18px;">Cons:</b>&nbsp;I had trouble getting the system set up, and then was unable to get anyone on the phone to help set it up. I would not recommend this product.</p>
                    <div>
                        <div class="metric">
                            <p style="margin: 0px 0 10px;">Ease of Use</p>
                            <div class="rating">
                                <span>☆</span><span>☆</span><span class="active">☆</span><span>☆</span>
                            </div>
                        </div>
                        <div class="metric">
                            <p style="line-height: 1em;margin: 0px 0 2px;">Customer Service</p>
                            <div class="rating" style="margin-left: 14px;">
                                <span>☆</span><span>☆</span><span>☆</span><span class="active">☆</span>
                            </div>
                        </div>
                        <div class="metric">
                            <p style="margin: 0px 18px 10px;">Price</p>
                            <div class="rating">
                                <span>☆</span><span class="active">☆</span><span>☆</span><span>☆</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="footer" style="background-color:#3399FE;margin:0;">
        <span>Call Us:</span> 512-762-9449 <span>| Email Us:</span> Hello@asmbld.com <span>| Send Us Mail:</span> 1709 Northwood Rd, Austin
    </div>
    </form>
</body>
</html>
