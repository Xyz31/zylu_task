class Vehicle {
  final String name;
  final int mileage;
  final int year;
  final String color;

  Vehicle({
    required this.name,
    required this.mileage,
    required this.year,
    required this.color,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      name: json['name'],
      mileage: json['mileage'],
      year: (json['year']),
      color: _determineColor(json['mileage'], json['year']),
    );
  }

  static String _determineColor(int mileage, int year) {
    // print('^^^ Before Parsing %%%%%%');
    int currentYear = DateTime.now().year;
    int age = currentYear - year;

    if (mileage >= 15) {
      return age <= 5 ? 'green' : 'amber';
    }
    return 'red';
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'mileage': mileage,
      'year': year,
      'color': color,
    };
  }
}
