import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class WorldtimeApi {
  String url;
  String flag;
  String location;
  String time;

  WorldtimeApi({this.url, this.flag, this.location});

  Future<void> mainData() async {
    try {
      var urls = Uri.parse('http://worldtimeapi.org/api/timezone/$url');
      http.Response response = await http.get(urls);
      dynamic data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'];
      String newOffset = offset.substring(1, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(newOffset)));
      time = DateFormat.jm().format(now);
    } catch (e) {
      print(e);
      time = 'Opps...Time Data Not Found';
    }
  }
}
