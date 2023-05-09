import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
//import 'package:google_fonts/google_fonts.dart';

import './widgets/CalcButton.dart';

void main() {
  runApp(CalcApp(key: GlobalKey()));
}

class CalcApp extends StatefulWidget {
  const CalcApp({required Key key}) : super(key: key);

  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp> {
  String _history = '';
  String _expression = '';

  var GoogleFonts;

  get key12 => null;

  void numClick(String text) {
    setState(() => _expression += text);
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();

    setState(() {
      _history = _expression;
      _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    var googleFonts = GoogleFonts;
    var googleFonts2 = GoogleFonts;
    var key2 = null;
    var key3 = null;
    var key4 = null;
    var key5 = null;
    var key6 = null;
    var fillColor2 = null;
    var key7 = null;
    var key72 = key7;
    var key722 = key72;
    var key8 = null;
    var key9 = null;
    var key10 = null;
    var key11 = null;
    var fillColor3 = null;
    var fillColor4 = null;
    var key122 = key12;
    var key13 = null;
    var key14 = null;
    var key15 = null;
    var fillColor6 = null;
    var calcButton = CalcButton(
      text: '9',
      callback: numClick,
      key: key8,
      fillColor: fillColor6,
    );
    var calcButton2 = calcButton;
    var fillColor5 = null;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    _history,
                    style: googleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF545F61),
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    _expression,
                    style: googleFonts2.rubik(
                      textStyle: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: 'AC',
                    fillColor: 0xFF6C807F,
                    textSize: 20,
                    callback: allClear,
                    key: key2,
                  ),
                  CalcButton(
                    text: 'C',
                    fillColor: 0xFF6C807F,
                    callback: clear,
                    key: key3,
                  ),
                  CalcButton(
                    text: '%',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    callback: numClick,
                    key: key4,
                  ),
                  CalcButton(
                    text: '/',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    callback: numClick,
                    key: key5,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '7',
                    callback: numClick,
                    key: key6,
                    fillColor: fillColor2,
                  ),
                  CalcButton(
                    text: '8',
                    callback: numClick,
                    key: key722,
                    fillColor: fillColor5,
                  ),
                  calcButton2,
                  CalcButton(
                    text: '*',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    textSize: 24,
                    callback: numClick,
                    key: key9,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '4',
                    callback: numClick,
                    key: key10,
                    fillColor: fillColor3,
                  ),
                  CalcButton(
                    text: '5',
                    callback: numClick,
                    key: key11,
                    fillColor: fillColor4,
                  ),
                  CalcButton(
                    text: '6',
                    callback: numClick,
                    key: key11,
                    fillColor: fillColor4,
                  ),
                  CalcButton(
                    text: '-',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    textSize: 38,
                    callback: numClick,
                    key: key15,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '1',
                    callback: numClick,
                    key: key11,
                    fillColor: fillColor4,
                  ),
                  CalcButton(
                    text: '2',
                    callback: numClick,
                    key: key11,
                    fillColor: fillColor4,
                  ),
                  CalcButton(
                    text: '3',
                    callback: numClick,
                    key: key11,
                    fillColor: fillColor4,
                  ),
                  CalcButton(
                    text: '+',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    textSize: 30,
                    callback: numClick,
                    key: key13,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '.',
                    callback: numClick,
                    key: key11,
                    fillColor: fillColor4,
                  ),
                  CalcButton(
                    text: '0',
                    callback: numClick,
                    key: key11,
                    fillColor: fillColor4,
                  ),
                  CalcButton(
                    text: '00',
                    callback: numClick,
                    key: key11,
                    fillColor: fillColor4,
                    textSize: 26,
                  ),
                  CalcButton(
                    text: '=',
                    fillColor: 0xFFFFFFFF,
                    textColor: 0xFF65BDAC,
                    callback: evaluate,
                    key: key14,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
