
package com.csc584;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfileServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // Set character encoding
        request.setCharacterEncoding("UTF-8");

        // Step 1: Retrieve data from HTML form
        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String programme = request.getParameter("programme");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String introduction = request.getParameter("introduction");

        // Step 2: Validate required fields
        if (isBlank(name) ||
            isBlank(studentId) ||
            isBlank(programme) ||
            isBlank(email) ||
            isBlank(hobbies) ||
            isBlank(introduction)) {

            response.sendError(
                HttpServletResponse.SC_BAD_REQUEST,
                "Please complete all required fields."
            );
            return;
        }

        // Step 3: Store information as request attributes
        request.setAttribute("name", name.trim());
        request.setAttribute("studentId", studentId.trim());
        request.setAttribute("programme", programme.trim());
        request.setAttribute("email", email.trim());
        request.setAttribute("hobbies", hobbies.trim());
        request.setAttribute(
            "introduction", introduction.trim()
        );

        // Step 4: Forward information to JSP
        request.getRequestDispatcher("/profile.jsp")
               .forward(request, response);
    }

    // Helper method to check empty input
    private boolean isBlank(String value) {
        return value == null || value.trim().isEmpty();
    }
}
