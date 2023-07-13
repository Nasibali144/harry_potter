import 'package:harry_potter/core/apis.dart';
import 'package:http/http.dart';


sealed class Network {

  static Future<String?> methodGet({required String api, String? id, Map<String, String> headers = Api.headers, String baseUrl = Api.baseUrl}) async {
    try {
      Uri url = Uri.https(baseUrl, "$api${id != null ? "/$id" : ""}");
      final response = await get(url, headers: headers);
      if(response.statusCode == 200) {
        return response.body;
      }
      return null;
    } catch(e) {
      return null;
    }
  }
}