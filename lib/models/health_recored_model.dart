class HealthRecordsModel {
  final String id;
  final String id_patient;
  final String weight;
  final String hight;
  final String blood_sugar;
  final String blood_pressures;
  final String date;

  HealthRecordsModel({
    required this.id,
    required this.id_patient,
    required this.weight,
    required this.hight,
    required this.blood_sugar,
    required this.blood_pressures,
    required this.date,
  });

  factory HealthRecordsModel.fromJson(jsonData) {
    return HealthRecordsModel(
      id: jsonData['id'],
      id_patient: jsonData['id_patient'],
      weight: jsonData['weight'],
      hight: jsonData['hight'],
      blood_sugar: jsonData['blood_sugar'],
      blood_pressures: jsonData['blood_pressures'],
      date: jsonData['date'],
    );
  }
}
