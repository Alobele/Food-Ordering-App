import 'package:flutter/material.dart';
import 'package:project_it/component/payment.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key,  required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.1
          ),
          Image.asset("images/sucess.png",
          // Image.network("https://res.cloudinary.com/iamvictorsam/image/upload/v16171834054/capture_inlcff.png",
          height: MediaQuery.of(context).size.height*0.4,
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.68,),
         Text(message,
         style: const TextStyle(fontSize: 25,
         fontWeight: FontWeight.bold,
         color: Colors.black,
         ) ,),
         const Spacer(),
         SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentPage()));

          }, 
          style: ElevatedButton.styleFrom(foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 5.0,
          ),
          child: const Padding(padding: EdgeInsets.all(15.0),
          child: Text("Back to Payment Screen",
          style: TextStyle(fontSize: 20),),
          ),
          ),
         )
        ],
      ),
      ),
      ),
    );
  }
}