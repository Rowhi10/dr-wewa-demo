# DR.WEWA – Disaster Response Wireless Emergency Warning Application

## Project Overview
DR.WEWA (Disaster Response Wireless Emergency Warning Application) is a
cross-platform emergency alert application developed as a class
demonstration. The goal of this project is to show how emergency alerts
can be enhanced by providing additional context, clear instructions,
and immediate access to evacuation routes and nearby resources.

Traditional wireless emergency alerts are often short and lack
actionable guidance. DR.WEWA addresses this limitation by presenting
alerts in a structured and user-friendly way.

---

## Problem Statement
Standard emergency alerts typically:
- Provide minimal information
- Do not explain severity clearly
- Lack recommended actions
- Do not link directly to evacuation routes or resources

This can result in confusion and delayed responses during emergencies.

---

## Solution
DR.WEWA enhances emergency alerts by:
- Displaying detailed alert information
- Color-coding alerts based on severity
- Providing recommended safety actions
- Offering quick access to evacuation routes
- Listing nearby shelters and emergency resources

For this class demo, emergency alerts are **simulated in code** to ensure
stability and ease of demonstration.

---

## Features

### 1. Emergency Alert Display
- List of active alerts showing:
  - Alert title
  - Location
  - Severity (Info, Watch, Warning, Emergency)
  - Time issued
- Color-coded severity indicators
- Emergency mode banner when critical alerts are active
- Detailed alert view with recommended actions

### 2. Evacuation Routes & Safe Zones
- Displays evacuation destinations such as:
  - Schools
  - Community centers
  - Shelters
- Routes open in Google Maps for navigation
- Demonstrates how real-time navigation could be integrated

### 3. Resource Locator
- Lists nearby:
  - Shelters
  - Medical facilities
  - Food and water distribution points
- Displays availability and status information

### 4. Simulated Alert Notification
- Alerts are preloaded and triggered for demonstration purposes
- Represents future integration with push notifications or SMS

---

## Architecture (Demo Version)

This project focuses on the **frontend prototype** and follows a simple
layered design:

### UI Layer
- Built with Flutter
- Screens:
  - Alerts
  - Evacuation Routes
  - Resources
- Shared navigation using a bottom navigation bar

### Domain Layer
- `EmergencyAlert` data model
- Sample alert dataset used for simulation

### Future Backend (Not Implemented)
In a full production system, DR.WEWA would integrate with:
- FEMA / NOAA / USGS alert feeds
- Backend API (Flask or Django)
- Cloud database for alert history and user preferences
- Push notification services

---

## Technology Stack
- **Framework:** Flutter
- **Language:** Dart
- **Target Platform:** Flutter Web (Chrome)
- **Additional Packages:**
  - `url_launcher` – external navigation
  - `intl` – time formatting

---

## How to Run the Application

### Prerequisites
- Flutter SDK installed
- Supported browser (Google Chrome recommended)

### Steps
```bash
git clone https://github.com/Rowhi10/dr-wewa-demo.git
cd dr-wewa-demo
flutter pub get
flutter run
