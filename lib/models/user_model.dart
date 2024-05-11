/*
  Created by: Claizel Coubeili Cepe
  Date: updated April 26, 2023
  Description: Sample todo app with Firebase 
*/
import 'dart:convert';

class Deets {
  String email;
  String fname;
  String lname;

  Deets({
    required this.email,
    required this.fname,
    required this.lname,
  });

  // Factory constructor to instantiate object from json format
  factory Deets.fromJson(Map<String, dynamic> json) {
    return Deets(
      email: json['email'],
      fname: json['fname'],
      lname: json['lname'],
    );
  }

  static List<Deets> fromJsonArray(String jsonData) {
    final Iterable<dynamic> data = jsonDecode(jsonData);
    return data.map<Deets>((dynamic d) => Deets.fromJson(d)).toList();
  }

  Map<String, dynamic> toJson(Deets deets) {
    return {
      'email': deets.email,
      'fname': deets.fname,
      'lname': deets.lname,
    };
  }
}
