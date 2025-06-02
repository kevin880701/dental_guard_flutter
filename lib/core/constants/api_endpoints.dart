class ApiEndPoint {
  static const String domain = 'https://letgo.jieniguicare.org';
  // static const String domain = 'http://192.168.54.194';


  // Auth
  static const String firebaseOauthLogin = '/user/login/firebase-oauth';
  static const String lineOauthLogin = '/user/login/line-oauth';
  static const String login = '/user/login';
  static const String refreshToken = '/user/refresh-token';
  static const String userInfo = '/user/info';
  static const String deleteUser = '/user/delete';
  static const String updateUserProfile = '/user/profile';

  /// /user/{id}
  static String getUserById(String id) => '/user/$id';

  // Organization
  static const String getManagedGroups = '/organization/managed-groups';
  static const String createGroup = '/organization/group';
  static const String addGroupMember = '/organization/group/member';
  static const String removeGroupMember = '/organization/group/member';
  static const String addGroupMemberExtended = '/organization/group/member-extended';
  static const String updateGroupName = '/organization/group/name';

  /// /organization/group/{groupId}/members
  static String getGroupUsers(String groupId) => '/organization/group/$groupId/members';

  /// /organization/group/{groupId}
  static String getGroupById(String groupId) => '/organization/group/$groupId';

  // Teeth Record
  static const String createBrushingRecord = '/teeth-record/brushing-record';

  /// /teeth-record/brushing-record/{id}
  static String deleteBrushingRecord(String id) => '/teeth-record/brushing-record/$id';

  /// /teeth-record/brushing-record/user/{id}
  static String getUserBrushingRecords(String userId) =>
      '/teeth-record/brushing-record/user/$userId';

  /// /teeth-record/brushing-record/brushing-record/{id}
  static String getBrushingRecordById(String recordId) =>
      '/teeth-record/brushing-record/$recordId';

  // Analyze
  /// /analyze/result/{id}
  static String getAnalyzeResultById(String id) => '/analyze/result/$id';

  static const String analyzeTeethImage = '/analyze/teeth';

  /// /analyze/image/teeth/{filepath}
  static String getAnalyzeImage(String filepath) => '/analyze/image/teeth/$filepath';

}
