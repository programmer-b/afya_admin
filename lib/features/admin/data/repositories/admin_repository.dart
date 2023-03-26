import 'package:afya_admin/features/admin/domain/entities/admin.dart';
import 'package:afya_admin/core/failures/failure.dart';
import 'package:afya_admin/features/admin/data/data_sources/admin_remote_data_source.dart';
import 'package:afya_admin/features/admin/domain/repositories/admin_repository_base.dart';
import 'package:dartz/dartz.dart';

class AdminRepository extends AdminRepositoryBase {
   AdminRepository(super.remote);
   
   @override
   Future<Either<Failure,List<Admin>>> getAll() async {
       try {
           return Right(await remote.getAll());
       } catch (e) {
           return Left(UnhandledFailure(message: e.toString()));
       }
   }
   
   @override
   Future<Either<Failure,Admin>> getById(int id) async {
       try {
           return Right(await remote.getById(id));
       } catch (e) {
           return Left(UnhandledFailure(message: e.toString()));
       }
    }
    
   @override
   Future<Either<Failure,Admin>> create(Admin admin) async {
       try {
           return Right(await remote.create(admin));
       } catch (e) {
           return Left(UnhandledFailure(message: e.toString()));
       }
    }
    
   @override
   Future<Either<Failure,Admin>> update(Admin admin) async {
       try {
           return Right(await remote.update(admin));
       } catch (e) {
            return Left(UnhandledFailure(message: e.toString()));
       }
   }
   
   @override
   Future<Either<Failure,void>> delete(int id) async {
       try {
           return Right(await remote.delete(id));
       } catch (e) {
           return Left(UnhandledFailure(message: e.toString()));
       }
   }
   
   @override
   Future<Either<Failure,void>> deleteAll() async {
       try {
           return Right(await remote.deleteAll());
       } catch (e) {
           return Left(UnhandledFailure(message: e.toString()));
       }
    }
    
    
    
}
