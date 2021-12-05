import 'dart:convert';
import 'package:http/http.dart' as http;

const url =
    'https://asia-south1-velvety-broker-330605.cloudfunctions.net/password-manager';

Future<Map<String, List<dynamic>>> requestPassword(
    String email, String password) async {
  final uri = Uri.parse(url);
  final body = json.encode({'email': email, 'password': password});
  final headers = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  try {
    final response = await http.post(uri, body: body, headers: headers);
    final respBody = utf8.decode(response.bodyBytes);

    try {
      final value = jsonDecode(respBody) as Map;
      return Map<String, List<dynamic>>.from(value);
    } on FormatException catch (e) {
      throw respBody;
    }
  } catch (e) {
    throw e.toString();
  }
}
