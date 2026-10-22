import 'dart:convert' as convert;
import 'package:find_house/models/space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  Future<List<Space>> getData() async {
    final response = await http
        .get(Uri.parse('https://bwa-cozy-api.vercel.app/recommended-spaces'));

    if (response.statusCode == 200) {
      List jsonRespone = convert.json.decode(response.body);
      //  List data = jsonDecode(result.body);
      List<Space> spaces =
          jsonRespone.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      throw <Space>[];
    }
  }

  // var url =
  //     Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     var jsonResponse =
  //         convert.jsonEncode(response.body) as Map<String, dynamic>;
  //     var itemCount = jsonResponse['totalItems'];
  //     print('Number of books about http: $itemCount.');
  //   } else {
  //     print('Request failed with status: ${response.statusCode}.');
  //   }
  // }
}
