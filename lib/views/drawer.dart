import 'package:bille/auth/login.dart';
import 'package:bille/utils/ovalClipper.dart';
import 'package:bille/views/home.dart';
import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  final Color primary = Color(0xFFEEEEEE);
  final Color active = Color(0xFF0F233D);
  @override
  Widget build(BuildContext context) {
    return _buildDrawer(context);
  }

  _buildDrawer(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: EdgeInsets.only(left: 16.0, right: 40, top: height * 0.1),
          decoration: BoxDecoration(
              color: primary, boxShadow: [BoxShadow(color: Colors.black45)]),
          width: width * 0.4,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/expense.jpg'),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Dr. Erika Costell",
                    style: TextStyle(color: active, fontSize: 18.0),
                  ),
                  Text(
                    "mail@erika.com",
                    style: TextStyle(color: active, fontSize: 16.0),
                  ),
                  SizedBox(height: 30.0),
                  _buildRow(Icons.home, "Home", HomePage(), context),
                  _buildDivider(),
                  _buildRow(
                      Icons.person_pin, "Your Profile", HomePage(), context),
                  _buildDivider(),
                  _buildRow(Icons.settings, "Settings", HomePage(), context),
                  _buildDivider(),
                  _buildRow(Icons.email, "Contact Us", HomePage(), context),
                  _buildDivider(),
                  _buildRow(Icons.info_outline, "Help", HomePage(), context),
                  _buildDivider(),
                  _buildRow(Icons.power_settings_new_rounded, "Log Out",
                      LoginPage(), context),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: active,
    );
  }

  Widget _buildRow(
    IconData icon,
    String title,
    Widget route,
    BuildContext context,
  ) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return FlatButton(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => route,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(children: [
          Icon(
            icon,
            color: active,
          ),
          SizedBox(width: 10.0),
          Text(
            title,
            style: tStyle,
          ),
        ]),
      ),
    );
  }
}
