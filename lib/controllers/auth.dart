import 'package:http/http.dart' as http;

class Auth {
  Future<String> login({String username, password}) async {
    try {
      var responce = await http.get(
          "https://saswatiparseserver.herokuapp.com/parse/login?username=$username&password=$password",
          headers: {
            "X-Parse-Application-Id": "saswati1995",
            "Content-Type": "application/json"
          });
          print(responce.body);
    } catch (e) {
      print(e);
    }
  }
}