import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tele_op/main.dart';

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: RegisterPage(),
  );
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 66, 135, 245),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('Register',
                  style: GoogleFonts.acme(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Create your account',
              style: GoogleFonts.acme(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),

            // color: Colors.white,

            Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.3, right: screenSize.width * 0.3),
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(197, 218, 221, 231),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(50.0), //<-- SEE HERE
                    ),
                    hintText: 'Enter Your Username',
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            // ignore: prefer_const_constructors

            SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: screenSize.width * 0.3,
                    right: screenSize.width * 0.3),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(197, 218, 221, 231),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        borderRadius:
                            BorderRadius.circular(50.0), //<-- SEE HERE
                      ),
                      hintText: 'Enter Your Email',
                      labelText: 'EmailAddress',
                      prefixIcon: Icon(Icons.email)),
                )),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.3, right: screenSize.width * 0.3),
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(197, 218, 221, 231),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(50.0), //<-- SEE HERE
                    ),
                    hintText: 'Enter Your PassWord',
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock)),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.3, right: screenSize.width * 0.3),
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(197, 218, 221, 231),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.circular(50.0), //<-- SEE HERE
                    ),
                    hintText: 'Confirim Your Password',
                    labelText: 'Confirm Password',
                    prefixIcon: Icon(Icons.lock)),
              ),
            ),

            SizedBox(
              height: 50,
            ),
            Text(
              'By registering,you are agreeing to ',
              style: GoogleFonts.acme(
                  fontSize: 13, color: Color.fromARGB(152, 204, 213, 215)),
            ),
            Text(
              'our terms of use and privacy policy.',
              style: GoogleFonts.acme(fontSize: 13, color: Colors.white),
            ),
            // TextButton(onPressed: null, child: Text('Register')),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.lightBlueAccent,
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    child: Text(
                      'Register',
                      style:
                          GoogleFonts.acme(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePage()));
              },
              child: Text(
                'Already have an account? Login',
                style: GoogleFonts.acme(fontSize: 13, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
