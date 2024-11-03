<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <link rel="stylesheet" href="<c:url value='/static/about.css'/>">
    <link rel="icon" href="<c:url value='/static/images/favicon.ico'/>">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color:#EDFFEC; /* Light grey background */
        margin: 0;
        padding: 20px;
        scroll-behavior: smooth; /* Smooth scrolling */
    }

    .container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        max-width: 1200px;
        margin: 0 auto;
    }

    .card {
        background-color: #FBFBFB; /* White card background */
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); /* Softer shadow */
        width: 320px; 
        height: 450px; 
        overflow: hidden;
        text-align: center;
        transition: transform 0.3s, box-shadow 0.3s;
        cursor: pointer;
    }

    .card:hover {
        transform: translateY(-8px); /* Subtle lift effect */
        box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15); /* Softer hover shadow */
    }

    .content {
        padding: 20px;
    }

    .img img {
        width: 150px; 
        height: 150px; 
        margin: 0 auto;
        transition: transform 0.3s;
        opacity: 0; 
        animation: fadeIn 0.5s forwards; /* Fade-in animation */
        border: 5px solid #e9ecef; /* Adding border for better aesthetics */
    }

    @keyframes fadeIn {
        to {
            opacity: 1;
        }
    }

    .card:hover .img img {
        transform: scale(1.1);
    }

    .cardContent h3 {
        margin: 10px 0 5px;
        color: grey; /* Darker grey for better readability */
        font-size: 1.2em;
    }

    .cardContent span {
        font-size: 0.9em;
        color: black; /* Medium grey for subtitle */
    }

    .skills {
        margin: 10px 0;
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        gap: 5px;
    }

    .skill-tag {
        background-color: pink;
        color: white;
        padding: 5px 10px;
        border-radius: 20px;
        font-size: 0.8em;
    }

    .sci {
        list-style: none;
        padding: 0;
        display: flex;
        justify-content: center;
        margin: 15px 0;
        gap: 15px;
    }

    .sci a {
        color: #007bff; 
        text-decoration: none;
        font-size: 1.5em;
        transition: color 0.3s;
    }

    .sci a:hover {
        color: #0056b3; /* Darker blue for hover effect */
    }

    h1 {
        text-align: center;
        color: #343a40; /* Darker grey */
        font-size: 2em;
        margin-bottom: 20px;
    }

    .contact-button {
        display: block;
        margin: 20px auto;
        padding: 12px 24px; /* Increased padding for a better look */
        background: linear-gradient(90deg, #28a745, #218838); /* Gradient background */
        color: white;
        border: none;
        border-radius: 30px; /* Rounded corners */
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        font-size: 1.1em; /* Slightly larger font size */
        transition: background 0.3s, transform 0.3s; /* Smooth transition */
    }

    .contact-button:hover {
        transform: scale(1.05); /* Slightly enlarge on hover */
        background: linear-gradient(90deg, #218838, #28a745); /* Reverse gradient on hover */
    }

    .close {
        color: light blue;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }

    @media (max-width: 768px) {
        .card {
            width: 90%; /* Adjust card width for smaller screens */
        }
    }
</style>


</head>
<body>
    <h1>Meet Our Team</h1>
    <div class="container">
        <div class="card" onclick="openModal('jahnaviModal')">
            <div class="content">
                <div class="img">
                   <img src="/images/janu.jpg" alt="Jahnavi">
                </div>
                <div class="cardContent">
                    <h3>Jahnavi<br><span>Backend Developer</span></h3>
                    <div class="skills">
                        <span class="skill-tag">Java</span>
                        <span class="skill-tag">Spring</span>
                        <span class="skill-tag">MySQL</span>
                    </div>
                    <p>Passionate about building scalable backend systems.</p>
                </div>
            </div>
            <ul class="sci">
                <li>
                    <a href="https://www.linkedin.com/in/jahnavi-bolnedi-35261128a/">
                        <i class="fa fa-linkedin" aria-hidden="true"></i>
                    </a>
                </li>
                <li>
                    <a href="https://www.instagram.com/jahnavi_bolnedi___?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==">
                        <i class="fa fa-instagram" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
        </div>

        <div class="card" onclick="openModal('venishaModal')">
            <div class="content">
                <div class="img">
                    <img src="/images/veni.jpg" alt="Venisha">
                </div>
                <div class="cardContent">
                    <h3>Venisha<br><span>Front End Developer</span></h3>
                    <div class="skills">
                        <span class="skill-tag">React</span>
                        <span class="skill-tag">CSS</span>
                        <span class="skill-tag">JavaScript</span>
                    </div>
                    <p>Creative front-end developer with a passion for design.</p>
                </div>
            </div>
            <ul class="sci">
                <li>
                    <a href="https://www.linkedin.com/in/venisha-nadella-8b202b289/">
                        <i class="fa fa-linkedin" aria-hidden="true"></i>
                    </a>
                </li>
                <li>
                    <a href="https://www.instagram.com/venisha_nadella?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==">
                        <i class="fa fa-instagram" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
        </div>

        <div class="card" onclick="openModal('meghanaModal')">
            <div class="content">
                <div class="img">
                    <img src="/images/meghz.jpg" alt="Meghana">
                </div>
                <div class="cardContent">
                    <h3>Meghana<br><span>Front End Developer</span></h3>
                    <div class="skills">
                        <span class="skill-tag">HTML</span>
                        <span class="skill-tag">Bootstrap</span>
                        <span class="skill-tag">Sass</span>
                    </div>
                    <p>Enthusiastic about creating user-friendly interfaces.</p>
                </div>
            </div>
            <ul class="sci">
                <li>
                    <a href="https://www.linkedin.com/in/meghanakaturi/">
                        <i class="fa fa-linkedin" aria-hidden="true"></i>
                    </a>
                </li>
                <li>
                    <a href="https://www.instagram.com/_meghzz.15?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==">
                        <i class="fa fa-instagram" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <button class="contact-button" onclick="openContactModal()">Contact Us</button>
</body>
</html>
