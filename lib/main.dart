import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  )
  );
}
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        title: Text('Login Page...'),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Image(image: AssetImage('images/i_am_rich_app_icon.png'),),),
            SizedBox(
              height: 20.0,
            ),
            Text('Hello',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 30.0,),),
            Text('Suparna Banerjee',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 25.0,letterSpacing: 3.0),),
            SizedBox(
              height: 30.0,
              width: 300.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(Icons.phone,color: Colors.green,),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('+91 8584937149',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20.0,),),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(Icons.email,color: Colors.blue,),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('abcd@gmail.com',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20.0,),),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(Icons.lock,color: Colors.red,),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('********',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20.0,),),
                ],
              ),
            ),
            RaisedButton(
              disabledColor: Colors.red,
                child: Text('Login',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SecPage()));
                }
            ),
          ],
        ),
      ),
    );
  }
}

class SecPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: Text('Logged in Successfully.'),),
    );
  }
}
