import 'package:flutter/material.dart';

class secondpage extends StatefulWidget {
  final heroTag;
  secondpage({this.heroTag});
  @override
  _secondpageState createState() => _secondpageState(heroTag: heroTag);
}

class _secondpageState extends State<secondpage> {
  final heroTag;
  _secondpageState({this.heroTag});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: heroTag,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(heroTag), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            bottom: 15.0,
            left: 15.0,
            right: 15.0,
            child: new Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 3.0,
              child: Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width - 30.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
               child: Column(
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    height: 115.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey,style: BorderStyle.solid,width: 1.0),
                      image: DecorationImage(
                        image: AssetImage("assets/a.jpg"),fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                Text("welcome atef",style: TextStyle(color:Colors.grey,fontSize: 20.0),)
                  ],
                )
                ,
                         
                       
                     ],
                   )
                 ],
               ),     

              ),

            ),
          )
        ],
      ),
    );
  }
}
