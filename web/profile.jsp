
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    // Escape HTML characters for safe display
    public String escapeHtml(Object value) {
        if (value == null) {
            return "";
        }

        return value.toString()
            .replace("&", "&amp;")
            .replace("<", "&lt;")
            .replace(">", "&gt;")
            .replace("\"", "&quot;")
            .replace("'", "&#39;");
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>My Personal Profile | CSC584</title>

    <!-- External CSS -->
    <link rel="stylesheet"
          href="<%= request.getContextPath() %>/style.css">
</head>

<body>

    <div class="container">

        <!-- PAGE HEADER -->
        <div class="page-header">

            <h1>My Personal Profile</h1>

        </div>

        <!-- PROFILE CARD -->
        <div class="card">

            <!-- PROFILE HEADER -->
            <div class="profile-header">

                <div class="profile-avatar">
                    👤
                </div>

                <h2>
                    <%= escapeHtml(
                        request.getAttribute("name")
                    ) %>
                </h2>

                <p>
                    <%= escapeHtml(
                        request.getAttribute("programme")
                    ) %>
                </p>

            </div>

            <!-- PERSONAL INFORMATION -->
            <h3 class="profile-section-title">
                Personal Information
            </h3>

            <!-- FULL NAME -->
            <div class="profile-detail">

                <strong>Full Name</strong>

                <span>
                    <%= escapeHtml(
                        request.getAttribute("name")
                    ) %>
                </span>

            </div>

            <!-- STUDENT ID -->
            <div class="profile-detail">

                <strong>Student ID</strong>

                <span>
                    <%= escapeHtml(
                        request.getAttribute("studentId")
                    ) %>
                </span>

            </div>

            <!-- PROGRAMME -->
            <div class="profile-detail">

                <strong>Programme</strong>

                <span>
                    <%= escapeHtml(
                        request.getAttribute("programme")
                    ) %>
                </span>

            </div>

            <!-- EMAIL -->
            <div class="profile-detail">

                <strong>Email Address</strong>

                <span>
                    <%= escapeHtml(
                        request.getAttribute("email")
                    ) %>
                </span>

            </div>

            <!-- ABOUT ME SECTION -->
            <h3 class="profile-section-title"
                style="margin-top: 30px;">

                About Me

            </h3>

            <!-- HOBBIES -->
            <div class="about-box">

                <h3>🎯 My Hobbies</h3>

                <p>
                    <%= escapeHtml(
                        request.getAttribute("hobbies")
                    ) %>
                </p>

            </div>

            <!-- SELF INTRODUCTION -->
            <div class="about-box">

                <h3>💬 Self-Introduction</h3>

                <p>
                    <%= escapeHtml(
                        request.getAttribute("introduction")
                    ) %>
                </p>

            </div>

            <!-- BACK BUTTON -->
            <a href="<%= request.getContextPath() %>/index.html"
               class="back-btn">

                ← Back to Form

            </a>

        </div>

        <!-- FOOTER -->
        <footer>

            CSC584 - Individual Assignment 1

            <p>Personal Profile Web Application</p>

        </footer>

    </div>

</body>
</html>
