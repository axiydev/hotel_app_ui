import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  static final String id='home_page';
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.white,
      body:SingleChildScrollView(
        child:Column(
          children:[
            //#HEADER
            Container(
              height:230,
              width:double.infinity,
              decoration:BoxDecoration(
                image:DecorationImage(
                  image:AssetImage('assets/images/ic_header.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
              child:Container(
                padding:EdgeInsets.symmetric(vertical: 25,horizontal: 40),
                decoration:BoxDecoration(
                  gradient:LinearGradient(
                    begin:Alignment.bottomRight,
                    colors:[
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.6),
                      Colors.black.withOpacity(.4),
                    ],
                  ),
                ),
                //# TEXT AND TEXTFIELD
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children:[
                    Text('Best Hotels Ever',style:TextStyle(color:Colors.white,fontSize:30,fontWeight:FontWeight.w600,),textAlign:TextAlign.center,),
                    SizedBox(height:30),
                    Container(
                      height:45,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(22.5),
                        color:Colors.white,
                      ),
                      child:TextField(
                        decoration:InputDecoration(
                          prefixIcon:Icon(Icons.search,color:Colors.grey,),
                          border:InputBorder.none,
                          hintText:'Search for hotels',
                          hintStyle:TextStyle(color:Colors.grey,fontWeight:FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:25),
            //BUSSINESS HOTELS
            Container(
              padding:EdgeInsets.symmetric(horizontal: 20),
              width:double.infinity,
              child:Column(
               crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Text('Business Hotels',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600,color:Colors.grey[800]),),
                  SizedBox(height: 15,),
                  Container(
                    height: 170,
                    child:ListView(
                      scrollDirection:Axis.horizontal,
                      children:[
                        _makeList(image:'assets/images/ic_hotel1.jpg',title:'Hotel 1'),
                        _makeList(image:'assets/images/ic_hotel2.jpg',title:'Hotel 2'),
                        _makeList(image:'assets/images/ic_hotel3.jpg',title:'Hotel 3'),
                        _makeList(image:'assets/images/ic_hotel4.jpg',title:'Hotel 4'),
                        _makeList(image:'assets/images/ic_hotel5.jpg',title:'Hotel 5'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            //#AIRPORT HOTELS
            Container(
              padding:EdgeInsets.symmetric(horizontal: 20),
              width:double.infinity,
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Text('Airport Hotels',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600,color:Colors.grey[800]),),
                  SizedBox(height: 15,),
                  Container(
                    height: 170,
                    child:ListView(
                      scrollDirection:Axis.horizontal,
                      children:[
                        _makeList(image:'assets/images/ic_hotel3.jpg',title:'Hotel 1'),
                        _makeList(image:'assets/images/ic_hotel2.jpg',title:'Hotel 2'),
                        _makeList(image:'assets/images/ic_hotel4.jpg',title:'Hotel 3'),
                        _makeList(image:'assets/images/ic_hotel5.jpg',title:'Hotel 4'),
                        _makeList(image:'assets/images/ic_hotel1.jpg',title:'Hotel 5'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 15,),
            //#RESORT HOTELS
             Container(
              padding:EdgeInsets.symmetric(horizontal: 20),
              width:double.infinity,
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Text('Resort Hotels',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600,color:Colors.grey[800]),),
                  SizedBox(height: 15,),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    height: 170,
                    child:ListView(
                      scrollDirection:Axis.horizontal,
                      children:[
                        _makeList(image:'assets/images/ic_hotel5.jpg',title:'Hotel 1'),
                        _makeList(image:'assets/images/ic_hotel4.jpg',title:'Hotel 2'),
                        _makeList(image:'assets/images/ic_hotel3.jpg',title:'Hotel 3'),
                        _makeList(image:'assets/images/ic_hotel2.jpg',title:'Hotel 4'),
                        _makeList(image:'assets/images/ic_hotel1.jpg',title:'Hotel 5'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  //#WIDGET HOTELS
  Widget _makeList({String image,String title}){
    return AspectRatio(
      aspectRatio: 1.1/1,
      child:Container(
        margin:EdgeInsets.only(right: 15),
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(15),
          image:DecorationImage(
            image:AssetImage(image),
            fit:BoxFit.cover,
          ),
        ),
        child:Container(
          padding:EdgeInsets.all(10),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(15),
            gradient:LinearGradient(
              begin:Alignment.bottomRight,
              colors:[
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.3),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          //#HOTEL TITLE AND FAVOURITE ICON
          child:Column(
            mainAxisAlignment:MainAxisAlignment.end,
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text(title,style:TextStyle(color:Colors.white,fontSize:18),),
                  Icon(Icons.favorite,color:Colors.red,size:20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}