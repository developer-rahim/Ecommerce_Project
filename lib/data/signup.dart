import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  bool password = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SINGUP',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'PAGE',
              style: TextStyle(
                  color: Colors.pink, fontFamily: 'rrr', fontSize: 30),
            )
          ],
        ),
        // leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: FlutterLogo(
                size: 80,
              ),
              radius: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 155, 182, 204),
                        filled: true,
                        label: Text('Full Name'),
                        hintText: 'Enter Your FUll Name',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(36))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 207, 125, 221),
                        filled: true,
                        label: Text('Email'),
                        hintText: 'Enter Your Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(36))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: password,
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 209, 120, 149),
                        filled: true,
                        label: Text('Password'),
                        hintText: 'Enter Your Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: InkWell(
                          onTap: () => www(),
                          child: Icon(password
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(36))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: password,
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 123, 199, 125),
                        filled: true,
                        label: Text(' Conform Password'),
                        hintText: 'Enter Your Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: InkWell(
                          onTap: () => www(),
                          child: Icon(password
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(36))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.red,
                            Colors.purple,
                            Colors.blueAccent,
                            Colors.grey
                          ]),
                          borderRadius: BorderRadius.circular(35)),
                      child: Center(
                          child: Text(
                        'SINGUP',
                        style: TextStyle(fontSize: 20, fontFamily: 'rrr'),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  www() {
    setState(() {
      password = !password;
    });
  }
}
