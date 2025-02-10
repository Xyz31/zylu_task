import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zylu_task/features/vehicle/presentation/pages/vehicle_page.dart';
import 'features/vehicle/presentation/bloc/vehicle_bloc.dart';
import 'features/vehicle/data/repositories/vehicle_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final VehicleRepository vehicleRepository = VehicleRepository();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VehicleBloc(vehicleRepository: vehicleRepository),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: VehicleListPage(),
      ),
    );
  }
}
