
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management/bloc/validate.dar.dart';
import 'package:state_management/model/loginEvent.dart';


class Login_screen  extends StatefulWidget {
  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_screen> {

  final _login = ValidateCounter();  /// Call for blockCounter dart  class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login Bloc "),
      ),
      body: Center(
        child: StreamBuilder(

          stream: _login.counter, ///

          // initialData: 0, /// initial values 0

          builder: (BuildContext context, AsyncSnapshot<int> snapshot){ /// create a one snapshot variable  in async


            return Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 2)),
                    contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    labelText: "Name",
                    labelStyle:  TextStyle(color: Colors.black),
                    hintText: "Veeru",

                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 2)),
                    contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    labelText: "Email",
                    labelStyle:  TextStyle(color: Colors.black),
                    hintText: "veeru@gmail.com",

                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 2)),
                    contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    labelText: "Phone",
                    labelStyle:  TextStyle(color: Colors.black),
                    hintText: "+91-9008434125",

                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 2)),
                    contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    labelText: "Password",
                    labelStyle:  TextStyle(color: Colors.black),
                    hintText: "******",

                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  RaisedButton(onPressed: (){
                    // _login.counterEventSink.add(Save());
                  },
                    child: Text('Save'),),
                  RaisedButton(onPressed: (){
                    // _login.counterEventSink.add(Clear());
                        },
                    child: Text('Clear'),),
                ],
                ),
                // Text(
                //     '${snapshot.data}',
                //     style: TextStyle(fontSize: 30)
                // ),
              ],
            );
          },
        ),
      ),

    );
  }

  @override
  void dispose() {
    super.dispose();

  }
}
