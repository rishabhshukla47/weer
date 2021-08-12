# weer

A weather application

## Description

This application can be used to serve current weather data for user's present location. It can also provide present weather data for numerous cities across the globe.

## Showcase

* Weather data for current location.
* <img src="https://user-images.githubusercontent.com/83495424/129264648-1aa9071f-d039-4af2-ad3f-4785e53b47e0.png" alt="alt text" width="230" height="400">

* Weather data for particular city.
* <img src="https://user-images.githubusercontent.com/83495424/129264454-a2d48080-b571-4a19-a110-9806dfb7f380.png" alt="alt text" width="230" height="400"><img src="https://user-images.githubusercontent.com/83495424/129264551-6fb8e8e1-abbd-428a-a9b2-3b49675a7a47.png" alt="alt text" width="230" height="400">

## Installation

#### Prerequisites
* Working flutter environment.

#### Guides
* [Flutter setup guide](https://flutter.dev/docs/get-started/install)
* [Creating a new flutter project](https://flutter.dev/docs/get-started/test-drive?tab=androidstudio) 
* [Using Packages](https://flutter.dev/docs/development/packages-and-plugins/using-packages)
* [Location Package](https://pub.dev/packages/location)
* [Openweathermap](https://openweathermap.org/current)

#### Key commands
* flutter pub get (install packages and dependencies)
* flutter run --release (run release build)

#### Steps
* Setup Flutter environment.
* Create a new flutter project.
* Replace lib folder and pubspec.yaml file with that from repo.
* Add fonts and images directory.
* Run pub get.
* Use openweather api to generate apikey and url. These are used in getCityWeather() in lib/services/weather.dart.
* Setup permissions required by location package (follow guide).
* Connect emulator or physical device.
* Run the applicaion using run button or terminal command: "flutter run".

## Usage
* Open the application.
* Provide location permission if prompt appears.
* <img src="https://user-images.githubusercontent.com/83495424/129262110-c3dbe582-8e45-4176-9589-9c8fe8e27580.png" alt="alt text" width="264" height="242">
* Give access to location services if asked for.
* <img src="https://user-images.githubusercontent.com/83495424/129262168-f04efe95-494e-4a2a-a4a4-769c95a4cfd4.png" alt="alt text" width="269" height="141">
* Weather data for current location should be visible.
* Use icons to get current location weather data or particular city current weather data.
* <img src="https://user-images.githubusercontent.com/83495424/129262211-1ea44906-c95e-450e-9d5d-38fb0e29d567.png" alt="alt text" width="282" height="44">
* Enter city name for getting particular city weather data.
* <img src="https://user-images.githubusercontent.com/83495424/129262250-054974eb-4359-40ab-9267-f64767fa1d80.png" alt="alt text" width="274" height="131">

## Credits
Inspired by Clima app ( creator: [The App Brewery](https://www.appbrewery.co/))

