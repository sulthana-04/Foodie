import 'dart:convert';

import 'package:http/http.dart' as http;

//recieves an id and a string with function call
//string which has to be updated in the DB
Future<bool> editshopdetails(String hotelsname, String id,) async {

  var url = Uri.https('admin-final.herokuapp.com', '/posts/$id', {'q': '{http}'});
  //patch expects 3 parameters
  //url
  //headers
  //body- in which the field to be updated is send as json
  final response = await http.patch(url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      //body should be encoded to json using "jsonEncode" function
      body: jsonEncode({'Hotelsname': hotelsname}));
  if (response.statusCode == 200) {
    //Decode response body as per the needs or just leave it there
    return true;
  } else {
    return false;
  }
}
