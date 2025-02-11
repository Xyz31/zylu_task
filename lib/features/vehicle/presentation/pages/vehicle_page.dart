import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zylu_task/features/vehicle/presentation/widgets/vehicle_card.dart';
import '../bloc/vehicle_bloc.dart';
import '../bloc/vehicle_event.dart';
import '../bloc/vehicle_state.dart';

class VehicleListPage extends StatelessWidget {
  const VehicleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🚗 Vehicle List App'),
        backgroundColor: Colors.grey[300],
      ),
      body: BlocBuilder<VehicleBloc, VehicleState>(
        builder: (context, state) {
          if (state is VehicleLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is VehicleLoaded) {
            return Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            'Fuel Efficient and low Pollutant',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            color: Colors.amber,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            'Fuel Efficient and Moderately Pollutant',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            'Low Efficient and Highly Pollutant',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.vehicles.length,
                    itemBuilder: (context, index) {
                      return VehicleItem(vehicle: state.vehicles[index]);
                    },
                  ),
                ),
              ],
            );
          } else if (state is VehicleError) {
            return Center(child: Text(state.message));
          }
          return const Center(
              child: Text(
            'Press refresh to load vehicles.',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<VehicleBloc>().add(LoadVehicles());
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
