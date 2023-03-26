import 'package:afya_admin/features/admin/domain/entities/admin.dart';
import 'package:afya_admin/features/admin/domain/repositories/admin_repository_base.dart';
import 'package:afya_admin/core/use_case/use_case_base.dart';
import 'package:afya_admin/core/use_case/no_params.dart';
import 'package:dartz/dartz.dart';
import 'package:afya_admin/core/failures/failure.dart';

class GetAllAdminUseCase extends UseCaseBase<List<Admin>, NoParams> {
   final AdminRepositoryBase repository;
   
   GetAllAdminUseCase(this.repository);
   
   @override
   Future<Either<Failure, List<Admin>>> call(NoParams params) async {
       return await repository.getAll();
   }
}
