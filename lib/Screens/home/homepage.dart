
import 'package:flutter/material.dart';
import 'package:project_it/product.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:project_it/Screens/home/component1/body.dart';
// import 'package:project_it/Screens/home/component1/bottom_nav_bar.dart';


// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  
  List foods =[
"Burger",
"Pizza",
"Snacks",
"Water",

  ];
 
  List price =[
    "NGN 5000"
    "NGN 2000"
    "NGN 2500"
    "NGN 3000"
  ];
  List<Color> bgColors=[
Colors.brown.shade600,
Colors.brown.shade600,
Colors.brown.shade600,
Colors.brown.shade600
  ];

  HomePage({super.key});

 @override
  Widget build(BuildContext context) {
    return   Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 50,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Deliver to",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(Icons.location_on,
                      color: Colors.red.shade900,
                      ),
                      const Text("Enugu, Nigeria",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Icon(Icons.arrow_drop_down,
                      color: Colors.red[900],
                      ),
                    ],
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(image: AssetImage('images/ebuka.jpg'),
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      color: Colors.red[900],
                      shape: BoxShape.circle,
                    ),
                  ))
                ],
              ),
            ],
          ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/1.4,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                     ),
                     child: Center(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Search your food here.....",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),),
              ),
              InkWell(
                onTap: () {
                 
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: const Icon(Icons.filter_list,
                  color: Colors.white,
                  size: 28,

                  ),
                ),
              ),
             
            ],
          ),
           const SizedBox(height: 20,),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("images/banner.jpg"),
              ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Catagories",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,

            ),),
            TextButton(onPressed: (){},
             child:  Text("See All",
             style: TextStyle(
              color: Colors.red[900],
              fontSize: 17,
              fontWeight: FontWeight.bold,

             ),
             ))
          ],),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: foods.length,
              itemBuilder: (context, index){
              return Container(
              width: 100,
              margin: const EdgeInsets.only(left: 15),
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: bgColors[index],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("images/${foods[index]}.png",
                  height: 80,
                  width: 80,
                  ),
                    Text(
                      foods[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )
                ],
              ),
              );
            }),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           const Text("Popular",
           style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,

           ),),
           TextButton(onPressed: (){},
            child: Text("See All",
            style: TextStyle(
              color: Colors.red[900],
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            ),
            
            ),
            ],
          ),
          ),
          const Product(),
          const SizedBox(height: 50,)
        ],),
      ),
    );


  }
}



































































// Scaffold(
//       appBar: AppBar(
//     backgroundColor: Colors.white,
//     elevation: 0,
//     leading: IconButton(
//       icon: SvgPicture.asset("assets/icons/menu.svg"),
//       onPressed: () {},
//     ),
//     title: Text.rich(
//     TextSpan(
//             text: "Punk",
//             style: TextStyle(color: Colors.brown[900]),
       
//          children: const [
//           TextSpan(
//             text: "Food",
//             style: TextStyle(color: Colors.white60),
//           ),
//         ],
//       ),
//     ),
//     actions: <Widget>[
//       IconButton(
//         icon: SvgPicture.asset("assets/icons/notification.svg"),
//         onPressed: () {},
//       ),
//     ],
//   ),

//  bottomNavigationBar: const BottomNavBar(),
//       body: const Body(),
//     );
//   }
// }


















































































































































































































































































// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:project_it/component/books.dart';
// import 'package:project_it/component/horizontal_list.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
// body: ListView(
//           scrollDirection: Axis.vertical,
//            children: [
            
            
//              Container(
//               width: double.infinity,
//               height: 250,
//               decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("image/quill.png"),
//               fit: BoxFit.cover
//               ),
//               ),
//               child:   Column(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.fromLTRB(0, 45, 5, 5),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Row(
                        
//                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Padding(
//                                           padding:  EdgeInsets.symmetric(
//                                                 horizontal: 2,
//                                               ),),
                                          
                                            
                                           
//                                               Text(
//                                                 'Hello, Ebuka',
//                                                 style:TextStyle(
//                                                   fontSize: 25,
//                                                   color: Colors.white
//                                                 ),
//                                                 ),
                                                
                                        
                                       
//                                         Row(
//                                           children: [
//                                             Padding(
//                                               padding:  EdgeInsets.only(left: 80, right: 30),
                                              
//                                               child: FaIcon(
//                                                 //notifications
//                                                 FontAwesomeIcons.bell,
//                                                 color: Colors.white,
//                                                 size: 20,
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding:  EdgeInsets.symmetric(
//                                                 horizontal: 20,),
//                                               child: CircleAvatar(
//                                                 //avatar
//                                                 radius:  23.0,
//                                                 backgroundImage: AssetImage("image/ebuka.jpg"),
                                            
                                                
//                                                   ),
//                                             ),
//                                           ],
//                                             ),
//                                           ],
//                                         ),
//                     ),
//                   ),
//                   const Align(
//                     alignment: Alignment.bottomLeft,
//                     child: Padding(
//                       padding: EdgeInsets.only(top: 2,left: 14),
//                       child: Text("What do you want to read today?", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal),),
//                     )),
//                   const SizedBox(
//                     height: 20,
//                   ),
                  
//                  Align(
//                   alignment: Alignment.bottomLeft,
//                    child: Padding(
//                      padding:  const EdgeInsets.only(top: 35, left: 14),
//                      child: Container(
//                                     width: 300,
//                                     height: 25,
//                                     decoration: const BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(15),
//                                       ),
//                                     ),
//                                     child: const Row(
//                                       //searchbar
//                                       // crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: <Widget>[
//                                         Padding(
//                                           padding: EdgeInsets.symmetric(
//                                             horizontal: 10,
//                                           ),
//                                           child: Icon(
//                                             Icons.search,
//                                             color: Colors.black,
//                                             size: 15,
//                                           ),
//                                         ),
//                                         Text("Search for a book", style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w100),)
//                                     ],
//                                   ),
                                  
//                                 ),
//                    ),
//                  ),
                  
                          
                        
//                 ]),
//                 ),
                
           
//             Padding(padding: const EdgeInsets.only(top: 25, left: 10, right: 15, bottom: 15),
//           child: Text('Recommended', style: TextStyle(color: Colors.brown[900], fontSize: 18, fontWeight: FontWeight.normal),),),
//            const HorizontalList(),
//            Align(alignment: Alignment.topLeft,
//              child: Padding(padding: const EdgeInsets.only( left: 10),
//                      child: Text('All Books', style: TextStyle(color: Colors.brown[900], fontSize: 18, fontWeight: FontWeight.normal),),),
//            ),
//            const Books()
//            ],
//        ),
       
  
//     );
         
       
    
//   }
// }