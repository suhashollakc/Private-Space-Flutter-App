// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
// import 'package:privatespace/authentication/loginscreen.dart';
// import 'package:privatespace/variables.dart';
// class RegisterScreen extends StatefulWidget {
//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }
//
// class _RegisterScreenState extends State<RegisterScreen> {
//   TextEditingController emailcontroller = TextEditingController();
//   TextEditingController passwordcontroller = TextEditingController();
//   TextEditingController usernamecontroller = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black54,
//
//       body: Stack(
//         children: [
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height/2,
//             decoration: BoxDecoration(
//               // gradient: LinearGradient(
//               //   colors: GradientColors.black
//               // ),
//             ),
//             child: Image.asset('images/private_space.png',height: 100,),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height / 1.6,
//               margin: EdgeInsets.only(left: 30, right: 30),
//               decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black54.withOpacity(0.5),
//                       offset: const Offset(0, 3),
//                       spreadRadius: 5,
//                       blurRadius: 5,
//                     )
//                   ],
//                   color: Colors.grey,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                     topRight: Radius.circular(20),
//                   )
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: MediaQuery.of(context).size.width / 1.7,
//                     child: TextField(
//                       style: myStyle(18, Colors.black) ,
//                       keyboardType: TextInputType.emailAddress,
//                       controller: usernamecontroller,
//                       decoration: InputDecoration(
//                         hintText: "User Name",
//                         prefixIcon: Icon(Icons.person),
//                         hintStyle:  myStyle(20,Colors.black54,FontWeight.w700),
//
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 50,),
//                   Container(
//                     width: MediaQuery.of(context).size.width / 1.7,
//                     child: TextField(
//                       style: myStyle(18, Colors.black) ,
//                       controller: emailcontroller,
//                       keyboardType: TextInputType.emailAddress,
//                       decoration: InputDecoration(
//                         hintText: "Email Address",
//                         prefixIcon: Icon(Icons.email),
//                         hintStyle:  myStyle(20,Colors.black54,FontWeight.w700),
//
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 50,),
//                   Container(
//                     width: MediaQuery.of(context).size.width / 1.7,
//                     child: TextField(
//                       style: myStyle(18, Colors.black) ,
//                       controller: passwordcontroller,
//                       keyboardType: TextInputType.emailAddress,
//                       decoration: InputDecoration(
//                         hintText: "Password",
//                         prefixIcon: Icon(Icons.lock),
//                         hintStyle:  myStyle(20,Colors.black54,FontWeight.w700),
//
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 40,),
//                   InkWell(
//                     onTap: () {
//                       try{
//     FirebaseAuth.instance.createUserWithEmailAndPassword(
//     email: emailcontroller.text ,
//     password: passwordcontroller.text).
//     then((signedUser) => usercollection.doc(signedUser.user.uid).set({
//     'username': usernamecontroller.text,
//     'email': emailcontroller.text,
//     'password': passwordcontroller.text,
//     'uid': signedUser.user.uid,
//     })
//     );
//     Navigator.pop(context);
//                       } catch (e){
//                         print(e);
//                         var snackbar = SnackBar(content: Text(e.toString(),style: myStyle(20),));
//                         ScaffoldMessenger.of(context).showSnackBar(snackbar);
//                       }
//                     },
//                     child: Container(
//                       width: MediaQuery.of(context).size.width / 2,
//                       height: 45,
//                       decoration: BoxDecoration(
//                           gradient: LinearGradient(colors: GradientColors.white),
//                           borderRadius: BorderRadius.circular(20)
//                       ),
//                       child: Center(
//                         child: Text("REGISTER",style: myStyle(30, Colors.black),),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
