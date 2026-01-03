class MedicationAppointment {
  final String doctorId;
  final String doctorName;
  final String patientId;
  final String patientName;
  final String time;
  final String date;
  final bool state;

  final String attendance_type;

  factory MedicationAppointment.fromJson(jsonData) {
    return MedicationAppointment(
      doctorId: jsonData['doctorId'],
      doctorName: jsonData['doctorName'],
      patientId: jsonData['patientId'],
      patientName: jsonData['patientName'],
      time: jsonData['time'],
      attendance_type:jsonData['attendance_type'],
      date:jsonData['date'] ,
      state: jsonData['state']
    );
  }

  MedicationAppointment({
     required this.state,
    required this.doctorId,
    required this.doctorName,
    required this.patientId,
    required this.patientName,
    required this.time,
    required this.date,
    required this.attendance_type,
  });
}
