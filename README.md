# FitMind

A personalized fitness and nutrition mobile application that generates custom workout and meal plans based on individual user characteristics and goals.

## Features

- **Personalized Meal Plans** - Weekly nutrition plans based on age, weight, height, gender, activity level, dietary preferences, and health goals
- **Custom Workout Plans** - Tailored exercise routines based on fitness level, goals, and available training days
- **Calorie & Macro Tracking** - BMR and TDEE calculations with optimized macronutrient distribution
- **Progress Monitoring** - Track meals and workouts with weekly reports
- **User Authentication** - Secure login/signup with Firebase Auth
- **Real-time Sync** - Cross-platform data synchronization

## Tech Stack

- **Frontend:** Flutter (Dart)
- **Backend:** Flask (Python)
- **Database:** Firebase Realtime Database
- **Authentication:** Firebase Auth

## How It Works

1. User inputs personal data (age, weight, height, gender, activity level, dietary restrictions, fitness goals)
2. Backend calculates BMR/TDEE using scientific formulas
3. System generates personalized 7-day meal and workout plans
4. Plans adapt based on user goals (weight loss, muscle gain, maintenance)

## API Endpoints

- `/generatePlan` - Generates weekly nutrition plan
- `/generateWorkoutPlan` - Creates custom workout plan

## Getting Started

1. Clone the repo
2. Run `flutter pub get`
3. Configure your own Firebase project
4. Run `flutter run`

## Screenshots

*(Coming soon)*

## Authors

- Hamza Rashdan
- Mohamad Refai
- Mohammed Al Muslemawi

## Acknowledgments

Developed as a Senior Project at German Jordanian University under the supervision of Dr. Abdullah Alfarrarjeh and Dr. Amani Abujabal.
