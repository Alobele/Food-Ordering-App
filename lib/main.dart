// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:project_it/Screens/home/homepage.dart';
import 'package:project_it/welcome.dart';
// import 'package:project_it/login.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){

    await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyDM1zlb3TslzIDLh6biZsmjnICbVDem-l0", appId: "1:385281589173:web:adfe13aec7e652eef1e3fc", messagingSenderId: "385281589173", projectId: "foodapp-f9e26"));
  }
  await Firebase.initializeApp();
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Patrisha's Cusine",
      home: WelcomeScreen()
    );
        }
      }

      
      
      
      
      
      
      