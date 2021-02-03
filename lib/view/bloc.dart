
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management/model/event.dart';
import 'package:state_management/modelview/blockCounter.dart';


class Bloc_screen  extends StatefulWidget {
  @override
  _Bloc_ScreenState createState() => _Bloc_ScreenState();
}

class _Bloc_ScreenState extends State<Bloc_screen> {

  final _bloc = BlocCounter();  /// Call for blockCounter dart  class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bloc "),
      ),
      body: Center(
        child: StreamBuilder(

          stream: _bloc.counter, ///

          initialData: 0, /// initial values 0

          builder: (BuildContext context, AsyncSnapshot<int> snapshot){ /// create a one snapshot variable  in async


            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Flutter Bloc", style: TextStyle(fontStyle: FontStyle.italic,fontSize: 25),),
                Text(
                    '${snapshot.data}',
                    style: TextStyle(fontSize: 30)
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.black,
            onPressed: (){
              print("Increment");
              //class bloc class by passing IncrementEvent
              _bloc.counterEventSink.add(InCrementCounter());///call for  increment counter in event dart class
            },
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            backgroundColor: Colors.teal,
            onPressed: (){
              print("Decrement");
              //class bloc class by passing DecrementEvent
              _bloc.counterEventSink.add(DeCrementCounter());///call for  decrement counter in event dart class
            },
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

  }
}
