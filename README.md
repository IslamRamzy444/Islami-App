# Islami App

[![Flutter Version](https://img.shields.io/badge/Flutter-3.22-blue)](https://flutter.dev)
[![Provider](https://img.shields.io/badge/State%20Management-Provider-green)](https://pub.dev/packages/provider)

A comprehensive Islamic lifestyle app featuring Quran reading, Hadith, Tasbeeh counter, prayer times, and daily Azkar. **This was my first project at Route Academy** — built while learning Flutter fundamentals.

---

## Screenshots

### Onboarding (5 screens)

<img width="720" height="1600" alt="screenshot1" src="https://github.com/user-attachments/assets/b4b51061-a122-4d81-b8a4-46e86635ecc5" />

<img width="720" height="1600" alt="screenshot2" src="https://github.com/user-attachments/assets/68332580-fa75-4147-953a-d9857b3dd482" />

<img width="720" height="1600" alt="screenshot3" src="https://github.com/user-attachments/assets/f5de675f-2aa9-4455-a457-9fad66b407eb" />

<img width="720" height="1600" alt="screenshot4" src="https://github.com/user-attachments/assets/12907c07-6119-430f-a7cf-b3e4c346f4db" />

<img width="720" height="1600" alt="screenshot5" src="https://github.com/user-attachments/assets/e7b9c8bb-c948-483f-8f0f-16cf98bdb836" />


### Quran Tab (8 screens)

<img width="720" height="1600" alt="screenshot6" src="https://github.com/user-attachments/assets/411f0141-4ca5-4040-bda7-b3ece2918546" />

<img width="720" height="1600" alt="screenshot7" src="https://github.com/user-attachments/assets/829ed9f7-d572-4b7a-add7-e034cce2c8e1" />

<img width="720" height="1600" alt="screenshot8" src="https://github.com/user-attachments/assets/1bb992fc-6fc5-4518-abaa-a467d0d505c6" />

<img width="720" height="1600" alt="screenshot9" src="https://github.com/user-attachments/assets/ece96269-8718-4130-83d7-cc6c4610cf43" />

<img width="720" height="1600" alt="screenshot10" src="https://github.com/user-attachments/assets/85bb62f3-2fa1-42a5-976c-9310f6d76303" />

<img width="720" height="1600" alt="screenshot11" src="https://github.com/user-attachments/assets/d24e17cd-168c-49b0-aef6-ac733c6cab26" />

<img width="720" height="1600" alt="screenshot12" src="https://github.com/user-attachments/assets/18645f75-f59e-458a-93fa-bf1bc5908487" />

<img width="720" height="1600" alt="screenshot13" src="https://github.com/user-attachments/assets/927c5db2-1162-4329-94bb-e5590f8115ae" />


### Hadith Tab

<img width="720" height="1600" alt="screenshot14" src="https://github.com/user-attachments/assets/132a6699-5fd6-48e5-8e43-24b0ed9e6d14" />


### Sebha Tab (2 screens)

<img width="720" height="1600" alt="screenshot15" src="https://github.com/user-attachments/assets/e7ee6ff7-3555-4411-b4af-c96538e3e3a6" />

<img width="720" height="1600" alt="screenshot16" src="https://github.com/user-attachments/assets/cd536af8-16ca-4b3f-a99b-f3ba9496f303" />


### Radio Tab

<img width="720" height="1600" alt="screenshot17" src="https://github.com/user-attachments/assets/46987f04-38b5-4f1e-b886-f5f947e0fb2c" />


### Prayer Times

<img width="720" height="1600" alt="screenshot18" src="https://github.com/user-attachments/assets/acb2e236-2c75-452a-9500-88a9aadf7ed8" />


### Azkar Details

<img width="720" height="1600" alt="screenshot19" src="https://github.com/user-attachments/assets/ec27918c-f6bd-475a-8cbb-ff903e624af8" />


---
## Demo
watch demo
https://drive.google.com/file/d/16vPsgAPXeDHd7FCZ2k48hiO9C2wi-LKS/view?usp=sharing

---
## Features

| Feature | Description | Status |
|---------|-------------|--------|
| 📖 **Quran Reading** | Complete 114 surahs with Arabic text, translation, two reading modes (separate verses or continuous), search by Arabic/English name | ✅ Complete |
| 🔄 **Recently Visited** | Tracks last 6 surahs you've read | ✅ Complete |
| 📜 **Hadith Collection** | 50 Prophet sayings displayed in carousel slider | ✅ Complete |
| 📿 **Tasbeeh Counter** | Digital sebha with 33x counter for different bearish phrases | ✅ Complete |
| ⏰ **Prayer Times** | Daily prayer schedule (static demo — API integration planned) | ⚠️ UI Complete |
| 🕌 **Azkar** | Morning, evening, waking, sleeping remembrances from JSON | ✅ Complete |
| 📻 **Radio & Reciters** | Islamic radio and Quran reciters (API integration planned) | ⚠️ UI Complete |
| 👋 **Onboarding** | 5-screen introduction for first-time users | ✅ Complete |

---

## Tech Stack

| Category | Technologies |
|----------|--------------|
| **Framework** | Flutter |
| **State Management** | Provider (file separation system) |
| **Local Storage** | SharedPreferences, RootBundle |
| **Data Sources** | RootBundle (Quran, Hadith), **Dart files (Azkar)** |
| **UI** | Introduction Screen, Carousel Slider |
| **Fonts** | Custom Janna font |

---
## Project Structure

lib/
├── ui/
│ ├── intro/
│ │ └── intro_screen.dart # 5 onboarding pages (introduction_screen package)
│ └── home/
│ ├── home_screen.dart # Main screen with 5 tabs (BottomNavigationBar)
│ └── tabs/
│ ├── quran/
│ │ ├── quran_tab.dart
│ │ └── sura_details_screen.dart
│ ├── hadeth/
│ │ └── hadeth_tab.dart
│ ├── sebha/
│ │ └── sebha_tab.dart
│ ├── radio/
│ │ └── radio_tab.dart # UI only (API integration pending)
│ └── time/
│ ├── time_tab.dart
│ ├── azkar_details_screen.dart
│ └── time_azkar_resources.dart # Azkar data (Dart file, not JSON)
├── providers/
│ └── most_recent_provider.dart # Provider for last 6 visited suras
└── utils/
├── colors.dart # App color constants
├── assets.dart # Image asset paths
├── styles.dart # Text styles (Janna font)
└── shared_prefs_helper.dart # SharedPreferences functions for recent suras

assets/
├── files/
│ ├── quran/ # Quran surah text files (114 files)
│ └── hadeth/ # Hadith text files
└── images/ # All app images (onboarding, icons, etc.)

---
## Data Architecture

| Content | Format | Loading Method | Why |
|---------|--------|----------------|-----|
| Quran verses | Text files | `rootBundle.loadString()` | Large text, needs reliable loading |
| Hadith collection | Text files | `rootBundle.loadString()` | Text format, no parsing needed |
| Azkar | **Dart file** | Direct import | Type safety, compile-time validation, no runtime parsing |

*The Azkar data was originally in JSON but converted to a Dart class for better performance and type safety.*

---
## What This Project Shows

✅ File-based feature separation  
✅ Provider for cross-screen data (recently visited suras)  
✅ RootBundle loading for Quran and Hadith text files  
✅ **Custom Dart data class for Azkar** — type-safe, no runtime JSON parsing  
✅ Onboarding flow with SharedPreferences  
✅ Carousel slider implementation  
✅ Custom font integration (Janna)  
✅ Multi-tab navigation with 5 main sections  
✅ Provider for cross-screen data (most recently visited suras — max 6)
✅ SharedPreferences for persisting recent suras between app sessions

---

## How Azkar Data Is Structured

```dart
// time_azkar_resources.dart
class TimeAzkarResources {
  static const Map totalAzkar = { ... };
  static List morningAzkar = totalAzkar["أذكار الصباح"];
  static List eveningAzkar = totalAzkar["أذكار المساء"];
  static List wakingAzkar = totalAzkar["أذكار الاستيقاظ"];
  static List sleepingAzkar = totalAzkar["أذكار النوم"];
}


---
## What I'd Do Differently Today

After learning Clean Architecture and BLoC, I would:

- Separate business logic from UI using proper architecture
- Replace Provider with BLoC for better state predictability
- Implement prayer times API (Aladhan API or similar)
- Build radio feature with real streaming links (similar to my Quran App)
- Fix the sebha animation by separating the grain circle from the head
- Add unit tests

*This project represents my Route Academy learning phase. See [Flower Store App](https://github.com/IslamRamzy444/flowery_store_app) for my current architecture.*

---

## Setup Instructions

### Prerequisites
- Flutter SDK installed

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/IslamRamzy444/Islami-App.git
   cd Islami-App

2. **Get dependencies**
   ```bash
   flutter pub get
3. **Run the app**
   ```bash
   flutter run
---
## Known Limitations (Future Improvements)

| Issue | Planned Fix |
|-------|-------------|
| Prayer times static (Alexandria only) | Integrate Aladhan API for dynamic city-based prayer times |
| Radio tab UI only | Add streaming URLs from API for reciters and radio stations |
| Sebha rotation not smooth | Separate head and grain images in Stack; rotate only grain body |
| Two features incomplete (Radio, Prayer Times API) | Will complete when time permits |

---

## Acknowledgments

- Quran text and translations: Open sources
- Hadith collection: Various authentic sources
- Onboarding: `introduction_screen` package
- Azkar data: Converted from JSON to Dart for type safety
- Janna font: Custom font integration

---

## Status

✅ Fully functional: Quran reading, Hadith carousel, Sebha counter, Azkar (Morning/Evening/Waking/Sleeping)  
⚠️ Radio tab: UI complete (API pending)  
⚠️ Prayer times: UI complete (API pending)  
⚠️ Sebha animation: Needs refinement  
⚠️ Legacy project from Route Academy (2025)  
⚠️ Code reflects beginner-to-intermediate level

---

## Connect With Me

- **GitHub**: [IslamRamzy444](https://github.com/IslamRamzy444)
- **LinkedIn**: [Islam Ramzy](https://www.linkedin.com/in/islamramzy/)
