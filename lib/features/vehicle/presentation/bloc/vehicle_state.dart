import '../../data/models/vehicle_model.dart';

abstract class VehicleState {}

class VehicleInitial extends VehicleState {}

class VehicleLoading extends VehicleState {}

class VehicleLoaded extends VehicleState {
  final List<Vehicle> vehicles;
  VehicleLoaded({required this.vehicles});
}

class VehicleError extends VehicleState {
  final String message;
  VehicleError({required this.message});
}
