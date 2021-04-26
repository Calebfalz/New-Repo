import 'dart:convert';
import 'package:http/http.dart' as http;

class WorldtimeApi {
  String url;
  String flag;
  String location;
  String time;

  WorldtimeApi({this.url, this.flag, this.location});

  Future<void> mainData() async {
    try {
      var url = Uri.parse('http://worldtimeapi.org/api/timezone/Africa/Lagos');
      http.Response response = await http.get(url);
      dynamic data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'];
      String newOffset = offset.substring(1, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(newOffset)));
      print(now);
    } catch (e) {}
  }
}
