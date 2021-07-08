import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divyesh'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 390,
      height: 170,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text('Divyesh Vishwakarma', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('BVCOENM', style: TextStyle(color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.phone, color: Colors.green,),
                Icon(Icons.camera_alt_outlined, color: Colors.pinkAccent,),
                Icon(Icons.email, color: Colors.red,)
              ],
            ),
          )
        ],
      ),
    );

  }

  Container _getAvatar(){
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.blueAccent, width: 2),
        image: DecorationImage(image: NetworkImage('https://picsum.photos/300/300'), fit: BoxFit.cover),
      ),
    );
  }
}
