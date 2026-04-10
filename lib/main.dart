import 'package:flutter/material.dart';

void main() {
  runApp(FacebookApp_Ligin());
}

class FacebookApp_Ligin extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
              child: Text(
                'facebook',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 250,

                child: Center(
                  child: Text(
                    'Facebook helps you connect and share with the people in your life.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 280,
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hint: Text(
                            'Email address or phone number',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black38,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Container(
                        width: 280,
                        height: 50,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hint: Text(
                              'password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),

                    TextButton(
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(5),
                          ),
                        ),
                        fixedSize: WidgetStateProperty.all<Size>(Size(280, 50)),
                        backgroundColor: WidgetStateProperty.all<Color>(
                          Colors.blue,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Log in',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'forgotten password?',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        onTap: () {
                          print("will enter to the phone");
                        },
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(5),
                          ),
                        ),
                        fixedSize: WidgetStateProperty.all<Size>(Size(170, 50)),
                        backgroundColor: WidgetStateProperty.all<Color>(
                          Colors.green,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Create new account',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: Row(
                children: [
                  InkWell(
                    child: Text(
                      'Create a Page',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('for a celebrity,brand or business.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
