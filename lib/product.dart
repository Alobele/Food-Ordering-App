import 'package:flutter/material.dart';
import 'package:project_it/item_screen.dart';

class Product extends StatefulWidget {
  const Product({
    super.key,
  
  });

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
   var product_list = [
   
    {
      "name": "Chicken Burger",
      "picture": "images/products/Chicken Burger.jpg",
      "price": 300,
      "description":"Freshly baked chicken burger with vegetable"
    },
     {
      "name": "Cheese Pizza",
      "picture": "images/products/Cheese Pizza.jpg",
      "description":"Mixed Pizza with beef, chilli and cheese",
      "price": 500,
    },
    {
      "name": "Fries",
      "picture": "images/products/Fries.jpg",
      "price": 200,
      "description":"Potatoe fries, stew and cream",
    },
    {
      "name": "Jollof Rice",
      "picture": "images/products/Jollof Rice.jpg",
      "price": 250,
      "description":"Delicious and garnished jollof rice"
    },
    {
      "name": "Soup",
      "picture": "images/products/Soup.jpg",
      "price": 300,
      "description":"Hot pepper soup and chicken with FuFu"
    },
    {
      "name": "Vegetable Soup",
      "picture": "images/products/Vegetable Soup.jpg",
      "price": 300,
      "description":"Delicious vegetable soup with FuFu"
    },
    {
      "name": "Rice and Stew",
      "picture": "images/products/Rice and Stew.jpg",
      "price": 250,
      "description":"Sweet and delicious rice and stew"
    },
    {
      "name": "Noodles",
      "picture": "images/products/Noodles.jpg",
      "price": 250,
      "description":"Garnished noodles with plaintain"
    },
     {
      "name": "Drinks",
      "picture": "images/products/Drinks.jpg",
      "price": 100,
      "description":"Fresh Strawberry Juice"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: product_list.length,
        itemBuilder: (context, index){
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
            prod_description: product_list[index]['description'],
          );
        }),
    );
  }
}

class Single_prod extends StatelessWidget {
  
  final prod_name;
  final prod_pricture;
  final prod_price;
  final prod_description;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_price,
    this.prod_description,
  });
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: prod_name,
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProductDetails(
           product_detail_name: prod_name,
           product_detail_picture: prod_pricture,
           product_detail_price: prod_price,
           product_detail_description: prod_description,
            )),); 
                                
          },
          child: Container(
            width: MediaQuery.of(context).size.width/1.4,
            margin: const EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.asset(prod_pricture,
                  height: 120,
                  width: MediaQuery.of(context).size.width/1.4,
                  fit: BoxFit.cover,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        prod_name,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Text(
                        "Fast Food",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black45,
                        ),
                      ),
                      const SizedBox(height: 5,),
                       Row(
                        children: [
                          Icon(Icons.star,
                          color: Colors.red[900],
                          size: 20,
                          ),
                          const SizedBox(width: 2,),
                          const Text(
                            "4.7",
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "945 Ratings",
                            style: TextStyle(
                              color: Colors.black45
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,
                          color: Colors.red[900],
                          size: 20,
                          ),
                          const SizedBox(width: 2,),
                          const Text(
                            "1 KM",
                            style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w500,
                              
                            ),
                          )
                        ],
                      ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.red[900],
                        borderRadius: BorderRadius.circular(10),),
                        child: Text( "\$${prod_price}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),
                        
                      )
                    ],
                  )
                  ],
                ),
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}














