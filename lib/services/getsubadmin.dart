import 'package:http/http.dart' as http;
import 'package:foodieadmin/model/subadminmodels.dart';


Future<List<Subadminals>>  getdata() async {
  var url = Uri.https("admin-final.herokuapp.com", "/subadmin");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var body = subadminalsFromJson(response.body);
            return body;
          } else {
            throw Exception('failed to load');
          }
        }
    
   