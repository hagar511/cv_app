import 'package:flutter/material.dart';

void main() {
  runApp(MyMaterialApp());
}
class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: CvScreen()
    ),);
  }
}
class CvScreen extends StatefulWidget {
  const CvScreen({Key? key}) : super(key: key);

  @override
  State<CvScreen> createState() => _CvScreenState();
}

class _CvScreenState extends State<CvScreen> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child:
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf-Zuo0_cBw46sNUZ8w_8tkblJbRK6_IWTkSdJ5fAATJvIr4cS2jNeSex_nOWVK_Hc4MQ&usqp=CAU",),
            SizedBox(height: 40,),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Name:',style:TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text('Hagar tarek',style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
              ],),
            SizedBox(height: 40,),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Phone number:',style:TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text('01060777099',style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
              ],),
            SizedBox(height: 50,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: (){}, child:
            Text("Call me",style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.bold))),

          ],),
    );
  }
}



