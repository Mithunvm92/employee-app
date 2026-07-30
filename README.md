# Employee Management System

A full-stack **Employee Management System** built with **React, Flask, PostgreSQL, and Docker**. This project demonstrates containerized application development and serves as a target application for vulnerability scanning using **Trivy**, AI-powered security analysis, Prometheus, Grafana, and Slack integrations.

---

## Features

- Add Employees
- View Employees
- Delete Employees
- RESTful Flask API
- PostgreSQL Database
- Dockerized Frontend, Backend & Database
- Responsive UI
- Ready for DevSecOps Security Scanning

---

#  Architecture


<img width="500" height="527" alt="image" src="https://github.com/user-attachments/assets/e03e1f40-5d88-4834-94d1-9f41d05cb7f7" />



---

# Project Structure

```
employee-app/
│
├── backend/
│   ├── app.py
│   ├── requirements.txt
│   ├── Dockerfile
│   └── .dockerignore
│
├── frontend/
│   ├── src/
│   │   ├── App.jsx
│   │   └── App.css
│   ├── Dockerfile
│   ├── nginx.conf
│   └── package.json
│
├── database/
│   ├── Dockerfile
│   └── init.sql
│
├── docker-compose.yml
├── docker_push.sh
└── README.md
```

---

# Technology Stack

| Component | Technology |
|------------|------------|
| Frontend | React + Vite |
| Backend | Flask |
| Database | PostgreSQL |
| API | REST |
| ORM | SQLAlchemy |
| Web Server | Nginx |
| Containerization | Docker |
| Orchestration | Docker Compose |
| Version Control | Git & GitHub |

---

# Getting Started

## Clone Repository

```bash
git clone https://github.com/Mithunvm92/employee-app.git

cd employee-app
```

---

# Build Containers

```bash
docker compose build
```
<img width="1919" height="79" alt="image" src="https://github.com/user-attachments/assets/622f34d1-d453-4ec4-8066-117839250e5d" />
---

# Start Application

```bash
docker compose up -d
```

<img width="1911" height="106" alt="image" src="https://github.com/user-attachments/assets/97ab9c0c-3687-4b30-bc4c-633bf4f02723" />

```bash
docker ps
```
<img width="1919" height="86" alt="image" src="https://github.com/user-attachments/assets/647117cf-a2cd-4276-8262-115b98d960ef" />


---

# Stop Application

```bash
docker compose down
```

---

# Application URLs

| Service | URL |
|----------|-----|
| Frontend | http://localhost:8080 |
| Backend API | http://localhost:5000 |
| PostgreSQL | localhost:5432 |

---

# 📡 API Endpoints

## Get Employees

```
GET /employees
```

---

## Add Employee

```
POST /employees
```

Example

```json
{
    "name":"Mithun",
    "department":"DevOps",
    "email":"mithun@test.com",
    "salary":"100000"
}
```

---

## Delete Employee

```
DELETE /employees/{id}
```

---

# Docker Images

| Image |
|--------|
| employee-app-frontend |
| employee-app-backend |
| employee-app-db |

---

# Push Docker Images

```bash
docker login
```

```bash
./docker_push.sh v2.1.0
```

---
# Push Images

```bash
docker push mithunvm92/employee-app-frontend:v2.1.0
```

```bash
docker push mithunvm92/employee-app-backend:v2.1.0
```

```bash
docker push mithunvm92/employee-app-db:v2.1.0
```
<img width="1916" height="982" alt="image" src="https://github.com/user-attachments/assets/e377d325-2edc-4bf1-8636-178b6ce82bf2" />
---

# Pull Images


```bash
docker pull mithunvm92/employee-app-frontend:v2.1.0
```

```bash
docker pull mithunvm92/employee-app-backend:v2.1.0
```

```bash
docker pull mithunvm92/employee-app-db:v2.1.0
```
<img width="1878" height="297" alt="image" src="https://github.com/user-attachments/assets/9f74ccbf-51f1-4418-91be-f3b8d41ca0a8" />

---

# Future DevSecOps Integration

This application is designed to integrate with a complete DevSecOps pipeline.

```
Docker Image
      │
      ▼
Trivy Vulnerability Scanner
      │
      ▼
JSON Vulnerability Report
      │
      ▼
AI Security Analysis
      │
      ▼
OWASP Top 10 Mapping
      │
      ▼
Enhanced Security Report
      │
      ├────────► Slack Notifications
      │
      ├────────► Prometheus Metrics
      │
      ▼
Grafana Dashboard
```

---

# Screenshots

### Dashboard

<img width="1919" height="981" alt="image" src="https://github.com/user-attachments/assets/5f5e00ba-07bf-4d5c-b155-c3fb0abd4f6f" />

---

# Future Enhancements

- Update Employee
- Employee Search
- Employee Pagination
- Authentication & Authorization
- JWT Security
- Role Based Access Control
- Audit Logs
- CI/CD using GitHub Actions
- Kubernetes Deployment
- Helm Charts
- Container Vulnerability Monitoring
- Prometheus & Grafana Monitoring
- AI Security Reporting

---

# Author

**Mithun Valappil Mani**

- GitHub: https://github.com/Mithunvm92
- LinkedIn: https://www.linkedin.com/in/mithunvm92/

---

# License

This project is licensed under the MIT License.

---

