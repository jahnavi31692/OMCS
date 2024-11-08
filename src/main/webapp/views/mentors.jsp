<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Featured Mentors</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #e0f7fa, #ffffff);
            padding: 20px;
        }

        .mentor-card {
            border: 1px solid #e0e0e0;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .mentor-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        .mentor-image {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
        }

        .mentor-tag {
            background-color: #e0f2ff;
            color: #007acc;
            font-size: 0.85rem;
            padding: 6px 12px; /* Increased padding for better visual appearance */
            border-radius: 5px;
            margin-right: 10px; /* Increased margin for spacing */
            margin-bottom: 5px;  /* Optional: add some bottom margin for spacing in case of multiple rows */
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center my-4">Featured Mentors</h2>
    <p class="text-center mb-5">Learn from industry leaders who've been there and done that</p>

    <div class="row">
        <div class="col-md-4 mb-4">
            <div class="mentor-card p-4">
                <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=256&q=80" alt="Sarah Chen" class="mentor-image mx-auto d-block">
                <h5 class="text-center mt-3">Sarah Chen</h5>
                <p class="text-center text-muted">Product Leader at Google</p>
                <div class="text-center">
                    <i class="fas fa-star text-warning"></i> 4.9
                    <span class="mx-2">•</span>
                    <i class="fas fa-comment text-muted"></i> 127 reviews
                </div>
                <div class="text-center mt-3">
                    <span class="mentor-tag">Product Management</span>
                    <span class="mentor-tag">Leadership</span>
                </div>
                <button class="btn btn-primary btn-block mt-3">View Profile</button>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="mentor-card p-4">
                <img src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&auto=format&fit=crop&w=256&q=80" alt="Michael Rodriguez" class="mentor-image mx-auto d-block">
                <h5 class="text-center mt-3">Michael Rodriguez</h5>
                <p class="text-center text-muted">Engineering Director at Meta</p>
                <div class="text-center">
                    <i class="fas fa-star text-warning"></i> 4.8
                    <span class="mx-2">•</span>
                    <i class="fas fa-comment text-muted"></i> 93 reviews
                </div>
                <div class="text-center mt-3">
                    <span class="mentor-tag">Team Building</span>
                    <span class="mentor-tag">Career Growth</span>
                </div>
                <button class="btn btn-primary btn-block mt-3">View Profile</button>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="mentor-card p-4">
                <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&auto=format&fit=crop&w=256&q=80" alt="Priya Sharma" class="mentor-image mx-auto d-block">
                <h5 class="text-center mt-3">Priya Sharma</h5>
                <p class="text-center text-muted">Startup Advisor & Investor</p>
                <div class="text-center">
                    <i class="fas fa-star text-warning"></i> 4.9
                    <span class="mx-2">•</span>
                    <i class="fas fa-comment text-muted"></i> 156 reviews
                </div>
                <div class="text-center mt-3">
                    <span class="mentor-tag">Entrepreneurship</span>
                    <span class="mentor-tag">Fundraising</span>
                </div>
                <button class="btn btn-primary btn-block mt-3">View Profile</button>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
