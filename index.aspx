<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SuggestIndia.index" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
    <title>Home</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="css/stylesheet.css" />
</head>
<body>
    <form runat="server">
        <nav>
            <div class="hamburger">
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
            </div>
            <ul>
				<li>
                    <div class="logo">
					    <a href="Main.aspx"><img src="images/logo.jpg"/>&nbsp;&nbsp;&nbsp; <span>Suggest </span><span>India</span></a>
                    </div>
				</li>  
                <li><a href="Main.aspx">Home</a></li>
                <li><a href="Problem.aspx">Problems</a></li>
                <li><a href="suggestion.aspx">Suggestion</a></li>
                <li><a href="about.aspx">About us</a></li>
                <li><a href="SignIn.aspx"style="font-size:22px;">SignIn/SignUp</a></li>
			</ul>
        </nav>
        <br />
        <div class="colllor">
        <div class="floatingArea">
            <header id="showcase">
                <h1>India shaped my mind, anchored my identity, influenced my beliefs, and made me who I am. India matters to me and I would like to matter to India.</h1>
            </header>
            <div id="content" class="container" style="text-align:justify;">
                India’s environmental problems are due to the negative effects of the process of development that is poverty and underdevelopment. Poorly planned development projects cause damage to the environment, associated with plans for rapid economic growth and development. The second group is related with the impact on health, land, soils, water, forests, wildlife as a result of poverty.
                The greatest challenge is the rapid growth of population. Population, poverty and environment are inter-related. The nexus between poverty and environmental degradation is a major issue as vast majority of people depends on the natural resources of country for their basic needs. About 40 per cent are below poverty line.
                The environmental degration has adversely affected the poor who depend upon natural resources. Henceforth, both poverty and environmental degradation are two facets of same challenge and it is widely recognised that population growth is a function of poverty.
                The mountainous terrains of the Himalayas and North East States are rapidly losing their forests and trees, which in turn enhances the removal of top soils and results in landslides and floods.
                India has a rich flora. The Botanical Survey of India has reported nearly 49000 species of plants after surveying about 70 per cent of India’s geographical area. But due to deforestation about 1336 plant species are considered as endangered. The main causes for loss of flora and fauna are pollution, over exploitation, habitat destruction & toxic substances in water, floods, cyclones etc.
            </div>
        </div>
        <video autoplay controls><source src="video/video.mp4" type="video/mp4"/>Your browser does not support the video tag.</video>   
        <div>
            <h1>Address, what matters to you.</h1>
            <div class="slideshow-container">

                <div class="mySlides fade">
                    <div class="numbertext">1 / 5</div>
                        <img src="Pics/abundance-achievement-bank-banknotes-534229.jpg" style="width:100%; height:800px;" />
                    <div class="text">Corruption</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">2 / 5</div>
                    <img src="Pics/activity-board-game-connection-desk-613508.jpg" style="width:100%;  height:800px;"/>
                    <div class="text">Law and justice</div>
                </div>

                 <div class="mySlides fade">
                    <div class="numbertext">3 / 5</div>
                        <img src="Pics/agriculture-backyard-blur-close-up-296230.jpg" style="width:100%;  height:800px;"/>
                    <div class="text">Environmental</div>
                </div>
                <div class="mySlides fade">
                    <div class="numbertext">4 / 5</div>
                        <img src="Pics/bad-roads.jpg" style="width:100%; height:800px;"/>
                    <div class="text">Projects</div>
                </div>
                <div class="mySlides fade">
                    <div class="numbertext">4 / 5</div>
                        <img src="Pics/black-and-white-blank-challenge-connect-262488.jpg" style="width:100%; height:800px;"/>
                    <div class="text">Loop-holes</div>
                </div>
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div><br/>
            <div style="text-align:center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
                <span class="dot" onclick="currentSlide(4)"></span>
                <span class="dot" onclick="currentSlide(5)"></span>
            </div>


        </div>
            
            </div>
			<div class="footer1"style="color:aliceblue; text-align:center;">
				Suggest India website Suggest@india.com / R 2023 Patreon. Proudly created by <a href="#">SAHILDEEP SHARMA</a>
				<div >
                    
					<a href="https://www.fb.com"><img  src="img/facebook.svg"/></a>
					<a href="https://www.instagram.com"><img    src="img/instagram.svg"/></a>
					<a href="https://www.blogger.com"><img    src="img/blogger.svg"/></a>
					<a href="https://mail.google.com"><img    src="img/gmail.svg"/></a>
					<a href="https://www.github.com"><img    src="img/github.svg"/></a>
					<a href="https://www.twitter.com"><img    src="img/twitter.svg"/></a>
					<a href="https://www.youtube.com"><img    src="img/youtube.svg"/></a>
				</div>
			</div>
            
        <script>
            var slideIndex = 0;
            showSlides();

            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) { slideIndex = 1 }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                setTimeout(showSlides, 2000); // Change image every 2 seconds
            }
        </script>
    </form>
</body>
</html>