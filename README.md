# Vehicle Rental System

A web application for renting vehicles, built for the Databases course (HY360) at the University of Crete. Customers browse vehicles by category (cars, motorcycles, scooters, bikes), rent and return them, and report damage. Admins manage the fleet and get analytics dashboards.

## Features

- **Customers**: register/log in, browse vehicle categories and availability, rent/return vehicles, report damage
- **Admins**: add vehicles, check fleet status, and view analytics — earnings, rent durations, rent status, popular vehicles, repair costs

## Tech stack

- Java / JSP, Maven (WAR packaging)
- MySQL over JDBC
- Gson

## Running it

1. Start MySQL on `localhost:3306` (credentials in `HY360-Project/src/main/java/database/DatabaseConnection.java` — adjust as needed). The schema and seed data are created by `database.init.InitDatabase`.
2. Build and deploy:

```bash
cd HY360-Project
mvn clean package
# deploy target/HY360-Project.war to Tomcat (or run via your IDE)
```
