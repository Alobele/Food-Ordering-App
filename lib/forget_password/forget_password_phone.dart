// import 'package:flutter/material.dart';
// import 'package:project_it/code_otp/code_otp_phone.dart';

// class ForgetPasswordPhoneScreen extends StatelessWidget {
//   const ForgetPasswordPhoneScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Center(
//             child:  Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 300.0,),
//                 Text("Forget Password", style: TextStyle(color: Colors.brown[900], fontSize: 20, fontWeight: FontWeight.bold),),
//                 const SizedBox(height: 2,),
//                 const Text("Enter your registered Phone Number to reset password",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black, fontSize:12,fontWeight: FontWeight.w100 ),),
//                 const SizedBox(height: 10.0,),
//                 Form(child: Column(
//                   children: [
//                     Padding(
//                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                       child: TextFormField(
//                         decoration: const InputDecoration(
//                           label: Text("Phone Number"),
//                           labelStyle: TextStyle(color: Colors.black),
//                           hintText: "Phone Number",
//                           prefixIcon: Icon(Icons.numbers,
//                           color: Colors.black,),
//                           border: OutlineInputBorder(),
//                           focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.black))
//                         ) ,
//                       ),
//                     ),
//                     const SizedBox(height: 20.0,),
//                     Padding(
//                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                       child: SizedBox(
//                         width: double.infinity,
//                         child: ElevatedButton(
//                            style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),
//                           onPressed: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=> const CodeOtp()),);
//                           },
//                          child: const Text("Next"),),
//                       ),
//                     ),
//                   ],
//                 ))
        
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }