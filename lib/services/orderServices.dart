import 'package:foodieadmin/model/ordersModel.dart';
import 'package:http/http.dart' as http;

Future<List<OrdersModel>> getOrders() async {
  var url = Uri.https("foodiehotel.herokuapp.com", "/orderdetails");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var body = ordersModelFromJson(response.body);
    return body;
  } else {
    throw Exception('failed to load');
  }
}

List<List<OrdersModel>> sortPendingOrders(List<OrdersModel> pendingOrders) {
  List<OrdersModel> givenPendingOrders = List.empty(growable: true);
  givenPendingOrders = pendingOrders;
  List<String> hotelNames = List.empty(growable: true);

  List<List<OrdersModel>> sortedPendingOrdersList = List.empty(growable: true);
  while (givenPendingOrders.length != 0) {
    String hotelName = givenPendingOrders[0].hotelname;

    // String listname = hotelName.replaceAll(' ', '');
    List<OrdersModel> listname = List.empty(growable: true);
    List<int> index = List.empty(growable: true);
    int i = 0;
    while (givenPendingOrders.length != 0) {
      if (givenPendingOrders[i].hotelname.contains(hotelName)) {
        index.add(i);
        listname.add(givenPendingOrders[i]);
        print('one item added');
        givenPendingOrders.removeAt(i);
        i = i;
      } else {
        print('item Ignored');
        print(givenPendingOrders[i].hotelname);
        i++;
      }
    }
    sortedPendingOrdersList.add(listname);
  }

  return sortedPendingOrdersList;
}


// Future<bool> updateOrderStatus(String id, String status) async {
//   var url = Uri.https("foodiehotel.herokuapp.com", "/orderdetails/$id");
//   var response = await http.patch(url,
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode({
//         "statusdetails":  status
//       }));
//   if (response.statusCode == 200) {
//     return true;
//   } else {
//     return false;
//   }
// }