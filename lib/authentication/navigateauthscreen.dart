// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
// import 'package:privatespace/authentication/loginscreen.dart';
// import 'package:privatespace/authentication/registerscreen.dart';
// import 'package:privatespace/variables.dart';
//
// class NavigateAuthScreen extends StatefulWidget {
//   @override
//   _NavigateAuthScreenState createState() => _NavigateAuthScreenState();
// }
//
// class _NavigateAuthScreenState extends State<NavigateAuthScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black54,
//
//       body: Stack(
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height/2,
//           decoration: BoxDecoration(
//             // gradient: LinearGradient(
//             //   colors: GradientColors.black
//             // ),
//           ),
//           child: Image.asset('images/private_space.png',height: 100,),
//         ),
//         Align(
//           alignment: Alignment.bottomCenter,
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height / 1.6,
//             margin: EdgeInsets.only(left: 30, right: 30),
//             decoration: BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black54.withOpacity(0.5),
//                   offset: const Offset(0, 3),
//                   spreadRadius: 5,
//                   blurRadius: 5,
//                 )
//               ],
//               color: Colors.grey,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(20),
//                 topRight: Radius.circular(20),
//               )
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 InkWell(
//                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())) ,
//                   child: Container(
//                     width: MediaQuery.of(context).size.width / 2,
//                     height: 45,
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(colors: GradientColors.white),
//                       borderRadius: BorderRadius.circular(20)
//                     ),
// child: Center(
//   child: Text("LOG IN",style: myStyle(30, Colors.black),),
// ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 InkWell(
//                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen())) ,
//                   child: Container(
//                     width: MediaQuery.of(context).size.width / 2,
//                     height: 45,
//                     decoration: BoxDecoration(
//                         gradient: LinearGradient(colors: GradientColors.white),
//                         borderRadius: BorderRadius.circular(20)
//                     ),
//                     child: Center(
//                       child: Text("REGISTER",style: myStyle(30, Colors.black),),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )
//       ],
//       ),
//     );
//   }
// }
