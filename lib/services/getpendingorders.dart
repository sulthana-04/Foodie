import 'package:foodieadmin/model/pendingorders.dart';
import 'package:http/http.dart' as http;


Future<List<Pendingorders>>  getdata() async {
  var url = Uri.https("admin-final.herokuapp.com", "/orders");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var body = pendingordersFromJson(response.body);
    return body;
  } else {
    throw Exception('failed to load');
  }
}