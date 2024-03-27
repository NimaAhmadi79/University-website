
# University Website Project

This project comprises a website for a sample university, developed using servlets, Java, XML, and AJAX/JavaScript, with HTML and CSS for design.

## Overview
The university website project is designed to provide various functionalities including:
- Comment section for visitors to leave feedback.
- Contact form for users to reach out to the university administration.
- Login system for administrators.
- News section for posting updates and announcements.

## Features
- **Comment Section**: Allows visitors to post comments which are stored in a MySQL database.
- **Contact Form**: Provides a form for users to submit inquiries or messages to the university.
- **Login System**: Enables administrators to log in securely to access administrative functionalities.
- **News Section**: Facilitates posting news updates and announcements, which are stored in a database.

## Technologies Used
- **Servlets**: Used for server-side handling of requests and responses.
- **Java**: Core programming language used for backend development.
- **XML**: Possibly used for configuration or data storage.
- **AJAX/JavaScript**: Used for asynchronous communication with the server and dynamic content updating.
- **HTML/CSS**: Used for front-end design and structure.
- **MySQL**: Database management system used for storing data such as comments, contacts, and news.

## Code Structure
The project is organized into multiple packages and files, including classes for database operations (`Comment`, `Contact`, `CreatJsonComment`, `CreatJsonContact`, `Login`, `News`), servlets for request handling (`CommentAjaxCtl`, `GuideCtl`, `LoginCtl`), and client-side JavaScript (`comment()` function).

## Setup and Deployment
1. **Database Setup**: Ensure MySQL is installed and configure the database connection parameters in the Java classes.
2. **Web Container**: Deploy the project on a web container such as Apache Tomcat.
3. **Access**: Access the website through a web browser by navigating to the appropriate URL.

## Contributors
- Nima Ahmadi

