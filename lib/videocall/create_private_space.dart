import 'package:flutter/material.dart';
import 'package:privatespace/res/custom_colors.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

class CreatePrivateSpace extends StatefulWidget {
  @override
  _CreatePrivateSpaceState createState() => _CreatePrivateSpaceState();
}

class _CreatePrivateSpaceState extends State<CreatePrivateSpace> {
  String code = '';

  createCode(){
    setState(() {

      code = Uuid().v1().substring(0,6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Text("Create a Code and share it with your partner",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("CODE: " , style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20.0
              ),
              ),
              Text(
                code,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(height: 25),
          InkWell(
            onTap: () => createCode(),
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 50,
              decoration: BoxDecoration(
                color: CustomColors.firebaseOrange,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child: Text(
                  "Create Code", style: TextStyle(
                  fontSize: 20, color: Colors.white
                ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
