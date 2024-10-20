class ApiEndPoint {
  // 開發環境
  static const String domain = serverUrl;

  // 正式環境
  static const String serverUrl = "https://dental-service.jieniguicare.org/";

  static const String accountsLogin = "accounts/login/";
  static const String accountsStudents = "accounts/students/";
  static String classroomsStudents(int classroomsId) {
    return "accounts/classrooms/$classroomsId/students/";
  }
  static const String apiAnalysis = "api/analysis/";
  static const String apiTeethCleaningRecords = "api/teeth-cleaning-records/";
  static String recordsStudents(int studentId) {
    return "api/records/students/$studentId/";
  }
  static const String accountsClassrooms = "accounts/classrooms/";
  static const String apiRecordsCreate = "api/records/create/";





}
