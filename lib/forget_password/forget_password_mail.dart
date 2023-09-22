import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_it/login.dart';
// import 'package:project_it/code_otp/code_otp_email.dart';

class ForgetPasswordMailScreen extends StatefulWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  State<ForgetPasswordMailScreen> createState() => _ForgetPasswordMailScreenState();
}

class _ForgetPasswordMailScreenState extends State<ForgetPasswordMailScreen> {
  final emailController = TextEditingController();
  @override
  void dispose(){
    emailController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 300.0,),
                 Text("Forget Password", style: TextStyle(color: Colors.brown[900], fontSize: 20, fontWeight: FontWeight.bold),),
                const SizedBox(height: 2,),
                const Text("Enter your registered E-Mail Address to reset password",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize:12,fontWeight: FontWeight.w100 ),),
                const SizedBox(height: 10.0,),
                Form(child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          label: Text("E-Mail"),
                          labelStyle: TextStyle(color: Colors.black),
                          hintText: "E-Mail",
                          prefixIcon: Icon(Icons.mail_outline_rounded,
                          color: Colors.black,),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.black))
                        ) ,
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton
                       ( style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),
                        onPressed: ()async{
                          await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text.trim())
                          .then((value) => {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyLogInPage()))
                          });
                        },
                         child: const Text("Next"),),
                      ),
                    ),
                  ],
                ))
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}