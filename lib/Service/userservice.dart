
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:state_management/model/user_Class.dart';





Future<List<User>> fetchJSONData() async {
  final String apiURL = 'https://jsonplaceholder.typicode.com/users';

  var jsonResponse = await http.get(apiURL);

  if (jsonResponse.statusCode == 200) {

    final jsonItems = json.decode(jsonResponse.body).cast<Map<String, dynamic>>();

    List<User> usersList = jsonItems.map<User>((json) {
      return User.fromJson(json);
    }).toList();

    return usersList;

    // return(jsonResponse.data as List).map(employee)
    //     {
    //       print('Inserting $employee');
    //       DBProvider.db.createEmployee(Employee.fromJson(employee))
    //     }
  } else {
    throw Exception('Failed to load data from internet');
  }
}


