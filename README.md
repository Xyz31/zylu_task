# 🚀 Zylu Task - Full-Stack Flutter & Node.js Project
A Flutter mobile app that displays a list of vehicles fetched from a Node.js backend. Vehicles are color-coded based on fuel efficiency and pollution levels.

### 📌 Features
Fetch a list of vehicles from the backend.

#### Vehicles are color-coded based on:
🟢 Green: Mileage ≥ 15 km/l & Age ≤ 5 years (Fuel Efficient & Low Pollutant) \
🟠 Amber: Mileage ≥ 15 km/l & Age > 5 years (Fuel Efficient & Moderately Pollutant) \
🔴 Red: Mileage < 15 km/l (High Pollutant) 

#### Flutter Bloc for state management.
#### REST API built with Node.js + Express.js.
#### MongoDB database for storing vehicle details.

## Demo 

<table>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/1153c910-bc61-4ec9-a9f9-819c5a08cea1" alt="Demo 1" width="300"/></td>
    <td><img src="https://github.com/user-attachments/assets/fb1f7ea6-b41d-48ca-a341-7f4cadfea3c7" alt="Demo 2" width="300"/></td>
  </tr>
</table>





### 🚀 Technologies Used
#### Frontend (Flutter)
Flutter (UI framework)\
Bloc (State Management)\
Dart HTTP package (API Calls)

#### Backend (Node.js)
Node.js + Express.js (REST API)\
MongoDB + Mongoose (Database)\
Dotenv (Environment variables)

### 📡 API Endpoints

| Method  | Endpoint            | Description             |
|---------|---------------------|-------------------------|
| **GET**  | `/api/vehicles`     | Get all vehicles        |
| **POST** | `/api/vehicles`     | Add a new vehicle       |

---

### 📌 Sample Request Body (JSON)

### **➤ Add a Vehicle**
```json
{
  "name": "Toyota Prius",
  "mileage": 18.5,
  "year": 2021
}
```


## 📌 Future Enhancements
 Authentication for vehicle owners.\
 Pagination for large datasets.\
 Search & Filters to refine results.\
 Offline support using local storage.


