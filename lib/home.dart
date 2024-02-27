import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:retinascan/exam.dart';

class FirstAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),

        gradient: LinearGradient(
          colors: [Color(0x763d55de), Color.fromRGBO(80, 88, 180, 1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),

        // gradient:
      ),
      child: AlertDialog(
        title: Center(
            child: Text(
          'Retinoscan',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(238, 15, 5, 81)),
        )),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: const Row(
                children: [
                  Text(
                    "REM-",
                    style: TextStyle(color: Color.fromARGB(255, 19, 6, 206)),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Colors.blue), //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        actions: [
          SizedBox(
            width: 200,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SecondAlertDialog();
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  border: Border(
                    left: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                ),
                width: 200,
                child: Center(
                    child: Text(
                  'Save & continue',
                  style: TextStyle(
                    backgroundColor: Colors.black,
                    color: Colors.white,
                    fontSize: 20,
                    height: 3,
                  ),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        gradient: LinearGradient(
          colors: [Color(0x763d55de), Color(0xff0016ff)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: AlertDialog(
        title: Center(
            child: Text(
          'Retinoscan',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(238, 15, 5, 81)),
        )),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1, color: Colors.blue), //<-- SEE HERE
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 1, color: Colors.blue), //<-- SEE HERE
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "forgotpassword?",
                  style: TextStyle(color: Colors.blue),
                ))
          ],
        ),
        actions: [
          Column(
            children: [
              SizedBox(
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Exam()));
                      // showDialog(
                      //   context: context,
                      //   builder: (BuildContext context) {
                      //     return SecondAlertDialog();
                      //   },
                      // );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        border: Border(
                          left: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                      ),
                      width: 200,
                      child: Center(
                          child: Text(
                        'login',
                        style: TextStyle(
                          backgroundColor: Colors.black,
                          color: Colors.white,
                          fontSize: 20,
                          height: 3,
                        ),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
