
import '../../data/models/request/get_app_info/get_app_info_request.dart';
import '../../data/models/response/app_info_data/app_info_data.dart';
import '../../data/repositories/system_repository_impl.dart';

class GetAppInfoUseCase {
  final SystemRepository repository;

  GetAppInfoUseCase(this.repository);

  Future<AppInfoData?> call({required String packageName, required String platform}) {
    return repository.getAppInfo(
      GetAppInfoRequest(
        packageName: packageName,
        platform: platform,
      ),
    );
  }
}
