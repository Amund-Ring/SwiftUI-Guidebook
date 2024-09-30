![Swift](https://img.shields.io/badge/Swift-FA7343?style=flat&logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-000000?style=flat&logo=swift&logoColor=white)
<br/>

## Guidebook - SwiftUI demonstration


# 🏙️ Guidebook with City Attractions

This SwiftUI-based iOS app displays information about various cities and their attractions. The app uses JSON data to populate views with city information, making it flexible and dynamic. The project demonstrates several essential iOS development skills, including SwiftUI, JSON parsing, and navigation within an app.

![Main view](/screenshots.png "Screenshots")

## ✨ Features

- **City and Attraction List**: Displays a scrollable list of cities, each with its own attractions.
- **Dynamic Data Loading**: Data is loaded from a JSON file (`DemoData.json`), allowing for easy updates without modifying the app code.
- **Navigation**: Users can navigate through different views, from a list of cities to detailed information about attractions.
- **Detailed View**: Each attraction has its own detail page with images, descriptions, and a button to open directions in Apple Maps.

## 💡 Skills Demonstrated

1. **SwiftUI**: The entire app interface is built using SwiftUI, showcasing skills in declarative UI development.
2. **JSON Parsing**: The app reads city and attraction data from a JSON file, decodes it into Swift structures using `Codable`, and presents it dynamically in the app.
3. **Navigation**: The app uses `NavigationStack` to allow users to navigate between different screens, showcasing how to handle navigation in SwiftUI.
4. **Reusable Components**: Custom views, such as `CityCard` and `AttractionRow`, demonstrate reusable UI components that make the code modular and maintainable.
5. **File Management**: Loading external resources (like `DemoData.json`) demonstrates the handling of local files within an iOS app.
6. **Swift Error Handling**: Error handling is implemented when loading and parsing the JSON data, ensuring that the app doesn't crash on invalid input or missing files.
