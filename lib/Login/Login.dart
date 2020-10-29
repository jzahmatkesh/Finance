import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../module/Widgets.dart';
import '../module/consts.dart';
import 'LoginBloc.dart';

int _status = 1;
var _userBloc;

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    if (_userBloc == null)
      _userBloc = LoginBloc(context);
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: _status == 1 ? pnLogin() : pnRegister()
        ),
      ),
    );
  }

  Widget pnLogin(){
    Map<String, dynamic> _data = {'mobile': '', 'pass': ''};
    return Container(
      width: screenWidth(context) * 0.35,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FormHeader(title: 'حسابداری رایگان', btnLeft: MyIconButton(type: ButtonType.none),),
          SizedBox(height: 25.0,),
          Container(width: 300, child: GridTextField(hint: 'شماره همراه', onChange: (val) => _data['mobile']=val)),
          SizedBox(height: 10.0,),
          Container(width: 300, child: GridTextField(hint: 'رمز عبور', onChange: (val) => _data['pass']=val, passfield: true,)),
          SizedBox(height: 25.0,),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(width: 150, height: 75, child: MyOutlineButton(title: 'ورود', color: Colors.green, hovercolor: Colors.greenAccent, icon: CupertinoIcons.floppy_disk, onPressed: () => _userBloc.authenticate(context,_data['mobile'], _data['pass']))),
                SizedBox(width: 10.0,),
                Container(width: 150, height: 75, child: MyOutlineButton(title: 'ثبت نام', color: Colors.blue, hovercolor: Colors.blueAccent, icon: CupertinoIcons.doc_plaintext, onPressed: () => setState((){_status=2;}))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget pnRegister(){
    Map<String, dynamic> _data = {'cmpname': '', 'jobtitle': '', 'ceo': '', 'tel': '', 'address': '', 'family': '', 'semat': '', 'mobile': '', 'email': '', 'pass': '', 'pass2': ''};
    return Container(
      width: screenWidth(context) * 0.55,
      // height: screenHeight(context) * 0.65,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FormHeader(title: 'ثبت نام حسابداری رایگان', btnLeft: MyIconButton(type: ButtonType.none)),
          SizedBox(height: 25,),
          Row(
            children: [
              Expanded(child: GridTextField(hint: 'نام شرکت', onChange: (val) => _data['cmpname']=val)),
              Expanded(child: GridTextField(hint: 'نوع فعالیت', onChange: (val) => _data['jobtitle']=val)),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: [
              Expanded(child: GridTextField(hint: 'مدیرعامل', onChange: (val) => _data['ceo']=val)),
              Expanded(child: GridTextField(hint: 'تلفن تماس', onChange: (val) => _data['tel']=val)),
            ],
          ),
          SizedBox(height: 10.0,),
          GridTextField(hint: 'آدرس', onChange: (val) => _data['address']=val),
          SizedBox(height: 12.5,),
          Row(
            children: [
              Container(color: Colors.grey[200], height: 1, width: 25.0,),
              SizedBox(width: 10.0,),
              Text('مشخصات کاربر'),
              SizedBox(width: 10.0,),
              Expanded(child: Container(color: Colors.grey[200], height: 1)),
            ],
          ),
          SizedBox(height: 12.5,),
          Row(
            children: [
              Expanded(child: GridTextField(hint: 'نام و نام خانوادگی کاربر', onChange: (val) => _data['family']=val)),
              Expanded(child: GridTextField(hint: 'سمت', onChange: (val) => _data['semat']=val)),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: [
              Expanded(child: GridTextField(hint: 'شماره همراه', onChange: (val) => _data['mobile']=val)),
              Expanded(child: GridTextField(hint: 'پست الکترونیک', onChange: (val) => _data['email']=val)),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            children: [
              Expanded(child: GridTextField(hint: 'رمز عبور', onChange: (val) => _data['pass']=val)),
              Expanded(child: GridTextField(hint: 'تکرار رمز عبور', onChange: (val) => _data['pass2']=val)),
            ],
          ),
          SizedBox(height: 25.0,),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(width: 200, height: 75, child: MyOutlineButton(title: 'ثبت نام', color: Colors.green, hovercolor: Colors.greenAccent, icon: CupertinoIcons.floppy_disk, onPressed: ()=>_userBloc.register(context, _data))),
                SizedBox(width: 10.0,),
                Container(width: 200, height: 75, child: MyOutlineButton(title: 'انصراف', color: Colors.deepOrange, hovercolor: Colors.deepOrangeAccent, icon: CupertinoIcons.return_icon, onPressed: () => setState((){_status=1;}))),
              ],
            ),
          )
       ],
      ),
    );
  }

}