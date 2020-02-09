import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1=0, num2=0, sum=0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition(){
    this.setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  
  void doSub(){
    this.setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul(){
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    this.setState(() {
      sum = num1 * num2;
    });
  }

  void doDiv(){
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    this.setState(() {
      sum = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Calci',
          style: TextStyle(
            fontFamily: 'satisfy'
          ),
        ),
        centerTitle: true,
      ),
      body: new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images3.png'),
            fit: BoxFit.cover
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            new Text(
              "Output : $sum",
              style: new TextStyle(
                fontSize: 20.0,
                fontFamily: "Quando",
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 1",
                fillColor: Colors.white
              ),
              controller: t1,  
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 2",
                focusColor: Colors.yellow
              ),
              controller: t2,  
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  color: Colors.redAccent,
                  child: new Text('+'),
                  onPressed: doAddition,
                ),
                new MaterialButton(
                  color: Colors.yellowAccent,
                  child: new Text('-'),
                  onPressed: doSub,
                ),
              ]
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  color: Colors.white38,
                  child: new Text('*'),
                  onPressed: doMul,
                ),
                new MaterialButton(
                  color: Colors.teal,
                  child: new Text('//'),
                  onPressed: doDiv,
                ),
              ]
            )
          ]
        )
      ),
    );
  }
}