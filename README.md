# 🏥 Elderly Assistant Healthcare System

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=flat&logo=Flutter&logoColor=white)](https://flutter.dev)

A comprehensive healthcare management application built with Flutter, designed to facilitate communication and healthcare monitoring for the elderly, doctors, and administrators. This system ensures that elderly patients receive timely medication, have easy access to medical consultations, and are well-monitored by their doctors and system administrators.

---

## 📖 Table of Contents
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Screenshots](#screenshots)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

---

## ✨ Features

### 👤 Patient Features
- **Registration & Login**: Secure access specifically designed for elderly users.
- **Doctor Discovery**: Search and view doctors by their specializations.
- **Medication Tracking**: View medication appointments and schedules.
- **Real-time Communication**: Direct chat functionality with healthcare providers.
- **Medication Alerts**: Receive timely notifications for medication appointments.

### 👨‍⚕️ Doctor Features
- **Patient Monitoring**: View comprehensive lists of assigned patients.
- **Consultation Management**: Real-time chat with patients for remote guidance.
- **Medication Prescription**: Ability to add and update medication plans for patients.

### 🔐 Admin Features
- **Centralized Dashboard**: Oversight of all system users.
- **Account Moderation**: Capability to view, manage, and block patient or doctor accounts.

---

## 🛠 Tech Stack
- **Framework**: [Flutter](https://flutter.dev)
- **Language**: [Dart](https://dart.dev)
- **UI Architecture**: Material 3 & Cupertino Components
- **Third-party Libraries**: 
  - `modal_progress_hud_nsn`: For seamless loading indicators.
  - `cupertino_icons`: For iOS-style iconography.

---

## 📂 Project Structure
```text
lib/
├── consts_statics/     # Styles, colors, and global constants
├── functions/          # Helper functions and business logic
├── models/             # Data structure models (Patient, Doctor, Medication)
├── screens/            # UI Screens organized by user roles
│   ├── admin_screens/
│   ├── auth_screens/
│   ├── doctors_screens/
│   ├── patient_screens/
│   └── splash_screens/
├── widgets/            # Reusable components and custom UI elements
└── main.dart           # Main entry point of the app
```

---

## 📸 Screenshots

<p align="center">
  <img src="app%20screens/logo/SNAG-23110317473900.png" width="300" alt="Project Logo">
</p>

| Splash Screen | Register Screen |
|:---:|:---:|
| <img src="app%20screens/auth/SNAG-23110423082100.png" width="200" alt="Login Screen"> | <img src="app%20screens/patient/SNAG-23110423084300.png" width="200" alt="Patient Home">  |

---

## 🚀 Installation

1. **Prerequisites**: Ensure you have [Flutter](https://docs.flutter.dev/get-started/install) installed on your machine.
2. **Clone the repository**:
   ```bash
   git clone https://github.com/MahmouddSalama/elderly_assistant-app.git
   ```
3. **Get Dependencies**:
   ```bash
   flutter pub get
   ```
4. **Run the Application**:
   ```bash
   flutter run
   ```

---

## 🤝 Contributing
1. Fork the Project.
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`).
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the Branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.

---

## 📄 License
Distributed under the MIT License. See `LICENSE` for more information.

---

## 📞 Contact
**Mahmoud Salama** - [GitHub Profile](https://github.com/MahmouddSalama)  
Project Link: [https://github.com/MahmouddSalama/elderly_assistant-app](https://github.com/MahmouddSalama/elderly_assistant-app)

---
*Developed by Mahmoud Salama*


