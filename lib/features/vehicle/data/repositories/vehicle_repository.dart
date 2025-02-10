import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:zylu_task/core/constants/api_constants.dart';
import '../models/vehicle_model.dart';

class VehicleRepository {
  Future<List<Vehicle>> fetchVehicles() async {
    try {
      final response = await http.get(Uri.parse(ApiConstants.vehiclesEndpoint));
      // print('*** Response code  :: ${response.statusCode} ****');
      if (response.statusCode == 200) {
        // print('*** Response Data :: ${response.body} ******');
        List<dynamic> data = json.decode(response.body);
        return data.map((json) => Vehicle.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load vehicles');
      }
    } catch (e) {
      throw Exception('Error fetching vehicles: $e');
    }
  }
}
