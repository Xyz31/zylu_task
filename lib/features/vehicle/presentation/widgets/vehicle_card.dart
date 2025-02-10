import 'package:flutter/material.dart';
import '../../data/models/vehicle_model.dart';

class VehicleItem extends StatelessWidget {
  final Vehicle vehicle;

  const VehicleItem({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    Color getColor(String color) {
      switch (color) {
        case 'green':
          return Colors.green;
        case 'amber':
          return Colors.amber;
        default:
          return Colors.red;
      }
    }

    return Card(
      margin: const EdgeInsets.all(8),
      color: getColor(vehicle.color),
      child: ListTile(
        title: Text(vehicle.name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(
          'Mileage: ${vehicle.mileage} km/l\nYear: ${vehicle.year}',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: const Icon(
          Icons.car_rental_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
