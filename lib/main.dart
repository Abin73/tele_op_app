import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tele_op/firebase_options.dart';
import 'package:tele_op/homescreen.dart';
import 'package:tele_op/regstration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: const Text("TeleOP")),
      // ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            //border: Border.all(color: Colors.black, width: 4),
            // borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [
              Color(0xFF00054ff),
              Color.fromARGB(255, 71, 130, 248)
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    "Welcome Back ",
                    style:
                        TextStyle(height: 1, fontSize: 30, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Login to your account",
                    style:
                        TextStyle(height: 1, fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width * 0.3,
                        right: screenSize.width * 0.3),
                    child: Container(
                      decoration: BoxDecoration(
                        //border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.circular(13),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 155, 227, 245),
                          Color.fromARGB(255, 142, 202, 232)
                        ]),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            border: UnderlineInputBorder(),
                            labelText: 'Username',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 65, right: 65),
                    child: Container(
                      decoration: BoxDecoration(
                        //border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 155, 227, 245),
                          Color.fromARGB(255, 155, 227, 245)
                        ]),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.lock),
                              labelText: 'Password',
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 65),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPassword()));
                          },
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(65),
                    child: Container(
                      height: 50,
                      width: 150,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromARGB(255, 37, 4, 223)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 237, 235, 243)),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPage()));
                        },
                        child: Text('LOGIN'),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
