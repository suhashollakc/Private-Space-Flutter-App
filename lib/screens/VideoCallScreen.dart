import 'package:flutter/material.dart';
import 'package:privatespace/res/custom_colors.dart';
import 'package:privatespace/videocall/create_private_space.dart';
import 'package:privatespace/videocall/join_private_space.dart';
import 'package:privatespace/widgets/app_bar_title.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({Key key, @required User user})
      : _user = user,
        super(key: key);

  final User _user;
  @override
  _VideoCallScreenState createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> with SingleTickerProviderStateMixin{
   User _user;
   TabController tabController;
  @override
  void initState() {
    _user = widget._user;
tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

    buildtab(String name){
    return Container(
      width: 150,
        height: 50,
      child: Card(
        child: Center(
          child: Text(name,style: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
            fontWeight: FontWeight.w700
          ),),
        ),
      ),
    );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.firebaseNavy,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.firebaseNavy,
        title: AppBarTitle(),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          tabs: [
            buildtab("Create Private Space"),
            buildtab("Join Private Space"),
          ],
        ),
      ),
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(left: 16.0, top: 16.0),
      //       child: Text(
      //         "Welcome "+ _user.displayName! +"!",
      //         style: TextStyle(
      //           color: CustomColors.firebaseYellow,
      //           fontSize: 18,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: TabBarView(
          controller: tabController,
          children: [

      CreatePrivateSpace(),
            JoinPrivateSpace(),
    ]));
  }
}
