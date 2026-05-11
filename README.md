# Education CRM Project

A full-stack Education CRM (Customer Relationship Management) web application developed using Spring Boot and MySQL. This project helps educational institutes efficiently manage student data, course sales, customer inquiries, lead tracking, employee management, and customer support services.

---

# 📌 About CRM

## CRM (Customer Relationship Management)

CRM helps organizations manage customer interactions, improve customer services, and streamline business operations.

### Uses of CRM
- Efficient Customer Data Management
- Providing Customer Services and Support
- Managing Leads and Follow-Ups
- Product Management & Sales Tracking
- Customer Engagement & Analytics

---

# 🎓 Education CRM Project

## 📖 Introduction

This project streamlines customer relationship management by handling student data, course sales, support services, and lead tracking, enhancing overall efficiency and customer satisfaction in educational institutes.

---

# 🚀 Features

- User Authentication (Login/Register)
- Role-Based Access Control
- Employee Management
- Customer Management
- Course Management
- Lead & Follow-Up Tracking
- Sales Monitoring & Analytics
- Customer Inquiry Handling
- Feedback Management
- Responsive User Interface
- REST APIs
- MySQL Database Integration

---

# 👥 Modules

## 1️⃣ Admin Module
- Admin Login
- Profile Management
- Employee Management
- Course Management
- Sales Monitoring & Analytics
- Customer Management
- Feedback Analysis

---

## 2️⃣ Employee Module
- Employee Login
- Profile Management
- Handle Customer Inquiries
- Lead Management
- Follow-Up Tracking

---

## 3️⃣ Customer (Student/User) Module
- User Registration & Login
- View Available Courses
- Purchase Courses
- Submit Feedback

---

# 🛠️ Technologies Used

## Frontend
- HTML
- CSS
- JavaScript
- jQuery
- Bootstrap
- AJAX

## Backend
- Java 17
- Spring Boot
- Spring MVC

## Database
- MySQL

## Database Technology
- Spring Data JPA
- Hibernate

## Tools & Deployment
- Git & GitHub
- Render

---

# 📂 Project Structure

```text
EducationCrmProject
│
├── src/main/java
│   ├── in.sp.main
│   │
│   ├── api
│   │   └── REST API Controllers
│   │
│   ├── controllers
│   │   └── MVC Controllers
│   │
│   ├── dto
│   │   └── Data Transfer Objects
│   │
│   ├── entities
│   │   └── JPA Entity Classes
│   │
│   ├── repositories
│   │   └── Database Repository Interfaces
│   │
│   ├── services
│   │   └── Business Logic Layer
│
├── src/main/resources
│   ├── static
│   │   └── CSS, JavaScript, Images
│   │
│   ├── templates
│   │   └── Thymeleaf HTML Templates
│   │
│   └── application.properties
│       └── Application Configuration
│
├── src/test/java
│   └── Unit & Integration Tests
│
├── target
│   └── Compiled Build Files
│
├── pom.xml
│   └── Maven Dependencies & Build Configuration
│
├── mvnw
├── mvnw.cmd
│
└── README.md
```

---

# 🗄️ Database Tables

## 1️⃣ register
| Column Name |
|---|
| id |
| name |
| email |
| password |
| phoneno |
| module |

---

## 2️⃣ customer_register
| Column Name |
|---|
| id |
| name |
| email |
| password |
| phoneno |
| city |

---

## 3️⃣ sales
| Column Name |
|---|
| id |
| customer_email |
| course |
| price |
| date |
| time |

---

## 4️⃣ customer_inquiries
| Column Name |
|---|
| id |
| phoneno |
| name |
| interested_course |
| discussion |
| inquiry_date |
| inquiry_time |
| follow_up_date |
| calling_details |

---

# ⚙️ Installation & Setup

## 1️⃣ Clone Repository

```bash
git clone https://github.com/Shrikantc44/Eduaction-CRM-Poject.git
```

---

## 2️⃣ Open Project

Open project in:
- IntelliJ IDEA
- Eclipse
- VS Code

---

## 3️⃣ Configure Database

Create MySQL database:

```sql
CREATE DATABASE education_crm_db;
```

---

## 4️⃣ Update application.properties

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/education_crm_db
spring.datasource.username=root
spring.datasource.password=shrik
```

---

## 5️⃣ Run Project

```bash
mvn spring-boot:run
```

Application runs on:

```text
http://localhost:8085
```

---

# 🌐 Deployment

## Backend Deployment
- Render

## Database
- MySQL / PlanetScale

---

# 📬 API Endpoints

## Authentication APIs

| Method | Endpoint |
|---|---|
| POST | /api/auth/register |
| POST | /api/auth/login |

---

## Course APIs

| Method | Endpoint |
|---|---|
| GET | /api/courses |
| POST | /api/courses |
| PUT | /api/courses/{id} |
| DELETE | /api/courses/{id} |

---

## Customer APIs

| Method | Endpoint |
|---|---|
| GET | /api/customers |
| POST | /api/customers |

---

## Sales APIs

| Method | Endpoint |
|---|---|
| GET | /api/sales |
| POST | /api/sales |

---

# 📊 Dashboard Features

Dashboard includes:
- Total Customers
- Total Employees
- Total Courses
- Sales Analytics
- Pending Follow-Ups
- Customer Inquiries

---

# 🔒 User Roles

## Admin
- Manage Employees
- Manage Courses
- Monitor Sales
- View Analytics
- Manage Customers

---

## Employee
- Handle Customer Inquiries
- Manage Leads
- Follow-Up Tracking

---

## Customer
- Register/Login
- View Courses
- Purchase Courses
- Submit Feedback

---

# 🧪 Testing

APIs tested using:
- Postman

---

# 👨‍💻 Author

## Shrikant Chauhan

- GitHub: https://github.com/Shrikantc44/Eduaction-CRM-Poject
- LinkedIn: https://www.linkedin.com/in/shrikant-chauhan-025326259

---

# ⭐ Future Enhancements

- JWT Authentication
- Email Notifications
- Online Payment Integration
- File Upload
- Advanced Analytics Dashboard
- Mobile Responsive UI
- Role-Based Security
- Real-Time Notifications

---

# 📄 License

This project is developed for educational purposes.
