// import 'package:flutter/material.dart';
// import 'package:otp_text_field/otp_text_field.dart';
// class CodeOtp extends StatelessWidget {
//   const CodeOtp({super.key});
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.all(12),
//         child:  Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text("CODE",
//             style: TextStyle(color: Colors.black,
//             fontSize: 80,
//             fontWeight: FontWeight.bold
//             ),
//             ),
//             const Text("Verfication",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20,
//               fontWeight: FontWeight.w200,
//             ),),
//             const SizedBox(height: 40,),
//             const Text("Enter the verification code sent to",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 15,
//               fontWeight: FontWeight.w400,
//             ),),
//             const Text("alobelesam@gmail.com",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 15,
//               fontWeight: FontWeight.w400,
//             ),
//             textAlign: TextAlign.center,),
//             const SizedBox(
//               height: 20.0,
//             ),
//             const OTPTextField(
//             length: 6,
//             keyboardType: TextInputType.number,
            
//             ),
//             const SizedBox(
//               height: 20.0,
//             ),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),
//                 onPressed: (){}, child: const Text("Next",
//                 style: TextStyle(color: Colors.white),)))
//           ],
//         ),
//       ),
//     );
//   }
// }
