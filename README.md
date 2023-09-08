# Slack and GitHub Mobile App

Welcome to the Slack and GitHub mobile app! This app allows you to view your Slack identity and open your GitHub profile within the app.

## Appetize.io link:
 https://appetize.io/app/2zaize5erbo76wvogucugmx3aq?device=pixel4&osVersion=11.0&scale=75 

## Setup Instructions

Follow these steps to set up and run the project on your local machine:

1. **Clone the Repository:**

   Clone this Git repository to your local machine using the following command:

   ```bash
   git clone https://github.com/yourusername/slack-github-app.git


2. **Install Flutter:**

Make sure you have Flutter installed on your system. If you haven't already, follow the official installation guide: Flutter Installation Guide

3.  **Install Dependencies:**

Navigate to the project directory and run the following command to fetch the project's dependencies:

    
      flutter pub get
4. **Add Slack Profile Picture:**

Place your Slack profile picture image in the assets folder of the project and update the image path in the code accordingly.

5. **Run the App:**

Use your preferred development environment (Android Studio, VS Code, or the command line) to run the app on an emulator or physical device:


    flutter run
6. **Interact with the App:**

Open the app on your device and you should see your Slack name, profile picture, and an "Open GitHub" button. Press the button to view your GitHub profile within the app using the WebView component.

## Assumptions
This project assumes that you have Flutter and its dependencies set up on your development environment.

It assumes that you have access to your Slack profile picture and can place it in the assets folder of the project.

The app assumes a stable internet connection to load your GitHub profile.

Project Structure
lib/main.dart: Contains the main application code, including the Slack and GitHub screen layout.

lib/webview_app.dart: Contains the WebView component to display the GitHub profile.

### Feedback and Contributions
Feel free to provide feedback, report issues, or contribute to this project by creating pull requests. We welcome your contributions to improve the app's functionality and user experience.








