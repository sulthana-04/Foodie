import 'dart:convert';

import 'package:foodieadmin/model/shopdetails.dart';
import 'package:http/http.dart' as http;

import '../model/shopdetails.dart';

Future<Shop> postdata(
    {String hotelsname,
    String hotelslocation,
    String hotelsaddress,
    String pincode,
    String ownersname,
    String ownersaddress,
    String contactnumber,
    String email,
    String password}) async {
  var url = Uri.https("admin-final.herokuapp.com", "/posts/");
  final response = await http.post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      "Hotelsname": hotelsname,
      "Hotelslocation": hotelslocation,
      "Hotelsaddress": hotelsaddress,
      "Pincode": pincode,
      "Ownersname": ownersname,
      "Ownersaddress": ownersaddress,
      "Contactnumber": contactnumber,
      "Email": email,
      "Password": password
    }),
  );
  if (response.statusCode == 200) {
    print('Posted');
    print(response.statusCode);
    // var responseBody = Shop.fromJson(jsonDecode(response.body));
    // return responseBody;
    return Shop.fromJson(jsonDecode(response.body));
  } else {
    print(response.statusCode);
    throw Exception('Failed to post');
  }
}
