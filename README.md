# Flutter Sign In & Sign Up UI with Laravel API Authentication

A simple Flutter app featuring beautiful Sign In and Sign Up screens, connected to a Laravel backend for API-based authentication. Includes a minimal e-commerce home page with product listing and add-to-cart functionality.

![WhatsApp Image 2025-07-22 at 14 40 25_f80f5477](https://github.com/user-attachments/assets/9ab4aaea-318d-4bbc-9214-8622477d90c0)
![WhatsApp Image 2025-07-22 at 14 41 09_f36d95ba](https://github.com/user-attachments/assets/7f92d29b-d713-4bc2-922e-2c9a5976740c)
![WhatsApp Image 2025-07-22 at 14 41 06_9d63c479](https://github.com/user-attachments/assets/368e0fb3-5267-4c3c-babd-d28996006b7c)
![WhatsApp Image 2025-07-22 at 14 40 30_b94e3d08](https://github.com/user-attachments/assets/6b4a078b-50f7-4c17-8ea5-13818bf88c9a)

## 🚀 Features

✅ Flutter Sign In & Sign Up screens  
✅ Laravel API authentication (Sanctum or JWT)  
✅ Secure user registration & login  
✅ Minimal e-commerce home page  
✅ Product list display  
✅ Add to cart functionality  
✅ Clean and responsive UI

---

## 🛠️ Tech Stack

- **Frontend:** Flutter (Dart)
- **Backend:** Laravel (PHP)
- **API Auth:** Sanctum or JWT

---

## 📂 Project Structure

/flutter_app # Flutter frontend code
/laravel_backend # Laravel backend API

yaml
Copy
Edit

---

## ⚙️ Setup Instructions

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name
2️⃣ Laravel Backend Setup
bash
Copy
Edit
cd laravel_backend

# Install dependencies
composer install

# Copy .env
cp .env.example .env

# Generate app key
php artisan key:generate

# Configure database in .env
DB_DATABASE=your_db_name
DB_USERNAME=your_db_user
DB_PASSWORD=your_db_password

# Run migrations
php artisan migrate

# Install Sanctum (if used)
composer require laravel/sanctum
php artisan vendor:publish --provider="Laravel\Sanctum\SanctumServiceProvider"
php artisan migrate
Start the backend server:

bash
Copy
Edit
php artisan serve
3️⃣ Flutter Frontend Setup
bash
Copy
Edit
cd flutter_app

# Get dependencies
flutter pub get

# Run the app
flutter run
🔐 API Endpoints
Method	Endpoint	Description
POST	/api/register	Register a new user
POST	/api/login	Log in user & return token
GET	/api/products	List all products
POST	/api/cart/add	Add product to cart (auth required)

📸 Screenshots

✨ TODOs
Add product detail page

Add checkout & payment

Improve cart management

📄 License
This project is open-source and free to use under the MIT License.

💙 Contributing
Pull requests are welcome! For major changes, please open an issue first to discuss what you’d like to change.

yaml
Copy
Edit

---

**Next steps:**  
✅ Replace **`yourusername`** with your GitHub username  
✅ Add real **screenshots** in the `screenshots/` folder  
✅ Update endpoints if they differ  
✅ Add your **name** and **links**

If you’d like, I can help you write the actual **API routes** in Laravel too. Want tha
