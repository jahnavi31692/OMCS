<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Available Courses</title>
    <link rel="stylesheet" href="<c:url value='/static/courses.css'/>">
    <link rel="icon" href="<c:url value='/static/images/favicon.ico'/>">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        /* Add your existing CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px; /* Space between course cards */
        }

        .course-card {
            background-color: #4CAF50; /* Green background */
            color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 300px; /* Fixed width for cards */
            overflow: hidden;
            text-align: center;
            transition: transform 0.3s;
        }

        .course-card:hover {
            transform: scale(1.05); /* Scale effect on hover */
        }

        .course-content {
            padding: 20px;
        }

        .course-title {
            margin: 10px 0 5px;
            font-size: 1.5em;
        }

        .course-description {
            color: #ddd; /* Light color for description */
            font-size: 0.9em;
            margin: 10px 0 15px; /* Added margin below description */
        }

        .enroll-button {
            background-color: #007bff; /* Blue background */
            color: #ffffff; /* White text */
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 1em;
            transition: background-color 0.3s;
        }

        .enroll-button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .filter-container {
            text-align: center;
            margin-bottom: 20px;
        }

        .filter-button {
            background-color: #007bff; /* Blue background */
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            margin: 0 5px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s;
        }

        .filter-button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .search-input {
            padding: 10px;
            width: 80%;
            margin: 10px auto;
            display: block;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
    <script>
        function searchCourses() {
            const input = document.getElementById('search-input').value.toLowerCase();
            const cards = document.querySelectorAll('.course-card');
            cards.forEach(card => {
                const title = card.querySelector('.course-title').innerText.toLowerCase();
                card.style.display = title.includes(input) ? 'block' : 'none';
            });
        }

        function filterCourses(level) {
            const cards = document.querySelectorAll('.course-card');
            cards.forEach(card => {
                if (level === 'all') {
                    card.style.display = 'block'; // Show all courses
                } else {
                    const cardLevel = card.getAttribute('data-level');
                    card.style.display = cardLevel === level ? 'block' : 'none'; // Show matching level
                }
            });
        }
    </script>
</head>
<body>
    <h1>Our Courses</h1>

<div class="search-container">
    <input type="text" id="search-input" class="search-input" placeholder="Search for courses..." onkeyup="searchCourses()">
</div>

<div class="filter-container">
    <button class="filter-button" onclick="filterCourses('all')">All</button>
    <button class="filter-button" onclick="filterCourses('beginner')">Beginner</button>
    <button class="filter-button" onclick="filterCourses('advanced')">Advanced</button>
</div>

<div class="container">
    <div class="course-card" data-level="beginner">
        <div class="course-content">
            <h2 class="course-title">Career Development</h2>
            <p class="course-description">Enhance your professional skills and explore career paths with our expert mentors.</p>
            <a href="<c:url value='/enroll/career-development'/>" class="enroll-button">Enroll Now</a>
        </div>
    </div>

    <div class="course-card" data-level="beginner">
        <div class="course-content">
            <h2 class="course-title">Life Coaching</h2>
            <p class="course-description">Gain insights into personal growth and life management through guided sessions.</p>
            <a href="<c:url value='/enroll/life-coaching'/>" class="enroll-button">Enroll Now</a>
        </div>
    </div>

    <div class="course-card" data-level="advanced">
        <div class="course-content">
            <h2 class="course-title">Business Strategy</h2>
            <p class="course-description">Learn to craft effective business strategies with mentorship from industry leaders.</p>
            <a href="<c:url value='/enroll/business-strategy'/>" class="enroll-button">Enroll Now</a>
        </div>
    </div>

    <div class="course-card" data-level="advanced">
        <div class="course-content">
            <h2 class="course-title">Public Speaking</h2>
            <p class="course-description">Overcome your fears and master the art of public speaking with professional coaching.</p>
            <a href="<c:url value='/enroll/public-speaking'/>" class="enroll-button">Enroll Now</a>
        </div>
    </div>

    <div class="course-card" data-level="beginner">
        <div class="course-content">
            <h2 class="course-title">Time Management</h2>
            <p class="course-description">Discover effective techniques to manage your time and boost productivity.</p>
            <a href="<c:url value='/enroll/time-management'/>" class="enroll-button">Enroll Now</a>
        </div>
    </div>

    <div class="course-card" data-level="beginner">
        <div class="course-content">
            <h2 class="course-title">Java Basics</h2>
            <p class="course-description">Learn the fundamentals of Java programming and object-oriented concepts.</p>
            <a href="<c:url value='/enroll/java-basics'/>" class="enroll-button">Enroll Now</a>
        </div>
    </div>

    <div class="course-card" data-level="beginner">
        <div class="course-content">
            <h2 class="course-title">Python for Beginners</h2>
            <p class="course-description">Start your journey in programming with Python and learn basic coding skills.</p>
            <a href="<c:url value='/enroll/python-beginners'/>" class="enroll-button">Enroll Now</a>
        </div>
    </div>

    <div class="course-card" data-level="advanced">
        <div class="course-content">
            <h2 class="course-title">Advanced Java Programming</h2>
            <p class="course-description">Deep dive into advanced Java concepts and design patterns.</p>
            <a href="<c:url value='/enroll/advanced-java'/>" class="enroll-button">Enroll Now</a>
        </div>
    </div>

    <div class="course-card" data-level="advanced">
        <div class="course-content">
            <h2 class="course-title">Advanced Python Techniques</h2>
            <p class="course-description">Explore advanced Python features and libraries for data science and web development.</p>
            <a href="<c:url value='/enroll/advanced-python'/>" class="enroll-button">Enroll Now</a>
        </div>
    </div>
</div>

        
    </div>
</body>
</html>
