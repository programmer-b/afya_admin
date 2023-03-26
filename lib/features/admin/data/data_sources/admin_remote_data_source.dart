import 'package:afya_admin/features/admin/domain/entities/admin.dart';
import 'package:afya_admin/core/services/admin_base.dart';

abstract class AdminRemoteDataSourceBase {
   final AdminBase http;
       
   AdminRemoteDataSourceBase(this.http);
       
   Future<List<Admin>> getAll();
       
   Future<Admin> getById(int id);
       
   Future<Admin> create(Admin admin);
       
   Future<Admin> update(Admin admin);
       
   Future<void> delete(int id);
       
   Future<void> deleteAll();
}

class AdminRemoteDataSource extends AdminRemoteDataSourceBase {
    AdminRemoteDataSource(super.http);
       
    @override
    Future<List<Admin>> getAll() async {
       // TODO implements
       throw UnimplementedError();
    }
    
    @override
    Future<Admin> getById(int id) async {
       // TODO implements
       throw UnimplementedError();
    }
    
    @override
    Future<Admin> create(Admin admin) async {
       // TODO implements
       throw UnimplementedError();
    }
    
    @override
    Future<Admin> update(Admin admin) async {
        // TODO implements
       throw UnimplementedError();
    }
    
    @override
    Future<void> delete(int id) async {
        // TODO implements
       throw UnimplementedError();
    }
    
    @override
    Future<void> deleteAll() async {
        // TODO implements
       throw UnimplementedError();
    }
 

}