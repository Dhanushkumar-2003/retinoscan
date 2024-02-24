import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Exam extends StatefulWidget {
  const Exam({super.key});

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(247, 36, 54, 156),
          title: Center(
            child: Text(
              "Exam",
              style: TextStyle(color: Colors.white),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Drawer()));
            },
            icon: Icon(Icons.menu),
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Colors.white,
            ),
          ],
        ),
        drawer: Drawer(
          child: Text(""),
        ),
        body: Container(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 370,
                      height: 55,
                      child: const Center(
                        child: TextField(
                          // ignore: unnecessary_const
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.blue), //<-- SEE HERE
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: 370,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Archived Exam',
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios_outlined),
                              )),
                        )),
                    Container(
                        width: 370,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Current Exam',
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage("images/exam.png"),
                    width: 100,
                  ),
                  Text(
                    "No Exam found",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(238, 15, 5, 81),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "You don't have any exam.use the '+'icon ",
                          textAlign: TextAlign.right,
                        ),
                      )),
                  Text(" to add an exam")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
