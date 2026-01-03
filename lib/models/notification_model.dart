class NotificationModel {
  final String patientId;
  final String doctorId;
  final String notificationBoody;

  NotificationModel({
    required this.patientId,
    required this.doctorId,
    required this.notificationBoody,
  });

  factory NotificationModel.fromJson(jsonData) {
    return NotificationModel(
      patientId: jsonData['patientId'],
      doctorId: jsonData['doctorId'],
      notificationBoody: jsonData['notificationBoody'],
    );
  }
}
