import 'package:flutter/material.dart';
import 'package:state_management/Service/userservice.dart';
import 'package:state_management/model/user_Class.dart';

class JsonExample extends StatefulWidget {
  @override
  _JsonExampleState createState() => _JsonExampleState();
}

class _JsonExampleState extends State<JsonExample> {
  final TextEditingController _controller = TextEditingController();
  Future<User> futureAlbum;

  set futureBuilder(FutureBuilder<User> futureBuilder) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON Example'),
      ),
      body: FutureBuilder<List<User>>(
        future: fetchJSONData(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());

          return ListView(
            children: snapshot.data
                .map((user) => ListTile(
                      title: Text(user.name),
                      subtitle: Text(user.email),
                      onTap: () {},

                      leading: CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        child: Text(user.name[0],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            )),
                      ),



                      trailing: Column(children: [
                        Text("street:${user.address.street}"),
                        Text("city:${user.address.city}"),
                        Text("suite:${user.address.suite}"),
                      ]),
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}
