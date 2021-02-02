import 'package:flutter/material.dart';
import 'package:Profile/side_drawer.dart';
import 'package:Profile/pages/components/dashboard.dart';
import 'package:Profile/pages/components/profile.dart';
import 'package:Profile/pages/components/settings.dart';
import 'package:Profile/pages/components/About.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final imageList = [
    'https://scontent.fbkk12-4.fna.fbcdn.net/v/t1.0-9/119747892_3337566083026354_4039157621581025556_o.jpg?_nc_cat=103&ccb=2&_nc_sid=174925&_nc_eui2=AeFmUp8DTeE1dR5qtkd1lBUIwKTVxzJqRcDApNXHMmpFwCDI_llpIewBOUgaIB_F5JPtKp8h6ZxeR604N0wZzlDA&_nc_ohc=r0nKgn93QpwAX-xK4rS&_nc_ht=scontent.fbkk12-4.fna&oh=d9052d913f8b3963435721412dbec69a&oe=603D3D4E',
    'https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.0-9/90089041_2818590761590558_3321236070409961472_o.jpg?_nc_cat=111&ccb=2&_nc_sid=174925&_nc_eui2=AeEi0OgdnylNmQRKgcoZ0xQuNSjyfVi4Kfs1KPJ9WLgp-8r4f_mnJmBIw72c3EYV6RLez3_yZReRGY0l28Za0xpZ&_nc_ohc=gp3PmJAEiTUAX_pM8nZ&_nc_ht=scontent.fbkk13-2.fna&oh=a39db182cf61b83421514903bef091c3&oe=603CFA9F',
    'https://scontent.fbkk12-1.fna.fbcdn.net/v/t1.0-9/80331192_2637161616400141_5002984339688914944_n.jpg?_nc_cat=101&ccb=2&_nc_sid=174925&_nc_eui2=AeHm_vVxcuIy_LM_FN-hQaRGEDlLZAFOnMEQOUtkAU6cwdiwlt7-M0xWpDgd-i1XocJAlw3c-h0yJHfBSmMhJbEv&_nc_ohc=DUH1ELVSRpMAX-gK5WN&_nc_ht=scontent.fbkk12-1.fna&oh=6d4f97aed67015307c99c61ab13b8372&oe=603AC6E4',
    'https://scontent.fbkk12-1.fna.fbcdn.net/v/t1.0-9/126848941_3533547033428257_7363070049036819395_o.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeGNKMcNwHs0jQlOf76myVb3Z7g7rk6N4ppnuDuuTo3imtCLHISY9b2tt3p4tyW6R6NPy-G5RrruHgFV8nSZVQN1&_nc_ohc=AAL1yLYltx4AX-Sn532&_nc_ht=scontent.fbkk12-1.fna&oh=a411ae41cf375a0e9eaabd7a795eb4cf&oe=603A9118',
  ];

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Dashboard(),
    About(),
    Profile(),
    Settings(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard(); //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าแรก'),
        backgroundColor: Colors.red,
      ),
      drawer: SideDrawer(),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Swiper(
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return Image.network(
                    imageList[index],
                    fit: BoxFit.contain,
                  );
                },
                control: SwiperControl(),
                autoplay: true,
              ),
            ),
            Container(
                alignment: Alignment.center,
                child: Text(
                  'Patiphan Namwech',
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0),
                )),
          ],
        ),
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
