import 'package:foodieadmin/model/deliveredorders.dart';
import 'package:http/http.dart' as http;


Future<List<Deliveredorders>>  getdata() async {
  var url = Uri.https("admin-final.herokuapp.com", "/deliveryorders");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var body = deliveredordersFromJson(response.body);
    return body;
  } else {
    throw Exception('failed to load');
  }
}