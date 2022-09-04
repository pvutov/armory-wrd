import 'package:http/http.dart' as http;
import 'dart:convert';

class CrudServices{
  Uri baseUrl = Uri.parse("https://pvutov.com:443/items");
  Map<String, String> headers = {
    "Content-Type": "application/json; charset=UTF-8"};

  Future<http.Response> createItem(String name, String price) async{
    var body = jsonEncode({"name": name, "price": price});
    http.Response response = await http.post(
        baseUrl,
        headers: headers,
        body: body);
    return response;
  }

  Future<http.Response> getItems() async{
    http.Response response = await http.get(
        baseUrl,
        headers: headers);
    return response;
  }
}