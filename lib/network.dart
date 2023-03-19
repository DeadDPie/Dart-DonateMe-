import 'package:http/http.dart' as http;

Future<String> sendPost(Map<String, dynamic> body) async {
  try {
    var response = await http.post(Uri.http("5.44.46.135:8000"), body: body);
    return response.body;
  } catch (error) {
    return "$error";
  }
}