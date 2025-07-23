# 🌍 Discover App

A modern Flutter application showcasing a scrollable list of travel-related articles with elegant UI.

---

> **Note:** This app is a UI prototype showcasing Flutter widgets and layout.  
> All article data is locally mocked in `data.dart`, and no backend or network requests are involved.

---

## 🚀 Features

* 📰 **Dynamic Articles Feed**: Pulls article data from a `List<Article>` in `data.dart`.
* 🌐 **Location Filter Bar**: UI section for filtering articles by location (currently static).
* 👤 **Author Details**: Displayed with avatar, author name, and post time.
* ⭐ **Dynamic Ratings**: 0.5-step star ratings displayed for each article.
* ❤️ **Social Actions**: Likes, comments, and shares are visually represented per article.
* 🖼️ **Beautiful UI**: Responsive layout, rounded card views, and background images.
* 📱 Built for both small and large screens using `MediaQuery`.

---

## 📁 Folder Structure

```
DISCOVER_APP/
├── assets/
│   ├── fonts/
│   │   └── Montserrat-Regular.ttf     # Custom font used in the app
│   └── images/
│       └── discover.png               # App logo used in the header
├── lib/
│   ├── pages/
│   │   └── home_page.dart             # Main home screen widget
│   ├── data.dart                      # Article data model and mock list
│   └── main.dart                      # Entry point of the app
├── pubspec.yaml                       # Project configuration and dependencies

```

---

## 🛠️ Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/HyoketsuSenpai/discover_app.git
cd discover_app
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Run the App

```bash
flutter run
```

---

## 🖼️ Screenshots

[![Screenshot-2025-07-23-122422.png](https://i.postimg.cc/FRFFV69j/Screenshot-2025-07-23-122422.png)](https://postimg.cc/3y6HKn0R)

---

## 📦 Dependencies

* **Flutter SDK** (any stable version)
* No external packages used — purely built with Flutter’s built-in widgets.
