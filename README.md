# MyNotes

MyNotes is a cross-platform **Flutter application** for managing personal notes.  
It features **Firebase authentication and cloud storage**, and is designed with a **modular and scalable architecture** that allows easy customization and expansion.

---

## Features

### Authentication
- User registration and login
- Secure logout functionality
- Email verification for new accounts

### Note Management
- Create, update, and delete personal notes
- Secure storage of notes in the cloud

### Firebase Integration
- Firebase Authentication
- Cloud Firestore database
- Firebase Analytics support

### Cross-Platform Support
Responsive UI compatible with:

- Android
- iOS
- Web
- Windows
- Linux
- macOS

### Architecture
- Modular service-based architecture
- Scalable project structure
- Unit tests for authentication logic

---

## 🚀 Getting Started

### Prerequisites

Before running the project, ensure you have the following installed:

- **Flutter SDK**
- **Firebase account**
- Development tools:
  - Android Studio
  - Xcode (for iOS/macOS)
  - Chrome (for web development)

---

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/mynotes.git
cd mynotes
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Configure Firebase

Add the Firebase configuration files:

- `google-services.json` → Android folder
- `GoogleService-Info.plist` → iOS folder

Then update the Firebase configuration in:

```
firebase_options.dart
```

### 4. Run the application

```bash
flutter run
```

---

## Project Structure

```
lib/
 ├── main.dart              # Application entry point, routing, theme
 ├── views/                 # UI screens (login, register, notes, verify email)
 ├── services/
 │    ├── auth/             # Authentication logic and providers
 │    └── crud/             # Note CRUD services
 ├── constants/             # Route definitions
 ├── enums/                 # Menu actions
 └── utilities/             # Dialogs and helper functions

test/
 └── unit tests
```

---

## Testing

Run unit tests with:

```bash
flutter test
```

---

## Contributing

Contributions are welcome.

If you would like to contribute:

1. Fork the repository  
2. Create a new feature branch  
3. Commit your changes  
4. Push the branch  
5. Open a Pull Request

For major changes, please open an issue first to discuss what you would like to modify.

---

## License

This project is licensed under the **MIT License**.
