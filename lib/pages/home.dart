import 'package:flutter/material.dart';
import 'package:Profile/side_drawer.dart';
import 'package:Profile/pages/components/profile.dart';
import 'package:Profile/pages/components/settings.dart';
import 'package:Profile/pages/components/About.dart';
import 'package:Profile/pages/components/dashboard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Dashboard(),
    About(),
    Profile(),
    Settings(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าแรก'),
      ),
      drawer: SideDrawer(),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 95,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Dashboard(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 0
                              ? Colors.red
                              : Colors.purpleAccent,
                        ),
                        Text(
                          'หน้าแรก',
                          style: TextStyle(
                            color: currentTab == 0
                                ? Colors.red
                                : Colors.purpleAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 95,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Profile(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: currentTab == 1
                              ? Colors.blue
                              : Colors.purpleAccent,
                        ),
                        Text(
                          'โปรไฟล์',
                          style: TextStyle(
                            color: currentTab == 1
                                ? Colors.blue
                                : Colors.purpleAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 95,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            About(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.history_edu,
                          color: currentTab == 2
                              ? Colors.green
                              : Colors.purpleAccent,
                        ),
                        Text(
                          'เกี่ยวกับเรา',
                          style: TextStyle(
                            color: currentTab == 2
                                ? Colors.green
                                : Colors.purpleAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 95,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Settings(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.settings,
                          color: currentTab == 3
                              ? Colors.yellow
                              : Colors.purpleAccent,
                        ),
                        Text(
                          'ตั้งค่า',
                          style: TextStyle(
                            color: currentTab == 3
                                ? Colors.yellow
                                : Colors.purpleAccent,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
