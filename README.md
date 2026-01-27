# 🚀 WebCV — Your Digital Identity, Reimagined

![Flutter](https://img.shields.io/badge/Flutter-3.11+-blue.svg)
![Dart](https://img.shields.io/badge/Dart-3.11+-blue.svg)
![Platform](https://img.shields.io/badge/Platform-Web%20%7C%20Mobile%20%7C%20Desktop-blue.svg)
![License](https://img.shields.io/badge/License-MIT-orange.svg)

> A modern, responsive Flutter portfolio website with interactive features, video backgrounds, and contact booking system.

## ✨ Features

- **🎯 Modern Design**: Clean, dark-themed interface with smooth animations
- **📱 Fully Responsive**: Perfect experience on mobile, tablet, and desktop
- **🎬 Video Background**: Dynamic video backgrounds with blur effects
- **📅 Contact Booking**: Integrated calendar and time slot selection
- **⚡ High Performance**: Optimized for web with smooth 60fps animations
- **🎨 Custom Typography**: JetBrains Mono Nerd Font integration
- **🔄 State Management**: Clean architecture with GetIt dependency injection

## 🛠️ Tech Stack

- **Flutter 3.11+** - Cross-platform framework
- **Dart** - Programming language
- **responsive_builder** - Responsive layout system
- **video_player** - Video background functionality
- **marquee** - Scrolling text animations
- **scrollable_clean_calendar** - Calendar widget
- **url_launcher** - External link handling
- **get_it** - Service locator pattern

## 📁 Project Structure

```
webcv/
├── 📁 lib/
│   ├── 📄 main.dart                    # Application entry point
│   ├── 📄 locator.dart                 # Dependency injection setup
│   ├── 📁 constants/                   # App constants and themes
│   │   ├── 📄 app_theme.dart           # Color scheme and typography
│   │   ├── 📄 app_colors.dart          # Color palette
│   │   ├── 📄 app_radii.dart           # Border radius values
│   │   ├── 📄 app_spacing.dart         # Spacing constants
│   │   └── 📄 app_text_styles.dart     # Text style definitions
│   ├── 📁 rotuing/                     # Navigation and routing
│   │   ├── 📄 route_names.dart         # Route path definitions
│   │   └── 📄 router.dart              # Route generation logic
│   ├── 📁 services/                    # Business logic services
│   │   └── 📄 navigation_service.dart  # Navigation service
│   ├── 📁 views/                       # Main application views
│   │   ├── 📁 about/                   # About section
│   │   │   ├── 📄 about_view.dart      # Main about page
│   │   │   ├── 📄 about_card.dart      # Personal info card
│   │   │   ├── 📄 education_card.dart  # Education timeline
│   │   │   └── 📄 technical_skills_card.dart
│   │   ├── 📁 contact/                 # Contact section
│   │   │   ├── 📄 contact_view.dart    # Main contact page
│   │   │   ├── 📄 contact_form.dart    # Contact form
│   │   │   ├── 📄 contact_calendar.dart # Calendar widget
│   │   │   ├── 📄 contact_time_slots.dart
│   │   │   ├── 📄 contact_name_card.dart
│   │   │   ├── 📄 contact_timezone_selector.dart
│   │   │   └── 📄 contact_booking_section.dart
│   │   ├── 📁 home/                    # Home section
│   │   │   ├── 📄 home_view.dart       # Main home page
│   │   │   ├── 📄 home_content_desktop.dart
│   │   │   └── 📄 home_content_mobile.dart
│   │   ├── 📁 layout_template/         # Main layout wrapper
│   │   │   └── 📄 layout_template.dart
│   │   └── 📁 portfolio/               # Portfolio section
│   │       └── 📄 portfolio_view.dart
│   └── 📁 widgets/                     # Reusable UI components
│       ├── 📁 call_to_action/          # CTA buttons
│       │   ├── 📄 call_to_action.dart
│       │   ├── 📄 call_to_action_mobile.dart
│       │   └── 📄 call_to_action_tablet_desktop.dart
│       ├── 📁 centered_view/           # Content wrapper
│       │   └── 📄 centered__view.dart
│       ├── 📁 home_info/               # Home page content
│       │   └── 📄 home_info.dart
│       ├── 📁 marquee/                 # Scrolling text
│       │   └── 📄 marquee.dart
│       ├── 📁 navigation_bar/          # Desktop navigation
│       │   ├── 📄 navigation_bar.dart
│       │   ├── 📄 navigation_bar_mobile.dart
│       │   ├── 📄 navigation_bar_tablet_desktop.dart
│       │   ├── 📄 navbar_item.dart
│       │   └── 📄 navbar_logo.dart
│       ├── 📁 navigation_drawer/       # Mobile navigation
│       │   ├── 📄 navigation_drawer.dart
│       │   ├── 📄 navigation_drawer_header.dart
│       │   └── 📄 drawer_item.dart
│       └── 📁 video_background/        # Video background
│           └── 📄 video_background.dart
├── 📁 assets/                          # Static assets
│   ├── 🎥 background.mp4              # Main video background
│   ├── 🎥 background2.mp4             # Secondary video background
│   ├── 🖼️ profile_picture.png         # Profile image
│   ├── 🎁 tree_gif1.gif               # Animated graphics
│   ├── 🎁 tree_gif2.gif
│   ├── 🌳 tree_logo.png               # Logo assets
│   └── 📁 fonts/                      # Custom fonts
│       ├── 📄 JetBrainsMonoNerdFont-ExtraBold.ttf
│       └── 📄 JetBrainsMonoNerdFont-Medium.ttf
├── 📁 web/                            # Web-specific files
│   ├── 📄 index.html                  # Main HTML entry point
│   ├── 📄 manifest.json               # PWA manifest
│   └── 📁 icons/                      # Web app icons
├── 📁 android/                        # Android platform files
├── 📁 ios/                            # iOS platform files
├── 📁 windows/                        # Windows platform files
├── 📁 macos/                          # macOS platform files
├── 📁 linux/                          # Linux platform files
├── 📄 pubspec.yaml                    # Dependencies and assets
├── 📄 analysis_options.yaml           # Code analysis rules
└── 📄 README.md                       # This file
```

## 🚀 Quick Start

### Prerequisites

- Flutter SDK 3.11 or higher
- Dart 3.11 or higher
- Git

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/S0kMo/WebCV.git
   cd webcv
   ```

2. **Install dependencies:**

   ```bash
   flutter pub get
   ```

3. **Run the application:**

   ```bash
   # For web
   flutter run -d chrome

   # For mobile
   flutter run

   # For desktop
   flutter run -d windows
   ```

4. **Build for production:**

   ```bash
   # Web build
   flutter build web --release

   # Mobile build
   flutter build apk --release

   # Desktop build
   flutter build windows --release
   ```

## 🎨 Screenshots

> _Add your screenshots here when ready_

## 📖 Usage

### Navigation

The application features a responsive navigation system:

- **Desktop**: Horizontal navigation bar with hover effects
- **Mobile**: Hamburger menu with slide-out drawer
- **Tablet**: Adaptive layout between mobile and desktop

### Contact Booking

The contact section includes:

1. **Calendar Integration**: Select preferred dates
2. **Time Slot Selection**: Choose available time slots
3. **Form Submission**: Contact form with validation
4. **Timezone Support**: Automatic timezone detection

### Responsive Design

The application automatically adapts to different screen sizes:

- **Mobile**: Single column layout with optimized touch interactions
- **Tablet**: Two-column layout with balanced content distribution
- **Desktop**: Full-width layout with enhanced visual elements

## 🔧 Customization

### Theme Colors

Edit `lib/constants/app_theme.dart` to customize the color scheme:

```dart
static const Color scaffoldBg = Color(0xFFF8FAFC);
static const Color primary = Color(0xFFFAFAFA);
static const Color textPrimary = Colors.white;
```

### Navigation Routes

Add new pages by updating `lib/rotuing/route_names.dart` and `lib/rotuing/router.dart`:

```dart
const String NewPageRoute = 'new-page';
```

### Assets

Replace assets in the `assets/` directory:

- Update profile picture in `assets/profile_picture.png`
- Replace video backgrounds in `assets/background.mp4`
- Add new fonts to `assets/fonts/`

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the idk -.

## 📞 Contact

For questions and support, please reach out:

- **Email**: [your-email@example.com](mailto:sokmuny2018@gmail.com)
- **Portfolio**: [your-website.com](https://s0kmo.github.io/WebCV/)

---

**Made with ❤️ using Flutter**
