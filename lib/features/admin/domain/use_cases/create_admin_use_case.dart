import 'package:afya_admin/features/admin/domain/entities/admin.dart';
import 'package:afya_admin/features/admin/domain/repositories/admin_repository_base.dart';
import 'package:afya_admin/core/use_case/use_case_base.dart';
import 'package:dartz/dartz.dart';
import 'package:afya_admin/core/failures/failure.dart';

class CreateAdminUseCase extends UseCaseBase<Admin, Admin> {
   final AdminRepositoryBase repository;
   
   CreateAdminUseCase(this.repository);
   
   @override
   Future<Either<Failure, Admin>> call(Admin params) async {
       return await repository.create(params);
   }
}
