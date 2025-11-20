# Survey Question

A Flutter web application for creating and managing survey questions.

## 🌐 Live Demo

Visit the live application: [https://walkmandede.github.io/survey-question/](https://walkmandede.github.io/survey-question/)

## 📱 Features

- Create and manage survey questions
- Responsive web interface
- Built with Flutter for cross-platform compatibility
- Clean and intuitive user interface

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK
- A web browser for testing

### Installation

1. Clone the repository:

```bash
git clone https://github.com/walkmandede/survey-question.git
cd survey-question
```

2. Install dependencies:

```bash
flutter pub get
```

3. Run the application:

```bash
flutter run -d chrome
```

## 🔨 Build for Web

To build the project for web deployment:

```bash
flutter build web --release
```

The build output will be in the `build/web` directory.

## 📦 Project Structure

```
survey-question/
├── lib/
│   ├── main.dart                    # Application entry point
│   ├── datasources/                 # Data layer
│   │   ├── local/                   # Local data sources (SharedPreferences, SQLite, etc.)
│   │   └── remote/                  # Remote data sources (API calls, Firebase, etc.)
│   ├── models/                      # Data models and entities
│   │   └── ...                      # Model classes
│   ├── state/                       # State management
│   │   └── blocs/                   # BLoC pattern implementation
│   │       └── ...                  # BLoC files
│   ├── pages/                       # UI screens/pages
│   │   └── ...                      # Page widgets
│   ├── routes/                      # App navigation and routing
│   │   └── ...                      # Route definitions
│   └── shared/                      # Shared/reusable code
│       ├── components/              # Reusable UI components
│       ├── methods/                 # Utility functions and helpers
│       └── extensions/              # Dart extensions
├── web/
│   └── index.html                   # Web entry point
├── pubspec.yaml                     # Project dependencies
└── README.md                        # This file
```

## 🛠️ Technologies Used

- **Flutter** - UI framework
- **Dart** - Programming language
- **GitHub Pages** - Hosting platform

## 📝 Development

### Running Tests

```bash
flutter test
```

### Code Formatting

```bash
flutter format .
```

### Code Analysis

```bash
flutter analyze
```

## 🚀 Deployment

This project is automatically deployed to GitHub Pages. To deploy updates:

1. Build the web version:

```bash
flutter build web --release --base-href "/survey-question/"
```

2. Deploy to GitHub Pages:

```bash
git subtree push --prefix build/web origin gh-pages
```

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## Author

**Eddie**

- GitHub: [@walkmandede](https://github.com/walkmandede)

## Acknowledgments

- Built with [Flutter](https://flutter.dev)
- Hosted on [GitHub Pages](https://pages.github.com)

---
