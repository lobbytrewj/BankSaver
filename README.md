# Bank Saver

A full-stack application designed to help users take control of their finances. This project features a Spring Boot backend and a responsive React frontend, currently being scaled with **AWS Cloud Infrastructure**.

## Overview
This application allows users to track income and expenses, visualize financial trends through interactive charts, and manage custom categories. It includes automated email summaries and report generation (Excel).

### Core Features
- **Transaction Management**: Add, view, and filter income and expenses.
- **Data Visualization**: Real-time financial trends using interactive charts.
- **Reporting**: Export financial data to Excel and receive automated daily email summaries.
- **User Authentication**: Secure JWT-based login and registration with email activation.
- **Cloud Integration**: Image storage and scalable infrastructure migration to AWS.

## Tech Stack
| **Frontend** | React.js, Tailwind CSS, Vite, Lucid React, Axios |
| **Backend** | Java, Spring Boot, Spring Security, JPA/Hibernate |
| **Database** | MySQL (Local), PostgreSQL (Production) |
| **Cloud/Infrastructure** | **AWS (EC2, RDS, S3)**, Docker, Cloudinary |

## ☁️ AWS Implementation
To enhance scalability and reliability, the project is being deployed using AWS:
- **AWS EC2**: Hosting the Spring Boot backend via Docker containers.
- **AWS RDS**: Managing the production PostgreSQL database.
- **AWS S3**: Scalable storage for profile images and generated financial reports.
- **AWS SES**: (Planned) For reliable automated email notifications.

## Project Structure
- **/backend**: Spring Boot source code, including security configurations and job schedulers.
- **/frontend**: React source code with Tailwind CSS and data visualization components.
- **Dockerfile**: Configuration for containerizing the application for AWS deployment.

## Setup & Installation

### Backend
1. Navigate to the `backend` directory.
2. Configure your `application.properties` with your database and AWS credentials.
3. Build and run:
   ```bash
   mvn clean install
   mvn spring-boot:run
