import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Patient_detail extends StatefulWidget {
  const Patient_detail({super.key});

  @override
  State<Patient_detail> createState() => _Patient_detailState();
}

class _Patient_detailState extends State<Patient_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(247, 36, 54, 156),
        title: Center(
          child: Text(
            "Exam",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(left: 19, right: 37),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Patient",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                child: TextField(
                  // ignore: unnecessary_const
                  decoration: const InputDecoration(
                    hintText: "MRN*",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Colors.blue), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                child: TextField(
                  // ignore: unnecessary_const
                  decoration: const InputDecoration(
                    hintText: "First Name*",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Colors.blue), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                child: TextField(
                  // ignore: unnecessary_const
                  decoration: const InputDecoration(
                    hintText: "Last Name*",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Colors.blue), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                child: TextField(
                  // ignore: unnecessary_const
                  decoration: const InputDecoration(
                    hintText: "Date Of Birth*",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Colors.blue), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                child: TextField(
                  // ignore: unnecessary_const
                  decoration: const InputDecoration(
                    hintText: "Gender*",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Colors.blue), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Exam code",
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    height: 40,
                    child: TextField(
                      // ignore: unnecessary_const
                      decoration: const InputDecoration(
                        hintText: "Exam code",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Colors.blue), //<-- SEE HERE
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "prescribing Doctor",
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Colors.blue), //<-- SEE HERE
                        ),
                      ),
                      minLines:
                          6, // any number you need (It works as the rows for the textarea)
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                    ),
                  )
                ],
              ),
              SizedBox(
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) =>()));
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
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        'Add',
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
        ),
      ),
    );
  }
}
