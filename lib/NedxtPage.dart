import 'package:flutter/material.dart';


class First extends StatelessWidget {
  const First({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(appBar: AppBar(),
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("images/gym.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // ListView(padding: EdgeInsets.only(left: 20, right: 20, top: 100),
            //   children: [
            //     Row(mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text('Sign in',style: TextStyle(fontSize: 30,color: Colors.yellow),)
            //       ],),
            //     Row(children: [
            //       Text('if you do not have account ,',style: TextStyle(fontSize: 20
            //           ,color: Colors.white),),TextButton(onPressed: (){
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) => const SecondRoute()),
            //         );
            //       }, child: Text(
            //         'creat one ',style: TextStyle(fontSize: 20,color: Colors.yellow),
            //
            //       ))
            //     ],),
            //     SizedBox(height: 200,),
            //
            //
            //     TextField(style:TextStyle(color: Colors.white,fontSize: 21) ,
            //       decoration: InputDecoration(counterStyle: TextStyle(
            //           fontSize: 30,backgroundColor: Colors.white,color: Colors.white),
            //         hintText: 'email ',
            //         hintStyle: TextStyle(fontSize: 25,color: Colors.white),
            //         labelText: 'EMAIL',
            //         labelStyle: TextStyle(color: Colors.white,fontSize: 25),
            //         // prefixIcon: Icon(Icons.email,color: Colors.white,),
            //         enabledBorder:OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(20),
            //             borderSide: BorderSide(
            //                 width: 5,color: Colors.white
            //             )
            //         ),
            //       ),
            //     ) ,SizedBox(height: 20,),
            //
            //     TextField(style:TextStyle(color: Colors.white,fontSize: 21),
            //       decoration: InputDecoration(counterStyle: TextStyle(
            //           fontSize: 30,backgroundColor: Colors.white,color: Colors.white),
            //         hintText: 'password ',
            //         hintStyle: TextStyle(fontSize: 25,color: Colors.white),
            //         labelText: 'PASSWORD',
            //         labelStyle: TextStyle(color: Colors.white,fontSize: 25),
            //
            //         // suffix:GestureDetector(onTap: (){
            //         //   _seure=!_seure;
            //         // },child: Icon(),),
            //         enabledBorder:OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(20),
            //             borderSide: BorderSide(
            //                 width: 5,color: Colors.white
            //             )
            //         ),
            //       ),
            //     ),
            //     SizedBox(height: 20,),
            //     MaterialButton(
            //       shape: RoundedRectangleBorder(borderRadius:
            //       BorderRadius.all(Radius.circular(50))),
            //       color: Colors.yellow,
            //       padding: EdgeInsets.symmetric(vertical: 8),
            //       child: const Text(
            //         'Sign in',
            //         style: TextStyle(fontSize: 30),
            //       ),
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) => const Fourh_page()),
            //         );
            //       },
            //     ),
            //   ],)
          ],
        ));
  }
}