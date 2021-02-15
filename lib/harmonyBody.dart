import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter/services.dart';


class HarmonyBody extends StatefulWidget{
  @override
  _HarmonyBodyState createState() => _HarmonyBodyState();
}

class _HarmonyBodyState extends State<HarmonyBody> {

  double contentPadding = 15.0;
  double borderRadius = 30.0;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //bottomNavigationBar:,
      body: NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (__){
      __.disallowGlow();
      return false;
      },child: stak(
              child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange.withOpacity(.3),
                    Colors.indigo.withOpacity(.05),
                ]),
              ),
            ),


            ListView(
              children: [

              SizedBox(height: 10,),

                // AppBar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Text("Harmony",style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Colors.white70,
                        ),),),
                      
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.power_settings_new_outlined,color: Theme.of(context).disabledColor,),
                          ),
                        )
                      ],
                    ),
                  ),

              SizedBox(height: 5,),

              // The Body

              for(int k =0; k<= 5; k++)

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  elevation: 4.0,
                  child: Container(
                    decoration: BoxDecoration(
                    //color: Theme.of(context).canvasColor,
                    ),
                    child:Column(
                      children: [
                        SizedBox(height: 8.0,),
                        Row(
                          children: [
                            Padding(
                              padding:EdgeInsets.symmetric(horizontal:contentPadding,
                              vertical:8.0),
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(k == 0? "assets/guy.jpg": "assets/lady.jpg"),),
                                ),
                              ),
                            ),

                            Flexible(
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      
                                      Text(k == 0 ?"Eugene Calas." : "Giberh Ameno",style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500,
                                          color: Theme.of(context).disabledColor.withOpacity(.8), 
                                      ),),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(k == 0 ?"23 July 2015":"17 May 2000",style: TextStyle(
                                          color: Theme.of(context).disabledColor, 
                                          fontWeight: FontWeight.w600,
                                      ),),

                                    ],
                                  ),
                                ],
                              ),),

                            IconButton(icon: Icon(Icons.more_vert), 
                            onPressed: (){}),
                          ],),

                        SizedBox(height: 10.0,),

                      // Picture

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: contentPadding+5,vertical: 8),
                        child: Card(
                          elevation: 12.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          margin: EdgeInsets.all(0),
                          child: Container(
                            height: 320,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(borderRadius),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/breek.jpg"),),                            
                            ),
                          ),
                        ),
                      ),     

                    
                    // Bottom
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: contentPadding+8,vertical: 8.0),
                          child: Row(
                            children: [

                              // Likes
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    
                                    GestureDetector(
                                    onTap: (){},
                                    child: Icon(Icons.thumb_up_alt_outlined,color: Theme.of(context).disabledColor,)),
                                    SizedBox(width: 8,),
                                    GestureDetector(
                                    onTap: (){},
                                    child: Icon(Icons.thumb_down_alt_outlined,color:Theme.of(context).disabledColor),
                                    ),
                                  ],
                                ),
                              ),

                              // labels

                              Flexible(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 1,),
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(children: [
                                                                            
                                                Text("85.794 M",style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Theme.of(context).disabledColor.withOpacity(.8), 
                                                ),),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text("likes",style: TextStyle(
                                                    color: Theme.of(context).disabledColor.withOpacity(.65), 
                                                    fontWeight: FontWeight.w600,
                                                ),),
                                        ],
                              ),
                                      ),
                                    ),
                                  ],
                                ),),

                              // share
                              Transform.rotate(
                                angle: math.pi/4,
                                child: IconButton(icon: Icon(Icons.navigation,color: Colors.indigoAccent,), 
                              onPressed: (){
                                
                              }),),
                              
                          ],),
                        )

                      ],
                    ) ,
                  ),
                ),
              ),

              ],
            ),
          ],
        ),
      ),
      ),
    );
  }

  Widget stak({Widget child}){
    return Stack(
      children: [

        child,        
        Positioned(
          bottom: 0.0,
          right: 0.0,
          left: 0.0,
          child: Card(
            elevation: 12.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          margin: EdgeInsets.all(0),
          child: Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 8.0,
              ),          
              child: Row(
                children: [
                 SizedBox(
                    width: 0.01,
                  ),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [  
                        Icon(Icons.message_rounded),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:8.0),
                          child: Card(
                            color: Colors.indigoAccent,
                            margin: EdgeInsets.all(0),
                            elevation: 30.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(Icons.add,
                              color: Theme.of(context).cardColor,),
                            )),
                        ),
                        Icon(Icons.golf_course),
                      ],
                    ),
                  ),

                 SizedBox(
                    width: 0.01,
                  ),

                ],
              ),
            ),),
      ),
        ),
      ],
    ); 
  }
  
}
