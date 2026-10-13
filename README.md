# 🛒 EInventoryManagement — Amazon Clone

### Developed by Bandish Vaidya

A full-stack Amazon-inspired e-commerce and inventory management application built using **Django, React, and MySQL**. This project was developed based on the tutorial series by the SuperCoders YouTube channel and extended around e-commerce operations, inventory control, and order management.

The application combines an e-commerce experience with an inventory management system that supports product administration, supplier management, warehouse organization, and purchase and sales order workflows.

---

## 👨‍💻 About the Developer

**Bandish Vaidya**  
Software Engineer | Full-Stack Developer

- GitHub: [@Bandish04](https://github.com/Bandish04)
- Project Repository: [EInventoryManagement](https://github.com/Bandish04/EInventoryManagement)

---

## ✨ Features

### 🛍️ E-Commerce

- User registration, login, and logout
- Product listings and product search
- Product detail pages
- Shopping cart functionality
- Product reviews and questions
- Responsive user interface
- Multi-level e-commerce functionality

### 📦 Inventory Management

- Product creation and management
- Category management
- Dynamic product forms with JSON key-value inputs
- Multi-step forms for product creation
- Multiple file uploads with image previews
- Product image previews
- Search, sorting, pagination, and data grid functionality

### 🏢 Warehouse Management

- Warehouse management
- Rack and shelf management
- Floor management
- Inventory organization and tracking

### 🚚 Supplier and User Management

- Supplier management
- Customer management
- Administrator management
- Staff management
- User access levels and permissions
- Module URL and permission management

### 📋 Order Management

- Purchase Order (PO) creation and management
- Purchase Order editing for draft orders
- Sales Order (SO) workflow
- Inventory-related order management

---

## 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| Python | Backend programming language |
| Django | Backend web framework |
| Django REST Framework | REST API development |
| React | Frontend user interface |
| JavaScript | Frontend functionality |
| MySQL | Relational database |
| HTML5 | Web page structure |
| CSS3 | Styling and responsive layouts |
| npm | Frontend package management |
| Git and GitHub | Version control and source code management |

---

## 🏗️ Project Architecture

The application follows a client-server architecture.

- **Frontend — React:** Provides the user interface for the e-commerce application and inventory management dashboard.
- **Backend — Django:** Handles application logic, authentication, permissions, inventory operations, and order management.
- **API Layer — Django REST Framework:** Connects the frontend to the backend through API requests.
- **Database — MySQL:** Stores application data, including users, products, categories, suppliers, warehouses, and order-related information.

### Application Flow

1. Users interact with the React frontend.
2. The frontend sends requests to the Django REST API.
3. Django processes requests, validates permissions, and executes application logic.
4. The backend retrieves or updates information in the MySQL database.
5. The API returns responses to the frontend.
6. React displays the updated information to the user.

---

## ⚙️ Prerequisites

Before running the project locally, install the following:

- Python 3
- Node.js and npm
- MySQL Server
- Git

The exact supported versions depend on the dependencies specified in the project's backend and frontend configuration files.

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Bandish04/EInventoryManagement.git
cd EInventoryManagement
```

### 2. Backend Setup — Django

Navigate to the backend directory:

```bash
cd Backend
```

Create a virtual environment:

```bash
python -m venv env
```

Activate the virtual environment.

**Windows PowerShell:**

```powershell
.\env\Scripts\Activate.ps1
```

**Windows Command Prompt:**

```cmd
env\Scripts\activate
```

Install the backend dependencies:

```bash
python -m pip install -r requirements.txt
```

Configure the MySQL database using the settings provided by the project. Update the database name, username, password, host, and port as required by your local environment.

Apply database migrations:

```bash
python manage.py migrate
```

Start the Django development server:

```bash
python manage.py runserver
```

The backend will normally be available at:

`http://127.0.0.1:8000/`

### 3. Frontend Setup — React

Open a new terminal and navigate to the frontend directory from the project root:

```bash
cd Frontend
```

Install the frontend dependencies:

```bash
npm install
```

Start the React development server:

```bash
npm start
```

The frontend will normally be available at:

`http://localhost:3000/`

**Note:** Directory names, frontend scripts, and setup commands should match the actual project structure and configuration files. Configure the frontend API URL to point to the running Django backend if required.

---

## 🔐 Security and Configuration

Before running the application, configure the required database credentials and other environment-specific settings.

- Do not commit database passwords, API keys, secret keys, or other sensitive information.
- Use environment variables for sensitive configuration where supported.
- Keep development and production settings separate.
- Configure appropriate database permissions.
- Use secure settings when deploying the application to production.

---

## 🗄️ Database Overview

The application uses MySQL as its relational database.

Its data model supports the main areas of the application, including:

- User accounts and permissions
- Product and category management
- Product reviews and questions
- Suppliers and customers
- Warehouse, rack, shelf, and floor management
- Purchase orders
- Sales orders
- Inventory and related transactions

The actual tables, model relationships, and foreign-key constraints are defined by the project's Django models and database migrations.

---

## 🤝 Contributing

Contributions, suggestions, and improvements are welcome.

1. Fork the repository.
2. Create a feature branch.
3. Make your changes.
4. Test the changes locally.
5. Submit a pull request describing your improvements.

Please ensure that changes are tested and do not introduce regressions in existing functionality.

---

## 📄 License

Please refer to the repository's `LICENSE` file for the applicable license.

If the repository does not contain a `LICENSE` file, add the license you intend to use before claiming that the project is licensed under a particular license.

---

## 🙏 Acknowledgements

Special thanks to the **SuperCoders YouTube channel** for the tutorial series that inspired this project.

Thanks also to the open-source communities behind Django, Django REST Framework, React, and MySQL for the tools and resources that support full-stack development.

---

## 📬 Contact

**Bandish Vaidya**

- GitHub: [https://github.com/Bandish04](https://github.com/Bandish04)
- Repository: [https://github.com/Bandish04/EInventoryManagement](https://github.com/Bandish04/EInventoryManagement)

---

⭐ If you find this project useful, consider giving the repository a star!

**Built with ❤️ by Bandish Vaidya**
