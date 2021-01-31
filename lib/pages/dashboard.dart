import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.network(
              'https://scontent.fbkk12-1.fna.fbcdn.net/v/t1.0-9/126848941_3533547033428257_7363070049036819395_o.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeGNKMcNwHs0jQlOf76myVb3Z7g7rk6N4ppnuDuuTo3imtCLHISY9b2tt3p4tyW6R6NPy-G5RrruHgFV8nSZVQN1&_nc_ohc=C1iYlx6BgHoAX-eyCts&_nc_ht=scontent.fbkk12-1.fna&oh=fba03e75c4387efc7e56bae7113de192&oe=60369C98',
                // height: 250,
                // width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Container(
                alignment: Alignment.center,
                child: Text(
                  'Patiphan Namwech',
                  style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 22.0),
                )),
          ],
        ),
      ),
    );
  }
}
