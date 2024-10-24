// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class NetworkUtil {
//
//   static NetworkUtil _instance = new NetworkUtil.internal();
//   NetworkUtil.internal();
//   factory NetworkUtil() => _instance;
//
//   final JsonDecoder _decoder = new JsonDecoder();
//
//   Future<dynamic> get (String url, {Map<String,String>? headers}) {
//     return http.get(Uri.parse(url), headers: headers).then((http.Response response) {
//       final String res = response.body;
//       final int statusCode = response.statusCode;
//       if (statusCode < 200 || statusCode > 400) {
//         throw new Exception("Error while fetching data");
//       }
//       return _decoder.convert(res);
//     });
//   }
//
//   Future<dynamic> post(String url, {Map<String,String>? headers, body, encoding}) {
//     return http
//         .post(Uri.parse(url), body: body, headers: headers, encoding: encoding)
//         .then((http.Response response) {
//       final String  res = response.body;
//       final int statusCode = response.statusCode;
//
//       if (statusCode < 200 || statusCode > 400) {
//         print(statusCode);
//         throw new Exception("Error while fetching data");
//       }
//       return _decoder.convert(res);
//     });
//   }
// }