class PatientModel {
  final String action;
  final String name;
  final String email;
  final String pass;
  final String phone;
  final String gender;
  final String id;
  final List<String> doctors;

  PatientModel({
    required this.action,
    required this.id,
    required this.name,
    required this.email,
    required this.pass,
    required this.phone,
    required this.gender,
    required this.doctors,
  });

  factory PatientModel.fromJson(jsonData) {
    return PatientModel(
      action: jsonData['action'],
      id: jsonData['id'],
      name: jsonData['name'],
      email:jsonData ['email'],
      pass: jsonData['pass'],
      phone: jsonData['phone'],
      gender: jsonData['gender'],
      doctors:jsonData ['doctors'],
    );
  }
}
