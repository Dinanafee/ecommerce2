import 'package:ecommerce2/authentication/data/models/user_model.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositeries {
 static late  final  SharedPreferences  sp ;

  static init ()async{
     sp = await SharedPreferences.getInstance();
  }
  
  static saveUserData(UserModel userData){
   sp.setString('userName', userData.user_name);
   sp.setString('email', userData.email);
   sp.setString('phone', userData.phone);
  }

 static bool checkData (UserModel userData){
  String? emailData= sp.getString('email');
  if(emailData==userData.email){
    return true;
  }else{
    return false;
  }

 }
}