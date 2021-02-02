import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:Profile/pages/profile.dart';
import 'package:Profile/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:Profile/side_drawer.dart';

import 'About.dart';
import 'dashboard.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  final imageList = [
    'https://scontent.fbkk12-4.fna.fbcdn.net/v/t1.0-9/119747892_3337566083026354_4039157621581025556_o.jpg?_nc_cat=103&ccb=2&_nc_sid=174925&_nc_eui2=AeFmUp8DTeE1dR5qtkd1lBUIwKTVxzJqRcDApNXHMmpFwCDI_llpIewBOUgaIB_F5JPtKp8h6ZxeR604N0wZzlDA&_nc_ohc=r0nKgn93QpwAX-xK4rS&_nc_ht=scontent.fbkk12-4.fna&oh=d9052d913f8b3963435721412dbec69a&oe=603D3D4E',
    'https://scontent.fbkk13-2.fna.fbcdn.net/v/t1.0-9/90089041_2818590761590558_3321236070409961472_o.jpg?_nc_cat=111&ccb=2&_nc_sid=174925&_nc_eui2=AeEi0OgdnylNmQRKgcoZ0xQuNSjyfVi4Kfs1KPJ9WLgp-8r4f_mnJmBIw72c3EYV6RLez3_yZReRGY0l28Za0xpZ&_nc_ohc=gp3PmJAEiTUAX_pM8nZ&_nc_ht=scontent.fbkk13-2.fna&oh=a39db182cf61b83421514903bef091c3&oe=603CFA9F',
    'https://scontent.fbkk12-1.fna.fbcdn.net/v/t1.0-9/80331192_2637161616400141_5002984339688914944_n.jpg?_nc_cat=101&ccb=2&_nc_sid=174925&_nc_eui2=AeHm_vVxcuIy_LM_FN-hQaRGEDlLZAFOnMEQOUtkAU6cwdiwlt7-M0xWpDgd-i1XocJAlw3c-h0yJHfBSmMhJbEv&_nc_ohc=DUH1ELVSRpMAX-gK5WN&_nc_ht=scontent.fbkk12-1.fna&oh=6d4f97aed67015307c99c61ab13b8372&oe=603AC6E4',
    'https://scontent.fbkk12-1.fna.fbcdn.net/v/t1.0-9/126848941_3533547033428257_7363070049036819395_o.jpg?_nc_cat=101&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeGNKMcNwHs0jQlOf76myVb3Z7g7rk6N4ppnuDuuTo3imtCLHISY9b2tt3p4tyW6R6NPy-G5RrruHgFV8nSZVQN1&_nc_ohc=AAL1yLYltx4AX-Sn532&_nc_ht=scontent.fbkk12-1.fna&oh=a411ae41cf375a0e9eaabd7a795eb4cf&oe=603A9118',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('เสรีกัญชา'),
                  subtitle: Text(
                    'กินกับอะไรก็อร่อย',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('สั่งซื้อ'),
                    ),
                  ],
                ),
                Image.asset('assets/01.jpg'),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('กัญชาไทย'),
                  subtitle: Text(
                    'ใช้ดม ใช้ทา ในหลอดเดียวกัน',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('สั่งซื้อ'),
                    ),
                  ],
                ),
                Image.asset('assets/02.jpg'),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('กัญชาไทย'),
                  subtitle: Text(
                    'รวยเพื่อน',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('สั่งซื้อ'),
                    ),
                  ],
                ),
                Image.asset('assets/03.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
