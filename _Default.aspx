<%@ Page Language="C#" AutoEventWireup="true" CodeFile="_Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assembled</title>
    <link href="Styles/_Style.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-2.0.3.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <header class="mainnav">
        <div class="leftnav">
            <div class="logonav">
                Assembled
            </div>
        </div>
        <div class="rightnav">
            <ul>
                <li style="padding: 28px 40px;">
                    <span class="searchButton"></span>
                </li>
                <li>PRODUCTS
                    <ul>
                        <li>POS</li>
                        <li>SCHEDULING</li>
                        <li>ACCOUNTING</li>
                        <li>OPERATIONS</li>
                    </ul>
                </li>
                <li>HOW IT WORKS</li>
                <li>MY ACCOUNT</li>
            </ul>
        </div>
    </header>
    <div class="body">
        <div class="pitch">
            <div class="tagline">
                Get Product Reviews From<br /> Other Restaurant Owners
            </div>
            <a class="pitchButton">
                EXPLORE OUR REVIEWS
            </a>
        </div>
        <div class="content">
            <h2>See What Owners Are Saying</h2>
            <div class="reviews">
                <div class="horizontal"></div>
                <div class="review">
                    <div class="reviewLogo">
                        <img width="120px" src="https://www.hotschedules.com/wp-content/uploads/2013/04/HS_Logo_Banner.png" />
                    </div>
                    <div class="reviewTitle">
                        <p style="color: #ef672f;font-size: 15px;margin:9px 0;cursor:pointer;">Hot Schedules</p>
                        <img src="img/stars.png" />
                        <p style="margin:6px 0;">1,242 Reviews</p>
                    </div>
                    <div class="reviewDesc" >
                        <div style="width:25%;">
                            <p><b>Pros</b></p>
                            <p>Great Customer service, easy product to use.</p>
                        </div>
                        <div style="width:25%;">
                            <p><b>Cons</b></p>
                            <p>Felt it was too expensive for my size restaurant.</p>
                        </div>
                        <div>
                            <p>Overall, despite the expense, I would recommend Hot Schedules.</p>
                            <p><i>John Smith, owner Hooters, West Palm Beach</i></p>
                        </div>
                    </div>
                </div>
                <div class="horizontal"></div>
                <div class="review">
                    <div class="reviewLogo">
                        <img width="120px" src="http://www.dinerware.com/sites/all/themes/dinerware/images/logo.png" />
                    </div>
                    <div class="reviewTitle">
                        <p style="color: #ef672f;font-size: 15px;margin:9px 0;cursor:pointer;">Diner Ware</p>
                        <img src="img/stars.png" />
                        <p style="margin:6px 0;">782 Reviews</p>
                    </div>
                    <div class="reviewDesc" >
                        <div style="width:25%;">
                            <p><b>Pros</b></p>
                            <p>Inexpensive</p>
                        </div>
                        <div style="width:25%;">
                            <p><b>Cons</b></p>
                            <p>Never worked, worst POS System I've ever used</p>
                        </div>
                        <div>
                            <p>Do not buy Diner Ware, it never worked and we couldn't get anyone on the phone to fix it.</p>
                            <p><i>Some old guy, Whataburger, Corpus Christi</i></p>
                        </div>
                    </div>
                </div>
                <div class="horizontal"></div>                
                <div class="review">
                    <div class="reviewLogo">
                        <img width="120px" src="http://www.saimgs.com/imglib/products/logos-small/logo_3504_2_106x85.jpg" />
                    </div>
                    <div class="reviewTitle">
                        <p style="color: #ef672f;font-size: 15px;margin:9px 0;cursor:pointer;">Touch Bistro</p>
                        <img src="img/stars.png" />
                        <p style="margin:6px 0;">456 Reviews</p>
                    </div>
                    <div class="reviewDesc" >
                        <div style="width:25%;">
                            <p><b>Pros</b></p>
                            <p>All done through iPad so there is no equipment to buy.</p>
                        </div>
                        <div style="width:25%;">
                            <p><b>Cons</b></p>
                            <p>Tricky to set up.</p>
                        </div>
                        <div>
                            <p>Touch Bistro offers an easy to use an iPad-based Point-of-Sale system that enables staff to bring the register to each table.</p>
                            <p><i>Franklin, Franklins, Austin</i></p>
                        </div>
                    </div>
                </div>
                <div class="horizontal"></div>
                <div style="clear:both;height:60px"></div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
