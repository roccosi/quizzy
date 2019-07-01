import 'package:flutter/material.dart';

void main() => runApp(
      Quizzy(),
    );

class Quizzy extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    //HEADER SECTION
    Widget headerSection = Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  'questions: 1/',
                  style: TextStyle(
                    fontFamily: 'oxygen',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff252c4a),
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  height: 20.0,
                  child: Text(
                    '12',
                    style: TextStyle(
                      fontFamily: 'oxygen',
                      fontSize: 13.0,
                      //fontWeight: FontWeight.bold,
                      color: Color(0xff252c4a),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(children: [
              Image.asset(
                'images/true-icon.png',
                height: 19.0,
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                '0',
                style: TextStyle(
                  fontFamily: 'oxygen',
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff252c4a),
                ),
              ),
              SizedBox(
                width: 12.0,
              ),
              Image.asset(
                'images/false-icon.png',
                height: 19.0,
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                '0',
                style: TextStyle(
                  fontFamily: 'oxygen',
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff252c4a),
                ),
              ),
            ]),
          ),
        ],
      ),
    );

    //QUESTION SECTION
    Widget questionSection = Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Color(0xff252c4a),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          'Germany drinks the most beer in the world per person.',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'oxygen',
              fontSize: 25.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    //ANSWER SECTION
    Widget answerSection = Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Color(0xff00d665),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          'CORRECT! The Czech Republic drinf the most beer.',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'oxygen',
              fontSize: 21.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    //CONTINUE SECTION
    Widget continueSection = Container(
      margin: EdgeInsets.only(top: 15.0),
      width: 180.0,
      height: 55.0,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0,
            // spreadRadius: 3.0,
            offset: Offset(0.0, 3.0),
          )
        ],
      ),
      child: RawMaterialButton(
        onPressed: () {
          setState(() {
            //User picked True
          });
        },
        child: Center(
          child: Text(
            'Continue',
            style: TextStyle(
              fontFamily: 'Oxygen',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff252c4a),
            ),
          ),
        ),
      ),
    );

    //TRUEFALSE SECTION
    Widget trueFalseSection = Container(
      margin: EdgeInsets.only(top: 41.0, bottom: 25.0),
      child: Row(
        children: <Widget>[
          //TRUE BUTTON
          Expanded(
            child: Container(
              height: 70.0,
              decoration: BoxDecoration(
                color: Color(0xff00d665),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5.0,
                    // spreadRadius: 3.0,
                    offset: Offset(0.0, 3.0),
                  )
                ],
              ),
              child: RawMaterialButton(
                onPressed: () {
                  setState(() {
                    //User picked True
                  });
                },
                child: Center(
                  child: Text(
                    'True',
                    style: TextStyle(
                      fontFamily: 'Oxygen',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          //FALSE BUTTON
          Expanded(
            child: Container(
              height: 70.0,
              decoration: BoxDecoration(
                color: Color(0xffff3d58),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5.0,
                    // spreadRadius: 3.0,
                    offset: Offset(0.0, 3.0),
                  )
                ],
              ),
              child: RawMaterialButton(
                onPressed: () {
                  setState(() {
                    //User picked false
                  });
                },
                child: Center(
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontFamily: 'Oxygen',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        headerSection,
        questionSection,
        answerSection,
        continueSection,
        trueFalseSection,
      ],
    );
  }
}
