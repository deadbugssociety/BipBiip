import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bipbiip/button_widget.dart';

class TimerBack extends StatefulWidget{
  @override
  _TimerBackState createState()=> _TimerBackState();
}
class _TimerBackState extends State<TimerBack> {
  static const maxSeconds=180;
  int seconds = maxSeconds;
  Timer? timer;

  void startTimer() {
    timer=Timer.periodic(Duration(seconds:1),(_){
      if(seconds>0) {
        setState(() {
          seconds--;
        });
      }else{
        stopTimer(reset:false);
      }
    });
  }
  void resetTimer()=>setState(() => seconds = maxSeconds);
  void stopTimer({bool reset=true}){
    if(reset){
      resetTimer();
    }
    setState(() => timer?.cancel());
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation:0.5,
        backgroundColor: Colors.transparent,
        title: Text('Servise Yakınım Butonu'),
        centerTitle: true,
      ),
      body:
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              //Color.fromRGBO(245, 101, 3, 1),
              Color.fromRGBO(211, 87, 3, 1),
              Color.fromRGBO(24, 28, 79, 1),
              Color.fromRGBO(14, 17,53, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top:100,bottom: 55,left:10,right:10),
              child:Container(

                decoration: BoxDecoration(
                  color:  Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),

                ),
                padding: EdgeInsets.all(15),
                child: Text(
                  'Servis bu butona bastığınızdan itibaren 3 dakika bekleyecek.',
                  style:TextStyle(
                      fontSize: 18,
                      height:2,
                      color:Colors.white70),
                ),
              ),
            ),
            Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  buildTimer(),
                  const SizedBox(height:50),
                  buildButtons(),
                ],
              ),
            ),
          ],
        ),

      ),
    );

  }
  Widget buildButtons(){

    return Container(
      margin: EdgeInsets.only(bottom:20),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ButtonWidget(
            text: 'Servise yakınım!',
            backgroundColor:Color.fromRGBO(41, 155, 206, 1),
            onClicked: () {
              startTimer();
            },
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            child:ButtonWidget(
              text: 'Vazgeç',
              backgroundColor:Color.fromRGBO(41, 155, 206, 1),
              onClicked: () {
                stopTimer();
              },
            ),
          )
        ],
      ),
    );
  }

  Widget buildTimer() =>SizedBox(
    width: 200,
    height: 200,
    child:
    Stack(
      fit:StackFit.expand,
      children: [
        CircularProgressIndicator(
          value: 1 - seconds/maxSeconds,
          valueColor: AlwaysStoppedAnimation(Colors.white),
          strokeWidth: 12,
          backgroundColor: Color.fromRGBO(245,101, 3, 0.7),
        ),
        Center(child:buildTime()),
      ],
    ),
  );
  Widget buildTime(){
    return Text(
      '$seconds',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 70,
      ),
    );
  }

}
