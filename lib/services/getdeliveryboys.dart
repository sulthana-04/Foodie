
import 'package:foodieadmin/model/deliveryboys.dart';
import 'package:http/http.dart' as http;


Future<List<Deliveryboys>>  getdata() async {
  var url = Uri.https("deliveryboy-app.herokuapp.com", "/deliveryboy");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var body = deliveryboysFromJson(response.body);
    print(body);
    return body;
  } else {
    throw Exception('failed to load');
  }
}