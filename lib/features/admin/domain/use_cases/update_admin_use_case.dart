import 'package:afya_admin/features/admin/domain/entities/admin.dart';
import 'package:afya_admin/features/admin/domain/repositories/admin_repository_base.dart';
import 'package:afya_admin/core/use_case/use_case_base.dart';
import 'package:dartz/dartz.dart';
import 'package:afya_admin/core/failures/failure.dart';

class UpdateAdminUseCase extends UseCaseBase<Admin, Admin> {
   final AdminRepositoryBase repository;
   
   UpdateAdminUseCase(this.repository);
   
   @override
   Future<Either<Failure, Admin>> call(Admin admin) async {
       return await repository.update(admin);
   }
}
