import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/vehicle_repository.dart';
import 'vehicle_event.dart';
import 'vehicle_state.dart';

class VehicleBloc extends Bloc<VehicleEvent, VehicleState> {
  final VehicleRepository vehicleRepository;

  VehicleBloc({required this.vehicleRepository}) : super(VehicleInitial()) {
    on<LoadVehicles>(_onLoadVehicles);
  }

  Future<void> _onLoadVehicles(
      LoadVehicles event, Emitter<VehicleState> emit) async {
    emit(VehicleLoading());
    try {
      final vehicles = await vehicleRepository.fetchVehicles();
      emit(VehicleLoaded(vehicles: vehicles));
    } catch (e) {
      emit(VehicleError(message: e.toString()));
    }
  }
}
