class DoctorModel {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String speciality;
  final String password;
  final String action;

  DoctorModel({
    required this.name,
    required this.action,
    required this.id,
    required this.email,
    required this.phone,
    required this.gender,
    required this.speciality,
    required this.password,
  });

  factory DoctorModel.fromJson(jsonData) {
    return DoctorModel(
      name: jsonData['name'],
      action: jsonData['action'],
      id: jsonData['id'],
      email:jsonData ['email'],
      phone: jsonData['phone'],
      gender: jsonData['gender'],
      speciality: jsonData['speciality'],
      password:jsonData ['password'],
    );
  }
}
