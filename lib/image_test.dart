import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

class Result extends StatefulWidget {
  String firstname;
  String lastname;
  String gender;
  String age;
  String exam_code;
  Result({
    required this.firstname,
    required this.lastname,
    required this.gender,
    required this.age,
    required this.exam_code,
    super.key,
  });

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> with SingleTickerProviderStateMixin {
  File? _imgFile;
  late AnimationController _controller;
  TextEditingController dateinput = TextEditingController();
  void pick_img() async {
    final ImagePicker picker = ImagePicker();
    final XFile? img = await picker.pickImage(
      source: ImageSource.camera, // alternatively, use ImageSource.gallery
      maxWidth: 400,
    );
    if (img == null) return;
    setState(() {
      _imgFile = File(img.path); // convert it to a Dart:io file
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          widget.firstname,
          style: TextStyle(fontSize: 30, color: Colors.white),
        )),
        backgroundColor: Color.fromARGB(247, 36, 54, 156),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.person,
                          size: 34,
                        ),
                        Container(
                          child: Text(
                            widget.firstname,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(widget.age),
                              Text("/"),
                              Text(widget.gender)
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [Text(widget.exam_code)],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                                padding: EdgeInsets.all(15),
                                child: Center(
                                    child: TextField(
                                  controller:
                                      dateinput, //editing controller of this TextField
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(Icons
                                          .calendar_today), //icon of text field
                                      labelText: "Enter Date",
                                      hintStyle: TextStyle()
                                      //label text of field
                                      ),
                                  readOnly:
                                      true, //set it true, so that user will not able to edit text
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(
                                            2000), //DateTime.now() - not to allow to choose before today.
                                        lastDate: DateTime(2101));

                                    if (pickedDate != null) {
                                      print(
                                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                      String formattedDate =
                                          DateFormat('yyyy-MM-dd')
                                              .format(pickedDate);
                                      print(
                                          formattedDate); //formatted date output using intl package =>  2021-03-16
                                      //you can implement different kind of Date Format here according to your requirement

                                      setState(() {
                                        dateinput.text =
                                            formattedDate; //set output date to TextField value.
                                      });
                                    } else {
                                      print("Date is not selected");
                                    }
                                  },
                                ))),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "images",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            border: Border.all(width: 5, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          height: 120,
                          width: 170,
                          child: IconButton(
                              iconSize: 100,
                              onPressed: () {
                                pick_img();
                                setState(() {});
                              },
                              icon: Icon(Icons.camera_alt)),
                        ),
                        Container(
                          // height: 120,
                          // width: 170,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(width: 5, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: _imgFile != null
                              ? Image.file(
                                  _imgFile!,
                                  width: 170.0,
                                  height: 120.0,
                                  fit: BoxFit.fitHeight,
                                )
                              : Container(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(width: 5, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          // height: 120,
                          // width: 170,
                          child: _imgFile != null
                              ? Image.file(
                                  _imgFile!,
                                  width: 170.0,
                                  height: 120.0,
                                  fit: BoxFit.fitHeight,
                                )
                              : Container(),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(width: 5, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          // height: 120,
                          // width: 170,
                          child: _imgFile != null
                              ? Image.file(
                                  _imgFile!,
                                  width: 170.0,
                                  height: 120.0,
                                  fit: BoxFit.fitHeight,
                                )
                              : Container(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "montage image",
                          style: TextStyle(color: Colors.black),
                        )),
                    Divider(
                      color: Colors.black,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Generate images",
                          style: TextStyle(color: Colors.black),
                        )),
                    Divider(
                      color: Colors.black,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Ai Analysis",
                          style: TextStyle(color: Colors.black),
                        )),
                    Divider(
                      color: Colors.black,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Previous Orders",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
