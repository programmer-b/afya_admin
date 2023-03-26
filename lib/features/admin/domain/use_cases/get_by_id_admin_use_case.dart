import 'package:afya_admin/features/admin/domain/entities/admin.dart';
import 'package:afya_admin/features/admin/domain/repositories/admin_repository_base.dart';
import 'package:afya_admin/core/use_case/use_case_base.dart';
import 'package:dartz/dartz.dart';
import 'package:afya_admin/core/failures/failure.dart';

class GetByIdAdminUseCase extends UseCaseBase<Admin, int> {
   final AdminRepositoryBase repository;
   
   GetByIdAdminUseCase(this.repository);
   
   @override
   Future<Either<Failure, Admin>> call(int id) async {
       return await repository.getById(id);
   }
}
