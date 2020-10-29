import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Login/Login.dart';
import '../classes/class.dart';
import '../forms/Asnad/Asnad.dart';

int menuitem = 1;
class Dashboard extends StatefulWidget {
  const Dashboard({Key key, @required this.user}) : super(key: key);

  final User user;

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('حسابداری رایگان'),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            Card(
              child: Container(
                padding: EdgeInsets.all(15),
                width: 175,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 65,
                      backgroundImage: NetworkImage('https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg'),
                    ),
                    SizedBox(height: 10.0),
                    Text('${widget.user.family} خوش آمدید', textAlign: TextAlign.center),
                    SizedBox(height: 50.0),
                    ListTile(
                      title: Text('اسناد حسابداری'),
                      selected: menuitem==1,
                      onTap: (){setState(() {menuitem=1;});},
                    ),
                    ListTile(
                      title: Text('آنالیز حساب'),
                      selected: menuitem==2,
                      onTap: (){setState(() {menuitem=2;});},
                    ),
                    Spacer(),
                    ListTile(
                      title: Text('کدینگ حسابداری'),
                      selected: menuitem==3,
                      onTap: (){setState(() {menuitem=3;});},
                    ),
                    Spacer(),
                    ListTile(
                      title: Text('خروج از سیستم'),
                      onTap: () async{
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        await prefs.remove('token');
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      hoverColor: Colors.red.withOpacity(0.25),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.0),
            menuitem == 1
              ? Expanded(child: Asnad(user: widget.user))
              : Text('hi')
          ],
        ),
      ),
    );
  }
}