// import 'package:flutter/material.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:privatespace/authentication/navigateauthscreen.dart';
// import 'package:privatespace/variables.dart';
//
// class IntroAuthScreen extends StatefulWidget {
//   @override
//   _IntroAuthScreenState createState() => _IntroAuthScreenState();
// }
//
// class _IntroAuthScreenState extends State<IntroAuthScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return IntroductionScreen(
//       pages: [
//         PageViewModel(
//           title: "Welcome",
//           body: "Welcome to your Private Space App",
//           image: Center(
//             child: Image.asset('images/private_space.png',height: 175,),
//           ),
//           decoration: PageDecoration(
//             bodyTextStyle: myStyle(20,Colors.black),
//             titleTextStyle: myStyle(20,Colors.black),
//           ),
//
//
//         ),
//         PageViewModel(
//           title: "What More ?",
//           body: "Nobody can Infringe into your Private Space",
//           image: Center(
//             child: Image.asset('images/private_space.png',height: 175,),
//           ),
//           decoration: PageDecoration(
//             bodyTextStyle: myStyle(20,Colors.black),
//             titleTextStyle: myStyle(20,Colors.black),
//           ),
//
//
//         ),
//         PageViewModel(
//           title: "Truly",
//           body: "You deserve this app",
//           image: Center(
//             child: Image.asset('images/private_space.png',height: 175,),
//           ),
//           decoration: PageDecoration(
//             bodyTextStyle: myStyle(20,Colors.black),
//             titleTextStyle: myStyle(20,Colors.black),
//           ),
//
//
//         ),
//
//       ],
//       onDone:  (){
//        Navigator.push(context, MaterialPageRoute(builder: (context) => NavigateAuthScreen()));
//       }
//       ,
//       onSkip: (){},
//       showSkipButton: true,
//         skip: const Icon(Icons.skip_next,size: 45,),
//       next: const Icon(Icons.arrow_forward_ios,size: 45),
//       done: Text("Done",style: myStyle(20,Colors.black),),
//     );
//   }
// }
