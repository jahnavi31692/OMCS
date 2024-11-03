<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList, java.util.List" %>
<%@ page import="java.util.Arrays" %>

<%
    class Mentor {
        String name;
        String role;
        String image;
        double rating;
        int reviews;
        List<String> expertise;

        Mentor(String name, String role, String image, double rating, int reviews, List<String> expertise) {
            this.name = name;
            this.role = role;
            this.image = image;
            this.rating = rating;
            this.reviews = reviews;
            this.expertise = expertise;
        }
    }

    List<Mentor> mentors = new ArrayList<>();
    mentors.add(new Mentor("Sarah Chen", "Product Leader at Google",
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=256&q=80",
            4.9, 127, Arrays.asList("Product Management", "Leadership", "Tech Strategy")));
    mentors.add(new Mentor("Michael Rodriguez", "Engineering Director at Meta",
            "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&auto=format&fit=crop&w=256&q=80",
            4.8, 93, Arrays.asList("Software Architecture", "Team Building", "Career Growth")));
    mentors.add(new Mentor("Priya Sharma", "Startup Advisor & Investor",
            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&auto=format&fit=crop&w=256&q=80",
            4.9, 156, Arrays.asList("Entrepreneurship", "Fundraising", "Business Strategy")));
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Featured Mentors</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Add styling similar to the React code */
        /* Add your custom styling here */
        .mentor-card { /* style each card similarly */}
    </style>
</head>
<body>

<section class="py-20 bg-gray-50" id="mentors">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center">
            <h2 class="text-3xl font-extrabold text-gray-900 sm:text-4xl">
                Featured Mentors
            </h2>
            <p class="mt-4 max-w-2xl mx-auto text-xl text-gray-500">
                Learn from industry leaders who've been there and done that
            </p>
        </div>

        <div class="mt-16 grid gap-8 md:grid-cols-2 lg:grid-cols-3">
            <% for (Mentor mentor : mentors) { %>
                <div class="bg-white rounded-xl shadow-sm overflow-hidden hover:shadow-lg transition mentor-card">
                    <div class="p-6">
                        <div class="flex items-center">
                            <img class="h-16 w-16 rounded-full object-cover" src="<%= mentor.image %>" alt="<%= mentor.name %>"/>
                            <div class="ml-4">
                                <h3 class="text-lg font-semibold text-gray-900"><%= mentor.name %></h3>
                                <p class="text-sm text-gray-500"><%= mentor.role %></p>
                            </div>
                        </div>

                        <div class="mt-4 flex items-center">
                            <i class="fas fa-star h-5 w-5 text-yellow-400"></i>
                            <span class="ml-1 text-sm font-medium text-gray-900"><%= mentor.rating %></span>
                            <span class="mx-2 text-gray-300">•</span>
                            <i class="fas fa-comment h-5 w-5 text-gray-400"></i>
                            <span class="ml-1 text-sm text-gray-500"><%= mentor.reviews %> reviews</span>
                        </div>

                        <div class="mt-4">
                            <div class="flex flex-wrap gap-2">
                                <% for (String skill : mentor.expertise) { %>
                                    <span class="inline-flex items-center px-3 py-0.5 rounded-full text-sm font-medium bg-indigo-100 text-indigo-800">
                                        <%= skill %>
                                    </span>
                                <% } %>
                            </div>
                        </div>

                        <button class="mt-6 w-full bg-white text-indigo-600 font-semibold py-2 px-4 border border-indigo-600 rounded-lg hover:bg-indigo-50 transition">
                            View Profile
                        </button>
                    </div>
                </div>
            <% } %>
        </div>
    </div>
</section>

</body>
</html>
