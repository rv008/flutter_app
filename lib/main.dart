import 'package:flutter/material.dart';
import 'colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      theme: ThemeData(
        primaryColor: kprime,
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text('Resorts World at Sea Login'),
              textTheme: TextTheme(title: TextStyle(fontSize: 17.0)),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => null,
              )),
          body: MainBody()),
    );
  }
}

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
              child: Text(
                  "Dear user, if your membership ID starts with '0000', please remove the zeros and only enter digits.For example, 0000654321 is incorrect, 654321 is correct.",
                  style: TextStyle(fontSize: 15.0, wordSpacing: 1.2)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(16.0),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: klightgrey, width: 1.5),
                  ),
                  filled: true,
                  fillColor: klightergrey,
                  hintText: 'MemberShip ID',
                ),
              ),
            ),
            TextField(
              style: TextStyle(fontSize: 15.0, color: kdarkgrey),
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: klightgrey, width: 1.5),
                ),
                filled: true,
                fillColor: klightergrey,
                hintText: 'PIN',
              ),
            ),
            Spacer(),
            ButtonTheme(
              height: 50.0,
              minWidth: double.infinity,
              child: FlatButton(
                color: kprime,
                textColor: Colors.white,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
                onPressed: () {
                  /*...*/
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 17.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
