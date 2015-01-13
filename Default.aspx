<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assembled</title>
    <link rel="icon" type="image/png" href="img/fav.png">
    <link href="Styles/Style.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-2.0.3.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.pitchButton').click(function () {
                $(".signup").css("height", "68px").show().animate({ height: "156px" }, 500, function() {
                    $(".signup").css("height", "initial");
                });
                $(".signupContent").fadeIn(500);
                $("#NameTextbox").focus();
            });

            $('.closeButton').click(function () {
                $(".signup").animate({ height: "68px" }, 600, function () {
                    $(".signup").hide();
                    $(".signup").css("height", "initial");
                });
                $(".signupContent").fadeOut(500);
            });

            $('.signup .button').click(function () {
                /*$(".signup").animate({ height: "68px" }, 600, function () {
                    $(".signup").hide();
                    $(".signup").css("height", "initial");
                });
                $(".signupContent").fadeOut(500);
                $(".pitchButton").html("Thank you for signing up. We will contact you shortly.");
                */
                var subject = "Assembled new sign up";
                var body = "Name: " + EscapeString($("#NameTextbox").val()) + "<br/> Restaurant: " + EscapeString($("#RestaurantTextbox").val()) + "<br/>Email: " + EscapeString($("#EmailTextbox").val());
                SendEmail(subject, body);

                $.ajax({
                    type: "POST",
                    url: "Default.aspx/SaveUser",
                    data: "{name:'" + EscapeString($("#NameTextbox").val()) + "', restaurant:'" + EscapeString($("#RestaurantTextbox").val()) + "', email:'" + EscapeString($("#EmailTextbox").val()) + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        window.location.replace("/Add");
                    }
                });
            });

            $(".contact .button").click(function () {

                $('.contact h2').show();
                var subject = EscapeString($(".contact #Subject").val());
                var body = EscapeString($(".contact #Body").val());
                SendEmail(subject, body);
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
    <header class="mainnav">
         <ul>
            <li><a href="#">HOME</a></li>
            <li><a href="#howitworks">ABOUT</a></li>
            <li><a href="#contact">CONTACT</a></li>
        </ul>
    </header>
    <div class="pitch">
        <div class="logoDiv">
            <img src="img/logo.png" />
        </div>
            
        <div class="tagline">
            <span>As a Restaurant Owner, who do you trust?<br />
                  Reviews for Restaurant Owners, by Restaurant Owners.</span>
        </div>
        <a class="pitchButton">
            I'm Interested
        </a>
        <div class="signup">
            <div class="signupContent">
                <img class="closeButton" src="img/close.png" style="position:absolute; top:5px; right:5px;cursor:pointer;" />
                <div>Your Name: </div><input id="NameTextbox" type="text" /><br />
                <div>Restaurant: </div><input id="RestaurantTextbox" type="text" /><br />
                <div>Email: </div><input id="EmailTextbox" type="text" /><br />
                <a class="button" style="margin:0 35%;">SUBMIT</a>
            </div>
        </div>
    </div>
    <div id="howitworks" class="arrow-up"></div>
    <div class="howitworks">
        <h2><span style="color:#F19F00;"><i>How Assembled Works</i></span>&nbsp;&nbsp;Reviews that will help your restaurant thrive.</h2>
        <div class="step">
            <h2>Verify</h2>
            <div class="horizontal"></div>
            <div>For Restaurant Owners only</div>
        </div>
        <div class="step">
            <h2>Review</h2>
            <div class="horizontal"></div>
            <div>Share your feedback with other owners</div>
        </div>
        <div class="step">
            <h2>Save</h2>
            <div class="horizontal"></div>
            <div>Save time and money by getting real advice from other restaurant owners</div>
        </div>
    </div>
    <div class="quote">
        "Assembled saved us a lot of time and money and was incredibly helpful for getting our restaurant off the ground."<br /><div>-Bob Sheriff</div>
    </div>
    <br />
    <div id="contact" class="contact">
        <h2>Contact Us</h2>
        <div class="horizontal" style="margin: -4px 15% 4px;"></div>
        <input id="Subject" type="text" placeholder="Subject" />
        <textarea id="Body" placeholder="Give us your feedback!" rows="4" ></textarea>
        <br />
        <br />
        <div class="button" style="margin:0 auto;" >SUBMIT</div><h2 style="float:left;display: none;width:100%;text-align:center;"><span style="color:#F19F00;"><i>Thanks for contacting us. Your email has been sent.</i></span></h2>
        <div class="footer">
            <span>Call Us:</span> 512-762-9449 <span>| Email Us:</span> Hello@asmbld.com <span>| Send Us Mail:</span> 1709 Northwood Rd, Austin
        </div>
    </div>
    </form>
</body>
</html>
