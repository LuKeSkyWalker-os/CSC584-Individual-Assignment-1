# CSC584 – Individual Assignment 1

## Personal Profile Web Application

### Project Description

This project is a Personal Profile Web Application developed for CSC584 Individual Assignment 1. The application allows users to enter their personal information through an HTML form and displays the submitted information on a JSP page.

The application demonstrates the integration of HTML, Java Servlet, JSP, and CSS in a Java web application.

## Technologies Used

- HTML5 – Creates the personal profile form.
- CSS3 – Provides styling and responsive design.
- Java Servlet – Processes form submissions using the HTTP POST method.
- JSP (JavaServer Pages) – Displays submitted personal information.
- Apache NetBeans – Integrated Development Environment (IDE).
- GlassFish Server – Application server used to run the project.
- Apache Ant – Builds the Java web application.

## Application Features

1. Personal profile form with six input fields.
2. Required field validation.
3. Server-side form processing using Java Servlet.
4. Dynamic profile display using JSP.
5. Responsive Blue & White interface.
6. Navigation back to the profile form.

## Personal Information Fields

- Full Name
- Student ID
- Programme
- Email Address
- Hobbies
- Short Self-Introduction

## Application Workflow

1. The user opens `index.html`.
2. The user enters their personal information.
3. The user clicks the **Submit Profile** button.
4. The HTML form sends the information to `ProfileServlet` using HTTP POST.
5. The Servlet retrieves and validates the submitted information.
6. The Servlet forwards the information to `profile.jsp`.
7. The JSP page displays the submitted personal profile.

**Data Flow:**

`HTML Form → Java Servlet → JSP Profile Display`

## How to Run the Application

1. Install Apache NetBeans with Java web application support.
2. Install and configure a compatible Java JDK.
3. Configure a compatible GlassFish Server in NetBeans.
4. Open Apache NetBeans.
5. Select **File → Open Project**.
6. Select the `CSC584-Individual-Assignment-1` project folder.
7. Confirm that GlassFish is selected as the application server.
8. Right-click the project and select **Run**.
9. The application will open in a web browser.
10. Fill in the form and click **Submit Profile** to view the result.

## Project Files

| File | Description |
|---|---|
| `index.html` | Personal profile input form |
| `ProfileServlet.java` | Handles HTTP POST requests and form processing |
| `profile.jsp` | Displays submitted personal information |
| `style.css` | Styles the form and profile display |
| `web.xml` | Defines the Servlet configuration and URL mapping |

## Application Screenshots

### 1. Personal Profile Form

[Personal Profile Form](screenshots/profile-form.png)

### 2. Personal Profile Result

[Personal Profile Result](screenshots/profile-result.png)

## Conclusion

The Personal Profile Web Application demonstrates how HTML forms, Java Servlets, and JSP can work together to process and display user information. The application successfully implements server-side form handling and a responsive user interface using CSS.

**Course:** CSC584  
**Assessment:** Individual Assignment 1
