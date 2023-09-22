import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_it/component/payment.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_price;
  final product_detail_description;

ProductDetails({
  this.product_detail_name,
  this.product_detail_picture,
  this.product_detail_price,
  this.product_detail_description,
});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios,
          color: Colors.black45,),
        ),
        title:  Text(widget.product_detail_name,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 25,
          ),
        ),
        actions:  [
          Padding(padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.favorite,color: Colors.red[900],
          size: 28,),
          ),
          
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(widget.product_detail_description,
              style: const TextStyle(
                color: Colors.black45,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.red[900],size: 22,),
                const SizedBox(width: 2,),
                const Text("4.7",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                ),)
              ],
            ),
            Padding(padding: const EdgeInsets.all(25),
            child: Image.asset(widget.product_detail_picture),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Text("Calories",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox(height: 8,),
                    Text("120",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
                Container(
                  height: 30,
                  width: 2,
                  color: Colors.black38,
                ),
                const Column(
                  children: [
                    Text("Volume",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox(height: 8,),
                    Text("12 inch",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),),
              ],
            ),
            Container(
                  height: 30,
                  width: 2,
                  color: Colors.black38,
                ),
                const Column(
                  children: [
                    Text("Distance",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox(height: 8,),
                    Text("1 KM",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),),

                    
          ],
        ),
         
        ]),
        const SizedBox(height: 40,),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                Text("Order Now",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black45,
              fontWeight: FontWeight.w500,
            ),
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Icon(Icons.add_circle_outline_rounded,
                color: Colors.black45,),
                SizedBox(width: 2,),
                Text("01",style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(width: 2,),
                Icon(CupertinoIcons.minus_circle,
                color: Colors.black45,)
              ],
            ),
              ],
            ),
            const Column(
              children: [
                Text("Delivery",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black45,
                  fontWeight: FontWeight.w500
                ),
                ),
                SizedBox(height: 8,),
                Text("Express",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                ),
              ],
            ),
            Column(
              children: [
                const Text("Price",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black45,
                  fontWeight: FontWeight.w500
                ),
                ),
                const SizedBox(height: 8,),
                Text("\$${widget.product_detail_price}",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[900],
                ),
                ),
              ],
            )
          ],
        ),
        ),
          ]
    ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentPage()),);
        },
        child: Container(
          height: 60,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Colors.red[900],
            borderRadius: BorderRadius.circular(10),
 ),
 child: const Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Buy",
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    ),
    SizedBox(
      width: 5,
    ),
    Icon(Icons.shopping_bag,
    color: Colors.white,
    size: 20,
    ),
  ],
 ),
        ),
      ),
    );
  }
}