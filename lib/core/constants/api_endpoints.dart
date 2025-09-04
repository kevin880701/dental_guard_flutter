class ApiEndPoint {
  static const String domain = 'https://letgo.jieniguicare.org';
  // static const String domain = 'http://192.168.54.194';


  // Auth
  static const String firebaseOauthLogin = '/v1/user/login/firebase-oauth';
  static const String lineOauthLogin = '/v1/user/login/line-oauth';
  static const String login = '/v1/user/login';
  static const String refreshToken = '/v1/user/refresh-token';
  static const String userInfo = '/v1/user/info';
  static const String deleteUser = '/v1/user/delete';
  static const String updateUserProfile = '/v1/user/profile';

  /// /user/{id}
  static String getUserById(String id) => '/v1/user/$id';

  // Organization
  static const String getManagedGroups = '/v1/organization/managed-groups';
  static const String createGroup = '/v1/organization/group';
  static const String addGroupMember = '/v1/organization/group/member';
  static const String removeGroupMember = '/v1/organization/group/member';
  static const String addGroupMemberExtended = '/v1/organization/group/member-extended';
  static const String updateGroupName = '/v1/organization/group/name';
  static const String getUserOrganizations = '/v1/organization/user/organizations';

  /// /v1/organization/group/{groupId}/members
  static String getGroupUsers(String groupId) => '/v1/organization/group/$groupId/members';

  /// /v1/organization/group/{groupId}
  static String getGroupById(String groupId) => '/v1/organization/group/$groupId';

  // Teeth Record
  static const String createBrushingRecord = '/v1/teeth-record/create';
  static const String groupBrushingStats = '/v1/teeth-record/group/stats';
  static const String groupsBrushingRecords = '/v1/teeth-record/group/search';
  static const String teethRecordGroupTopUsers = '/v1/teeth-record/group/top-users';
  static const String userBrushingStats = '/v1/teeth-record/user/stats';
  static const String usersBrushingRecords = '/v1/teeth-record/users/search';

  /// /v1/teeth-record/{id}
  static String deleteBrushingRecord(String id) => '/v1/teeth-record/$id';

  /// /v1/teeth-record/{id}
  static String getBrushingRecordById(String recordId) =>
      '/v1/teeth-record/$recordId';

  // Analyze
  /// /v1/analyze/result/{id}
  static String getAnalyzeResultById(String id) => '/v1/analyze/result/$id';

  static const String analyzeTeethImage = '/v1/analyze/teeth';

  /// /v1/analyze/image/teeth/{filepath}
  static String getAnalyzeImage(String filepath) => '/v1/analyze/image/teeth/$filepath';

  // System
  static const String getAppInfo = '/v1/system/app/info';
  static const String uploadAppVersion = '/v1/system/app/version';
  static const String getSystemMaintenance = '/v1/system/maintenance';
  static const String uploadSystemMaintenance = '/v1/system/maintenance';
}
