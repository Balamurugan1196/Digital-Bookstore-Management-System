@echo off
echo Starting Microservices Architecture...
echo.

echo ========================================
echo Step 1: Starting Eureka Server (Port 8761)
echo ========================================
cd /d "c:\Project_Book\Base_Project\Base_Project\Microservice\Service_Registry"
start "Eureka Server" cmd /k "java -jar target\classes -Dspring.profiles.active=default || echo Run: mvn spring-boot:run"

echo Waiting 30 seconds for Eureka Server to start...
timeout /t 30 /nobreak

echo.
echo ========================================
echo Step 2: Starting All Microservices
echo ========================================

echo Starting Book Management (Port 9091)...
cd /d "c:\Project_Book\Base_Project\Base_Project\Microservice\Book_Management"
start "Book Management" cmd /k "echo Run: mvn spring-boot:run"

echo Starting User Management (Port 9095)...
cd /d "c:\Project_Book\Base_Project\Base_Project\Microservice\User_Management"
start "User Management" cmd /k "echo Run: mvn spring-boot:run"

echo Starting Order Management (Port 9093)...
cd /d "c:\Project_Book\Base_Project\Base_Project\Microservice\Order_Management"
start "Order Management" cmd /k "echo Run: mvn spring-boot:run"

echo Starting Inventory Management (Port 9092)...
cd /d "c:\Project_Book\Base_Project\Base_Project\Microservice\Inventory_Management"
start "Inventory Management" cmd /k "echo Run: mvn spring-boot:run"

echo Starting Review Management (Port 9094)...
cd /d "c:\Project_Book\Base_Project\Base_Project\Microservice\Review_Management"
start "Review Management" cmd /k "echo Run: mvn spring-boot:run"

echo Starting User Information (Port 9096)...
cd /d "c:\Project_Book\Base_Project\Base_Project\Microservice\User_Information"
start "User Information" cmd /k "echo Run: mvn spring-boot:run"

echo Waiting 45 seconds for all microservices to start...
timeout /t 45 /nobreak

echo.
echo ========================================
echo Step 3: Starting API Gateway (Port 8080)
echo ========================================
cd /d "c:\Project_Book\Base_Project\Base_Project\Microservice\API_Gateway"
start "API Gateway" cmd /k "echo Run: mvn spring-boot:run"

echo.
echo ========================================
echo All services started!
echo ========================================
echo.
echo Check Eureka Dashboard: http://localhost:8761
echo API Gateway: http://localhost:8080
echo.
echo In each terminal window, run: mvn spring-boot:run
echo.
pause