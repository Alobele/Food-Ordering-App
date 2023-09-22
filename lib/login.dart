// import 'dart:ffi';
// import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_it/forget_password/forget_password_mail.dart';
// import 'package:project_it/forget_password/forget_password_phone.dart';
import 'package:project_it/Screens/home/homepage.dart';
import 'package:project_it/signup.dart';
class MyLogInPage extends StatefulWidget {
  const MyLogInPage({super.key});

  @override
  State<MyLogInPage> createState() => _MyLogInPageState();
}

class _MyLogInPageState extends State<MyLogInPage> {
//  final FirebaseAuthService _auth =FirebaseAuthService();
  final _formKey = GlobalKey<FormState>();
  final  TextEditingController emailController =TextEditingController();
final  TextEditingController passwordController = TextEditingController();

final _auth =FirebaseAuth.instance;
@override
void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  
 bool _isVisible = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
               child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    const Icon(Icons.lock, size: 100,),
                    const SizedBox(height: 30),
                    Text(' FOODIES', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red[900], ),),       
                    const SizedBox(
                      height: 25,
                    ),
                  
                    Form(
                      key: _formKey,
                      child: Container(
                      padding: const EdgeInsets.symmetric( vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: TextFormField(
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (value) {
                                  emailController.text=value!;
                                },
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.person_2_outlined,
                                  color: Colors.black,),
                                  border: OutlineInputBorder(
                                  ),
                                  labelText:"Email",
                                  labelStyle: TextStyle(color: Colors.black),
                                  hintText: "Email",
                                   focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.black))
                                ),
                                validator: (value) {
                                  if (value== null || value .isEmpty){
                                    return "Please enter your email";
                                  }
                                  return null;
                                },
                              ),
                          ),
                          const SizedBox(height: 10.0,),
                          Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: TextFormField(
                                controller: passwordController,
                                textInputAction: TextInputAction.done,
                                obscureText: _isVisible ? false : true,
                                onSaved: (value) {
                                  passwordController.text=value!;
                                },
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(onPressed: (
                                     ){
                                     updateStatus();

                                  }, icon:  Icon(_isVisible ? Icons.visibility : Icons.visibility_off
                                  )),
                                  prefixIcon: const Icon(Icons.fingerprint,
                                  color: Colors.black,),
                                  border: const OutlineInputBorder(),
                                  labelText: 'Password',
                                  labelStyle: const TextStyle(color: Colors.black),
                                  hintText: 'Enter Password',
                                   focusedBorder: const OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.black))
                                ),
                                validator: (value) {
                                 if(value == null || value.isEmpty ){
                                  return 'Please enter your password';
                                 } 
                                 return null;
                                },
                              ),
                          ),
                            
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children:[
                                
                                 TextButton(onPressed: (){
                                    showModalBottomSheet(context: context, 
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                    builder: (context)=>Container(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                           Text("Make Selection!",style: TextStyle(color: Colors.brown[900],fontSize: 20,fontWeight: FontWeight.bold),),
                                          const Text("Select one of the options given below to reset your password.",  style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal),),
                                          const SizedBox(
                                            height: 30.0,
                                          ),
                                          GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPasswordMailScreen()),);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(20.0),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10.0),
                                                color: Colors.grey.shade200,
                                              ),
                                              child:  Row(
                                                children: [
                                                  const Icon(Icons.mail_outline_rounded, size: 60.0,),
                                                  const SizedBox(width: 10.0,),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("E-Mail",style: TextStyle(color: Colors.brown[900],fontSize: 18,fontWeight: FontWeight.bold),),
                                                      const Text("Reset via E-Mail Verfication", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w100, fontSize: 12),),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 20.0,),
                                          GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPasswordMailScreen()),);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(20.0),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10.0),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Row(
                                                children: [
                                                  const Icon(Icons.mobile_friendly_rounded, size: 60.0,),
                                                  const SizedBox(width: 10.0,),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Phone Number",style: TextStyle(color: Colors.brown[900],fontSize: 18,fontWeight: FontWeight.bold),),
                                                      const Text("Reset via Phone Verfication", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w100, fontSize: 12),),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ));
                                  }, 
                                  child: const Text('Forget Password', style: TextStyle(color: Colors.black),)),
                                ],
                            )
                            ),
        
                              Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),
                                    
                                    onPressed:(){
                                    signIn(emailController.text, passwordController.text);
                                  }, child: const Text('Login',)),
                                  
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: TextButton(onPressed: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()),); 
                                },
                                 child: Text.rich(
                                  TextSpan(text: 'Don\'t have an Account?',
                                  style: const TextStyle(color: Colors.black, fontSize: 15.0),
                                  children: [
                                    TextSpan(
                                      text: 'Signup',
                                      style: TextStyle(color: Colors.brown[900], fontSize: 15.0)
                                    ),
                                  ]
                                  ),
                                 ),),
                              ),
                        ]
                          ),
                          
                           
                              
                            ),
                            ),
                  ],
                      ),
                        ),
                      
           
               ),
        ),
      
    ); 
  }
  Future<void> signIn(String email, String password)async{
  if(_formKey.currentState!.validate())
  {
     await _auth.signInWithEmailAndPassword(email: email, password: password)
    .then((uid) => {
      Fluttertoast.showToast(msg:"Login Sucessful"),
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage())),

    }).catchError((e)
    // ignore: body_might_complete_normally_catch_error
    {
    Fluttertoast.showToast(msg:e!.message);
    });

  
  }
  }
   void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
}