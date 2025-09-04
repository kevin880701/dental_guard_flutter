
import '../../data/models/response/organization/organization_data.dart';
import '../../data/repositories/organization_repository_impl.dart';

class GetUserOrganizationsUseCase {
  final OrganizationRepository repository;

  GetUserOrganizationsUseCase(this.repository);

  Future<List<OrganizationData>> call() {
    return repository.getUserOrganizations();
  }
}