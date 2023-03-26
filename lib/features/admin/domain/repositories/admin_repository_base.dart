import 'package:afya_admin/features/admin/data/data_sources/admin_remote_data_source.dart';
import 'package:afya_admin/features/admin/domain/entities/admin.dart';
import 'package:afya_admin/core/failures/failure.dart';
import 'package:dartz/dartz.dart';

abstract class AdminRepositoryBase {
   final AdminRemoteDataSourceBase remote;
   
   AdminRepositoryBase(this.remote);
   
   Future<Either<Failure, List<Admin>>> getAll();
   
   Future<Either<Failure, Admin>> getById(int id);
   
   Future<Either<Failure, Admin>> create(Admin admin);
   
   Future<Either<Failure, Admin>> update(Admin admin);
   
   Future<Either<Failure, void>> delete(int id);
   
   Future<Either<Failure, void>> deleteAll();
}
