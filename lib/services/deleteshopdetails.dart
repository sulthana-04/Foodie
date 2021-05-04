import 'package:http/http.dart' as http;

Future<bool> deleteshopdetails( String id) async {
  
  var url = Uri.https('admin-final.herokuapp.com', '/posts/$id', {'q': '{http}'});
  final response = await http.delete(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  if (response.statusCode == 200) {
  
   
  return true;
  
  } else {
    throw Exception('failed to load');
  }
}

