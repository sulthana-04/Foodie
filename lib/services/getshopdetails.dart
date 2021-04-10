import 'package:http/http.dart' as http;
import 'package:foodieadmin/model/shopdetails.dart';

Future<List<Shop>>  getdata() async {
  var url = Uri.https("admin-final.herokuapp.com", "/posts");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var body = shopFromJson(response.body);
    return body;
  } else {
    throw Exception('failed to load');
  }
}

