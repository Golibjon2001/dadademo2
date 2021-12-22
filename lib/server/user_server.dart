import 'package:dadademo2/model/user_model.dart';
import 'package:hive/hive.dart';

class HVdb{
  var box=Hive.box("G'oliblon");
  void storUser(User user) async{
    box.put('user', user.toJson());
  }
  User lodUser(){
    var user=User.fromJson(box.get('user'));
    return user;
  }
  void removeUser(){
    box.delete('user');
  }

  //Acount
  void storAccount( Account account) async{
    box.put('account', account.toJson());
  }
  Account lodAccount(){
    var account= Account.fromJson(box.get('account'));
    return account;
  }
  void removeAcount(){
    box.delete('account');
  }
}