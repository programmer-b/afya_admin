import 'package:afya_admin/features/admin/domain/repositories/admin_repository_base.dart';
import 'package:afya_admin/core/use_case/use_case_base.dart';
import 'package:dartz/dartz.dart';
import 'package:afya_admin/core/failures/failure.dart';

class DeleteAdminUseCase extends UseCaseBase<void, int> {
   final AdminRepositoryBase repository;
   
   DeleteAdminUseCase(this.repository);
   
   @override
   Future<Either<Failure, void>> call(int params) async {
       return await repository.delete(params);
   }
}
