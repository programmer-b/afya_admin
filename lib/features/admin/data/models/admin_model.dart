import 'package:afya_admin/features/admin/domain/entities/admin.dart';

class AdminModel extends Admin {
    AdminModel({
       required id,
       required name,
    }) : super(id: id, name: name);
    
    factory AdminModel.fromJson(Map<String, dynamic> json) {
       return AdminModel(
           id: json['id'],
           name: json['name'],
       );
    }
    
    Map<String, dynamic> toJson() {
       return { 
           'id': id,
           'name': name,
       };
    }
}
