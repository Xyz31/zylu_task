const express = require("express");
const { getVehicles, addVehicle } = require("../controllers/vehicle_controller");

const router = express.Router();

router.get("/", getVehicles);
router.post("/", addVehicle);

module.exports = router;
