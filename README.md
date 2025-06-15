# NASCON Event Management System - MySQL + Web Interface

A comprehensive database-driven system for managing the NASCON (National Student Convention), designed to streamline event planning, user roles, sponsorships, accommodations, and participant management. This project includes database modeling, query design, and a complete working frontend interface.

---

## 🚀 Features

- Role-based User Access (Admin, Organizers, Participants, Sponsors, Judges)
- Event creation, scheduling, venue assignment with conflict prevention
- Online participant registration (individual/team)
- Sponsorship module with contract management and payments
- Accommodation allocation based on availability, budget, and team size
- Judges scoring and automatic winner declaration
- Full financial tracking: registration fees, sponsor funds, room charges
- Dynamic reports: event stats, finances, venue utilization, and more
- Secure DCL permissions using `GRANT` and `REVOKE`
- Views, indexes, stored procedures, triggers, and scheduled events implemented

---

## 🛠 Technologies Used

- MySQL
- HTML, CSS, JavaScript
- PHP / Flask (based on your implementation)
- XAMPP / WAMP or any local server
- phpMyAdmin or MySQL CLI

---

## 📁 How to Run (VS Code / Localhost Setup)

- Clone or download the repository
- Import the `.sql` file in your MySQL server (via phpMyAdmin or CLI)
- Make sure your local server (e.g., XAMPP/WAMP) is running
- Place the project folder in the `htdocs` directory (if using XAMPP)
- Open your browser and navigate to:
```
http://localhost/nascon-event-management/
```
- Login as:
  - **Admin** to manage the whole system
  - **Event Organizer** to handle event logistics
  - **Sponsor** or **Participant** to register/view events and features

---

## 🧠 Concepts Practiced

This project was developed as a **Database Systems** term project and showcases practical implementation of:

- **ERD Design & Schema Conversion**
- **DDL**: Table creation with constraints and keys
- **DML**: INSERT, UPDATE, DELETE, SELECT queries for each module
- **DCL**: Role-based permissions using `GRANT` and `REVOKE`
- **Joins**: Complex INNER/LEFT JOIN queries for reports
- **Aggregate Functions**: `SUM()`, `AVG()` with `GROUP BY` and `HAVING`
- **Stored Procedures**: Automated event schedule generation
- **Views & Indexes**: Efficient querying and security
- **Triggers & Events**: Payment confirmation and reminder scheduling
- **Frontend Integration**: Web interface for user-friendly interaction

---

## 👨‍💻 Author

Ehtisham Abid
