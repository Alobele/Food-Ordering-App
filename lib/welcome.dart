import 'package:flutter/material.dart';

import 'package:project_it/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("images/boy.png"),
          const SizedBox(
            height: 5,
          ),
          const Text("Order Your Food Now",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
          
          ),
          const Padding(padding: EdgeInsets.all(25),
          child: Text("Order food and get delivery withing a few minutes to your door",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black45,
          ),
          textAlign: TextAlign.center,
        
          ),
          ),
          const SizedBox(height: 80,),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyLogInPage()));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Get Started',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,)
                ],
              ),
            ),
          )
        ],
      ),
      
      );
  }
}