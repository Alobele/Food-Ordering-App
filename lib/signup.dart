import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_it/Screens/home/homepage.dart';
// import 'package:project_it/auth.dart';
// import 'package:project_it/login.dart';
import 'package:project_it/model/user_model.dart';

// ignore: must_be_immutable
class SignUp extends StatefulWidget {
  

  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  // final FirebaseAuthService _auth =FirebaseAuthService();
   final _formKey = GlobalKey<FormState>();
   

  TextEditingController emailController =TextEditingController();

  TextEditingController fullNameController =TextEditingController();

  TextEditingController phoneNumberController =TextEditingController();

  TextEditingController passwordController = TextEditingController();

@override
void dispose() {
    emailController.dispose();
    fullNameController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.red[900],),
          onPressed: (){
            Navigator.of(context).pop();
          },
          ),
        ),
        body: SingleChildScrollView(child: Container(
          padding: const EdgeInsets.all(10),
          child:  Column(
            children: [
               const Icon(Icons.lock, size: 100,),
                const SizedBox(height: 30),
                   Text(' Foodies ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red[900], ),),       
                  const SizedBox(
                    height: 25,
                  ),

                   Form(
                    key: _formKey,
                    child: Container(
                    padding: const EdgeInsets.symmetric( vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextFormField(
                              controller: fullNameController,
                               keyboardType: TextInputType.name,
                                onSaved: (value) {
                                  fullNameController.text=value!;
                                },
                                textInputAction: TextInputAction.next,
                              
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person_2_outlined,
                                color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                ),
                                labelText:"Full Name",
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: "Full Name",
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.black))
                              ),
                              validator: (value) {
                                if (value== null || value .isEmpty){
                                  return "Please enter your full name";
                                }
                                return null;
                              },
                            ),
                        ),
                        const SizedBox(height: 10.0,),
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
                                prefixIcon: Icon(Icons.email_outlined,
                                color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                ),
                                labelText:"Email",
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: "Email",
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.black))
                              ),
                              validator: (value) {
                                if (value== null || value .isEmpty){
                                  return "Please enter your enail";
                                }
                                return null;
                              },
                            ),
                        ),
                        const SizedBox(height: 10.0,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextFormField(
                              controller: phoneNumberController,
                               keyboardType: TextInputType.number,
                                onSaved: (value) {
                                  phoneNumberController.text=value!;
                                },
                                textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.numbers,
                                color: Colors.black,
                                ),
                                border: OutlineInputBorder(
                                ),
                                labelText:"Phone Number",
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: "Phone Number",
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.black))
                              ),
                              validator: (value) {
                                if (value== null || value .isEmpty){
                                  return "Please enter your phone number";
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
                                obscureText: true,
                                onSaved: (value) {
                                  passwordController.text=value!;
                                },
                              decoration: const InputDecoration(
                                
                                prefixIcon: Icon(Icons.fingerprint,
                                color: Colors.black,),
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: 'Enter Password',
                                 focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.black))
                              ),
                              validator: (value) {
                               if(value == null || value.isEmpty ){
                                return 'Please enter your password';
                               } 
                               return null;
                              },
                            ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: SizedBox(
                            
                             
                                width: double.infinity,
                                child: ElevatedButton
                                (
                                   style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),
                                   onPressed: ()  {
                                    signUp(emailController.text, passwordController.text);
                                   }, child: const Text('SIGNUP')),
                              ),
                          ),
                             
            ],
          ),
        ),
        ),
            ]
        ),
        ),
    ),
    ),
    );
  }
   Future<void>signUp(String email, String password)async{
    if(_formKey.currentState!.validate()){
      await _auth.createUserWithEmailAndPassword(email: email, password: password)
     .then((value) => {
      postDetailsToFirestore(),
     // ignore: body_might_complete_normally_catch_error
     }).catchError((e){
      Fluttertoast.showToast(msg: e!.message);
     });
    }
  }
  postDetailsToFirestore()async{
  // calling out firestore
  // calling out usermodel
  // sending these values

FirebaseFirestore firebaseFirestore =FirebaseFirestore.instance;
User? user = _auth.currentUser;

UserModel userModel = UserModel();

//writing all the values
userModel.email= user!.email;
userModel.uid= user.uid;
userModel.fullName = fullNameController.text;



await firebaseFirestore
.collection("users")
.doc(user.uid)
.set(userModel.toMap());
Fluttertoast.showToast(msg: "Account created sucessfully");

// ignore: use_build_context_synchronously
Navigator.pushAndRemoveUntil(context,
 MaterialPageRoute(builder: (context)=>HomePage()), (route) => false);

  }
}