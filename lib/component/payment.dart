import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:project_it/component/payment_sucess.dart';
// import 'package:flutter_paystack/flutter_paystack.dart';
// import 'package:project_it/component/payment_sucess.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
    final _formKey = GlobalKey<FormState>();
  final  TextEditingController amountController =TextEditingController();
final  TextEditingController emailController = TextEditingController();
String publicKey = 'pk_test_16a3fe057298627e4b4c990db1687b1f9d7e4302';
final plugin = PaystackPlugin();
String message ="";

@override
  void initState() {
    super.initState();
    plugin.initialize(publicKey: publicKey);
  }
  Future<void> makePayment() async {
int price = int.parse(amountController.text)*100;
Charge charge = Charge()
..amount=price
..reference= "ref_${DateTime.now()}"
..email = emailController.text
..currency="Naira";

CheckoutResponse response = await plugin.checkout(
  context,
  method: CheckoutMethod.card, 
  charge: charge);


   if (response.status == true){
    message = "Payment was Sucessful. Ref: ${response.reference}";
    if (mounted){}
    // ignore: use_build_context_synchronously
    Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context)=>PaymentSuccess(message:message)),
      ModalRoute.withName('/'));
      }
      else{
        // ignore: avoid_print
        print(response.message);
      }
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: const Text("Payment Page"),
  backgroundColor: Colors.red[900],
),
body: SafeArea(
  child:   SingleChildScrollView(
  
    child:   Center(
  
    
  
      child:   Column(
  
    
  
      mainAxisAlignment: MainAxisAlignment.center,
  
    
  
        children: [
  
    const SizedBox(height: 50),
                    const Icon(Icons.money_sharp, size: 100,),
  
      const SizedBox(height: 30),
  
    
  
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
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            controller: amountController,
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            autovalidateMode: AutovalidateMode.onUserInteraction,
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            decoration: const InputDecoration(
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              prefixIcon: Icon(Icons.money,
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              color: Colors.black,),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              border: OutlineInputBorder(
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              ),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              labelText:"Amount",
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              labelStyle: TextStyle(color: Colors.black),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              hintText: "1000",
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                               focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.black))
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            ),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            validator: (value) {
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              if (value== null || value .isEmpty){
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                                return "Please enter amount";
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
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
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            decoration: const InputDecoration(
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              prefixIcon: Icon(Icons.person,
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              color: Colors.black,),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              border: OutlineInputBorder(),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              labelText: 'Email',
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              labelStyle: TextStyle(color: Colors.black),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              hintText: 'Email',
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                               focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.black))
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            ),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            validator: (value) {
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                             if(value == null || value.isEmpty ){
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              return 'Please enter your email';
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                             } 
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                             return null;
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            },
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                          ),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                      ),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                        Padding(
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                           padding: const EdgeInsets.symmetric(horizontal: 25.0),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                          child: SizedBox(
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            width: double.infinity,
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            child: ElevatedButton(
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              onPressed: (){
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              // if (_formKey.currentState!.validate()) {
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                                // navigate to the next page
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              //  if(emailController.text== emailController&& 
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              //  passwordController.text== passwordController) {
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                               
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                               makePayment();
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              //  }else{
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              //   ScaffoldMessenger.of (context).showSnackBar(const SnackBar(content: Text('Please  fill input')),);}
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              // }else{
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              //   ScaffoldMessenger.of (context).showSnackBar(const SnackBar(content: Text('Please  fill input')),);
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                              // }
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            } , child: const Text('Pay',)),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                            
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                          ),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
                                        ),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
             ] ),
  
    
  
      
  
    
  
          
  
    
  
      
  
    
  
            ),),
  
    
  
      
  
    
  
        ],
  
    
  
      
  
    
  
      ),
  
    
  
    ),
  
  ),
),
    );
  }
}