// import 'package:flutter/material.dart';
//
//
// class VerificationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.arrow_back),
//           highlightColor: Colors.black,
//           color: Colors.black,
//         ),
//         title: Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Image.asset(
//                 'assets/petzu_1.png',
//                 fit: BoxFit.cover,
//                 height: 80,
//                 width: 80,
//               ),
//             ],
//           ),
//         ),
//         toolbarHeight: 88,
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 30.0),
//           child: ListView(children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'Verify with OTP',
//                   style: TextStyle(color: Colors.black, fontSize: 22),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 15),
//                 Text(
//                   'Sent via SMS to 9874561230',
//                   style: TextStyle(
//                     fontSize: 18,
//                     color: Colors.black38,
//                   ),
//                 ),
//                 SizedBox(height: 35),
//                 OTPTextField(
//                   length: 5,
//                   width: MediaQuery.of(context).size.width,
//                   textFieldAlignment: MainAxisAlignment.spaceAround,
//                   fieldWidth: 55,
//                   fieldStyle: FieldStyle.box,
//                   outlineBorderRadius: 15,
//                   style: TextStyle(fontSize: 17),
//                   onChanged: (pin) {
//                     print("Changed: " + pin);
//                   },
//                   onCompleted: (pin) {
//                     print("Completed: " + pin);
//                   },
//                 ),
//                 SizedBox(height: 35),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Trying to Auto-fill OTP ',
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.black38,
//                       ),
//                     ),
//                     Text(
//                       '00:15',
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.black54,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 25),
//                 Row(
//                   children: [
//                     Text(
//                       'Login using ',
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.black54,
//                       ),
//                     ),
//                     Text(
//                       'Password',
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.tealAccent,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 15),
//                 Row(
//                   children: [
//                     Text(
//                       'Having trouble logging in ? ',
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.black54,
//                       ),
//                     ),
//                     Text(
//                       'Get Help',
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.tealAccent,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }
