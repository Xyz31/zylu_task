const Vehicle = require("../models/vehicle");

// Fetch all vehicles with color categorization
const getVehicles = async (req, res) => {
    try {
        const vehicles = await Vehicle.find();
        
        res.status(200).json(vehicles);
    } catch (error) {
        res.status(500).json({ message: "Error fetching vehicles" });
    }
};

// Add a new vehicle
const addVehicle = async (req, res) => {
    try {
        const { name, mileage, year } = req.body;
        const newVehicle = new Vehicle({ name, mileage, year });
        await newVehicle.save();
        res.status(201).json({ message: "Vehicle added successfully" });
    } catch (error) {
        res.status(500).json({ message: "Error adding vehicle" });
    }
};

module.exports = { getVehicles, addVehicle };
