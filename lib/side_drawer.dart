import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: Text('pathipan7149@gmail.com'),
                accountName: Text('Mr.Patiphan'),
                otherAccountsPictures: [Icon(Icons.home)],
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fbkk12-1.fna.fbcdn.net/v/t1.0-9/126848941_3533547033428257_7363070049036819395_o.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeGNKMcNwHs0jQlOf76myVb3Z7g7rk6N4ppnuDuuTo3imtCLHISY9b2tt3p4tyW6R6NPy-G5RrruHgFV8nSZVQN1&_nc_ohc=C1iYlx6BgHoAX-eyCts&_nc_ht=scontent.fbkk12-1.fna&oh=fba03e75c4387efc7e56bae7113de192&oe=60369C98'),
                ),
              ),
              ListTile(
                title: Text('หน้าหลัก'),
                leading: Icon(Icons.home),
                onTap: () => Navigator.pushReplacementNamed(
                  context,
                  'dashboard',
                ),
              ),
              ListTile(
                title: Text('โปรไฟล์'),
                leading: Icon(Icons.person),
                onTap: () => Navigator.pushNamed(
                  context,
                  'profile',
                ),
              ),
              ListTile(
                title: Text('เกี่ยวกับ'),
                leading: Icon(Icons.person_pin),
                onTap: () => Navigator.pushNamed(
                  context,
                  'about',
                ),
              ),
              ListTile(
                title: Text('ตั้งค่า'),
                leading: Icon(Icons.settings),
                onTap: () => Navigator.pushNamed(
                  context,
                  'settings',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
