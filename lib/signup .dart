import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/widgets.dart';
import 'package:retinascan/home.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:url_launcher/url_launcher.dart';

class sign_page extends StatefulWidget {
  const sign_page({super.key});

  @override
  State<sign_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<sign_page> {
  bool isvalue = false;
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // Future register({required String email, required String password}) async {
  //   try {
  //     final ok = await _auth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     print("okk..$ok");
  //     // return Navigator.push(
  //     //   context,
  //     //   MaterialPageRoute(builder: (context) => Appointment()),
  //     // );
  //   } on FirebaseAuthException catch (e) {
  //     return " mmmmm....$e.message";
  //   }
  // }

  // Future sigin_in({required String email, required String password}) async {
  //   try {
  //     final ok = await _auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     // ignore: use_build_context_synchronously
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text("your sugin")));
  //     print("okk..$ok");
  //     return Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => Appointment()),
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     return " mmmmm....$e.message";
  //   }
  // }

  // void _signOut() {
  //   FirebaseAuth.instance.signOut();

  //   //print('$user');
  // }

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child:
                      Image(height: 400, image: AssetImage("images/image.jpg")),
                ),
                Container(
                  child: Container(
                      child: TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                        label: const Text("ENTER YOUR EMAIL"),
                        fillColor: const Color.fromARGB(255, 0, 0, 0),
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                          borderSide:
                              const BorderSide(style: BorderStyle.solid),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 49, 49, 49),
                          ),
                        )),
                  )),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: TextFormField(
                      controller: _password,
                      decoration: InputDecoration(
                          label: const Text("password"),
                          fillColor: const Color.fromARGB(255, 0, 0, 0),
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0),
                            borderSide:
                                const BorderSide(style: BorderStyle.solid),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.0),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 49, 49, 49),
                            ),
                          )),
                    )),
                ElevatedButton(
                    onPressed: () {
                      FirstAlertDialog();
                      // isvalue
                      //     ? register(email: _email.text, password: _password.text)
                      //     : sigin_in(email: _email.text, password: _password.text);
                    },
                    child: Text("Sigin in")),
                GestureDetector(
                  onTap: () async {
                    const url = 'retinoscan.freshtronics.in/privacy.html';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: true, enableJavaScript: true);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Center(
                    child: Text(
                      "privacy policy",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () async {
                    const url = 'retinoscan.freshtronics.in/terms.html';
                    if (await canLaunch(url)) {
                      await launch(url,
                          forceWebView: true, enableJavaScript: true);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Center(
                    child: Text(
                      "Term And Condition",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
