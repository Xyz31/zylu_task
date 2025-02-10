const mongoose = require("mongoose");

const VehicleSchema = new mongoose.Schema({
    name: { type: String, required: true },
    mileage: { type: Number, required: true }, // km/l
    year: { type: Number, required: true },
});

module.exports = mongoose.model("Vehicle", VehicleSchema);
