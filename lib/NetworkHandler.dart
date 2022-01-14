import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class NetworkHandler
{
  var logger = Logger();

  String baseurl = "https://slimy-cheetah-79.loca.lt/";

  Future post(String url,Map<String, String> body)async
  {
    url=formater(url);
    var response = await http.post(
        Uri.parse(url),
        headers: {"Content-type": "application/json"},
        body: json.encode(body)
    );
    logger.d(response.body);
    return json.decode(response.body);
  }

  String formater(String url)
  {
    return baseurl + url;
  }
}
