
import 'dart:io';

class User{
  final int id;
  final String name;
  final String email;
  Address address;


  User({this.id,  this.name, this.email, this.address});

  factory User.fromJson(Map<String, dynamic> json)
  {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],

      address: json['address'] != null ?  Address.fromJson(json['address']) : null

    );
  }


  // Map<String,dynamic> toJson()=>{
  //   "id":id,
  //   "name":name,
  //   "email":email,
  // };

}
class Address
{
  final String street;
  final String city;
  final String suite;


   Address ({this.city,this.street, this .suite});

  factory Address.fromJson(Map<String,dynamic> json)
  {
    return Address(
      city: json["city"],
      street: json["street"],
      suite: json["suite"],
    );
  }
}
