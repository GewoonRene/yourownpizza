import 'package:flutter/material.dart';
import 'package:yourownpizza/View/helpers/constants.dart';


class PizzaBottom extends StatefulWidget {
  @override
  _PizzaBottomState createState() => _PizzaBottomState();
}

class _PizzaBottomState extends State<PizzaBottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400]
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
          SizedBox(height: 300,),
          Expanded(
            child: Container(
              width: 5000,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0),),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                          child: RaisedButton(
                            color: mainColor,
                            onPressed: () {},
                            textColor: Colors.white,
                            child: Text(
                                'Dranken',
                                style: TextStyle(fontSize: 20)
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                              child: Text(
                                'Pizza bottoms',
                                style: TextStyle(
                                  fontSize: 30.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Divider(
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            PizzaCard(

                            ),
                            SizedBox(width: 100.0,),
                            PizzaCard(

                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}

class PizzaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 42.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 75.0,
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            'Normal'
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            decoration: bottomSheet,
            height: 87.0,
            child: Column(
              children: <Widget>[
                SizedBox(height: 15.0,),
                Text(
                  'Formaat',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Standaard',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      color: mainColor,
                      shape: buttonStyle,
                    ),
                    SizedBox(width: 30.0,),
                    RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Kind',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      color: mainColor,
                      shape: buttonStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: pizzaBottomStyle,
      width: 270.0,
      height: 380.0,
    );
  }
}
