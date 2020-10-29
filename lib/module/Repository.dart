import 'dart:convert';

import 'package:finance/classes/class.dart';
import 'package:finance/module/functions.dart';

class UserRepository{
  Future<User> authenticate(String mobile, String pass) async{
    Map<String, dynamic> _data = await postToServer(api: 'User/Authenticate', body: jsonEncode({"mobile": mobile, "pass": generateMd5(pass)}));
    if (_data['msg'] == "Success")
      return User.fromJson(_data['body']);
    throw Exception(_data['msg']);
  }

  Future<User> verify(String token) async{
    Map<String, dynamic> _data = await postToServer(api: 'User/Verify', body: jsonEncode({"token": token}));
    if (_data['msg'] == "Success")
      return User.fromJson(_data['body']);
    throw Exception(_data['msg']);
  }

  Future<bool> register(Map<String, dynamic> data) async{
    Map<String, dynamic> _data = await postToServer(
      api: 'User/Register', 
      body: jsonEncode(
        {
          "cmpname": data['cmpname'],
          "ceo": data['ceo'],
          "jobtitle": data['jobtitle'],
          "tel": data['tel'],
          "address": data['address'],
          "family": data['family'],
          "semat": data['semat'],
          "mobile": data['mobile'],
          "email": data['email'],
          "pass": generateMd5(data['pass']),
        }
      )
    );
    if (_data['msg'] == "Success")
      return true;
    throw Exception(_data['msg']);
  }

  // Future<int> save(Bank bank) async{
  //    Map<String, dynamic> _data = await putToServer(api: 'Bank', header: {'Content-Type': 'application/json'}, 
  //     body: jsonEncode(bank.toJson())
  //   );
  //   if (_data['msg'] == "Success")
  //     return _data['body']['id'];
  //   throw Exception(_data['msg']);
  // }
 
  // Future<bool> delete(Bank bank) async{
  //    Map<String, dynamic> _data = await delToServer(api: 'Bank', 
  //     header: {
  //      'Content-Type': 'application/json',
  //      'token': bank.token,
  //      'id': bank.id.toString()
  //     }, 
  //   );
  //   if (_data['msg'] == "Success")
  //     return true;
  //   throw Exception(_data['msg']);
  // }
}
