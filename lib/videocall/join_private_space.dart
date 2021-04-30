import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jitsi_meet/feature_flag/feature_flag.dart';
import 'package:jitsi_meet/feature_flag/feature_flag_enum.dart';
import 'package:jitsi_meet/jitsi_meet.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:privatespace/res/custom_colors.dart';


class JoinPrivateSpace extends StatefulWidget {
  @override
  _JoinPrivateSpaceState createState() => _JoinPrivateSpaceState();
}

class _JoinPrivateSpaceState extends State<JoinPrivateSpace> {
  TextEditingController roomcontroller = TextEditingController();
  bool isVideoMuted = false;
  bool isAudioMuted = false;
  joinMeeting() async{
    try {
      FeatureFlag featureFlag = FeatureFlag();
      featureFlag.welcomePageEnabled = false;
      if (Platform.isAndroid) {
        featureFlag.callIntegrationEnabled = false;
      } else if (Platform.isIOS) {
        featureFlag.pipEnabled = false;
      }

      var options = JitsiMeetingOptions()
        ..room = roomcontroller.text
        ..audioMuted = isAudioMuted
        ..videoMuted = isVideoMuted
        ..featureFlag = featureFlag;

      await JitsiMeet.joinMeeting(options);
    } catch (e) {
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24,),
              Text("Private Space CODE",
              style: TextStyle(fontSize: 21.0),),
              SizedBox(height: 20,),
              PinCodeTextField(appContext: context,
                controller: roomcontroller,
                length: 6,
              autoDisposeControllers: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.underline
              ),
              animationDuration: Duration(milliseconds: 300),

              onChanged: (value){},),
              SizedBox(height: 10.0,),
              // TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: "Name "
              //   ),
              // )
              CheckboxListTile(value: isVideoMuted,
                  title: Text("Video Off",style: TextStyle(
                    color: Colors.black,
                    fontSize: 21
                  ),),
                  onChanged: (value){
                setState(() {
                  isVideoMuted = value;
                });
                  }),
              CheckboxListTile(value: isAudioMuted,
                  title: Text("Audio Muted",style: TextStyle(
                      color: Colors.black,
                      fontSize: 21
                  ),),
                  onChanged: (value){
                    setState(() {
                      isAudioMuted = value;
                    });
                  }),
              SizedBox(height: 20,),
              Text("You can also control these in the room !",
              style: TextStyle(
                color: Colors.black,

                fontSize: 18
              ),),
              Divider(height: 48,
              thickness: 2.0,),
              SizedBox(height: 25),
              InkWell(
                onTap: () => joinMeeting(),
                child: Container(
                  width: double.maxFinite,
                  height: 50,
                  decoration: BoxDecoration(
                      color: CustomColors.firebaseOrange,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Text(
                      "Enter Private Space", style: TextStyle(
                        fontSize: 30, color: Colors.white
                    ),
                    ),
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
