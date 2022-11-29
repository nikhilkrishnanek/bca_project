import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
     Size size=MediaQuery.of(context).size;
    return Scaffold(
      body:Container(

height: size.height,
width:size.width,
decoration:BoxDecoration(
    color: Colors.black,
   

)
    ,child:Stack(
      children: [
        Positioned(
          bottom:0,

          child: Container(
            height:( size.height)-170 ,
            width:(size.width),
            decoration:BoxDecoration(color:Colors.white),
                 
                 child:Padding(
                   padding: const EdgeInsets.only(top:100,left:20),
                   child: Column(
                    mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                           Text("Quotes of the day",
                            style:TextStyle(color:Colors.black,
                            fontSize:20,
                            fontWeight:FontWeight.bold )),
                            // SizedBox(
                            //   height:100,width:350,
                            //  child:Image.asset("lib/screen/assets/gratefulness-quote-start-each-day-with-grateful-heart.jpg"),
                            // )
                              SizedBox(height: 10,),
                          Container(
                            height:130 ,
                            width:350 ,
                            
                            child:Image.asset("lib/screen/assets/IMG_20221111_151718 (1).jpg",
                             fit: BoxFit.fill,),
                          )
                      

                        ],

                   ),
                 ) 
                 ),
                 
        ),
       

        Positioned(
          top:100,
          left:15,

          child: Container(
           
            width:363,
            height: 150,
             decoration:BoxDecoration(borderRadius:BorderRadius.circular(15),  boxShadow: [new BoxShadow(
            color: Colors.black,
            blurRadius: 1.0,
          ),],
  
              color:Colors.white),
               child: Padding(
                 padding: const EdgeInsets.only(top:10,left:20),
                 child: Column(
                      mainAxisAlignment:MainAxisAlignment.start,
                      crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Text("Good Morning ,User",
                            style:TextStyle(color:Colors.black,
                            fontSize:23,
                            fontWeight:FontWeight.bold )),
                            SizedBox(height: 1,),
                             Text("How are you feeling today,",
                            style:const TextStyle(color:Colors.black,
                            fontSize:14,
                            fontWeight:FontWeight.bold )),
                            SizedBox(height: 13,),
                            Row(
                              children:[
                                  SizedBox(width: 12,),
                              Container(
                                height:70,width:50,
                                decoration:BoxDecoration(color:Colors.yellow, 
                                  borderRadius:BorderRadius.circular(15),  boxShadow: [new BoxShadow(
                                 color: Colors.black,
                            blurRadius: 1.0,
                             ),],),
                              child: Column(
                                children: [
                                  IconButton(onPressed: (){},hoverColor:Colors.grey,iconSize: 30 ,icon: ImageIcon(AssetImage("lib/screen/assets/smiley.png"))),
                               Text("happy",style:TextStyle(fontSize: 9))
                                ],
                              )),
                            SizedBox(width: 13,),
                            Container(
                                height:70,width:50,
                                decoration:BoxDecoration(color:Colors.yellow, 
                                  borderRadius:BorderRadius.circular(15),  boxShadow: [new BoxShadow(
                                 color: Colors.black,
                            blurRadius: 1.0,
                             ),],),
                              child: Column(
                                children: [
                                  IconButton(onPressed: (){},hoverColor:Colors.grey,iconSize: 30 ,icon: ImageIcon(AssetImage("lib/screen/assets/happy.png"))),
                                Text("Fine",style:TextStyle(fontSize: 9))
                                ],
                              )),
                             SizedBox(width: 13,),
                           Container(
                                height:70,width:50,
                                decoration:BoxDecoration(color:Colors.yellow, 
                                  borderRadius:BorderRadius.circular(15),  boxShadow: [new BoxShadow(
                                 color: Colors.black,
                            blurRadius: 1.0,
                             ),],),
                              child: Column(
                                children: [
                                  IconButton(onPressed: (){},hoverColor:Colors.grey,iconSize: 30 ,icon: ImageIcon(AssetImage("lib/screen/assets/depressed.png"))),
                               Text("Stressed",style:TextStyle(fontSize: 9))
                                ],
                              )),       
                               SizedBox(width: 13,),
                              Container(
                                height:70,width:50,
                                decoration:BoxDecoration(color:Colors.yellow, 
                                  borderRadius:BorderRadius.circular(15),  boxShadow: [new BoxShadow(
                                 color: Colors.black,
                            blurRadius: 1.0,
                             ),],),
                              child: Column(
                                children: [
                                  IconButton(onPressed: (){},hoverColor:Colors.grey,iconSize: 30 ,icon: ImageIcon(AssetImage("lib/screen/assets/angry.png"))),
                               Text("Angry",style:TextStyle(fontSize: 9)),
                                ],
                              )),
                                SizedBox(width: 13,),
                              Container(
                                height:70,width:50,
                                decoration:BoxDecoration(color:Colors.yellow, 
                                  borderRadius:BorderRadius.circular(15),  boxShadow: [new BoxShadow(
                                 color: Colors.black,
                            blurRadius: 1.0,
                             ),],),
                              child: Column(
                                children: [
                                  IconButton(onPressed: (){},hoverColor:Colors.grey,iconSize: 30 ,icon: ImageIcon(AssetImage("lib/screen/assets/sad.png"))),
                                Text("Sad",style:TextStyle(fontSize: 9))
                                ],
                              )),                     ]
                            )


                          ],

                     ),
               ),
          ),
        )
      ],
    ) 
      )
    );
  }
}