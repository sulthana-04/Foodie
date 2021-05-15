class ApiUrls {
  static String baseUrl = 'https://foodie-main.herokuapp.com';
  static String adminApp = baseUrl + '/admin';
  static String hotelApp = baseUrl + '/hotel';
  static String deliveryApp = baseUrl + '/delivery';

  //Admin App Urls
  static String login = adminApp + '/api/user/login';
  static String shop = adminApp + '/hoteldetails';
  static String subAdmin = adminApp + '/subadmin';
  static String deliveryBoys = adminApp + '/deliveryboy';

  //Hotel App Urls
  static String orders = hotelApp + '/orderdetails';

  //Delivery App Urls

}
