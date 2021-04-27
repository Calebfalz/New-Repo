import 'package:flutter/material.dart';
import 'package:worldtime_app/services/worldtime_api.dart';

class Locations extends StatefulWidget {
  Locations({Key key}) : super(key: key);

  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  List<WorldtimeApi> locations = [
    WorldtimeApi(url: 'Africa/Lagos', location: 'Lagos'),
    WorldtimeApi(url: 'Europe/London', location: 'London'),
    WorldtimeApi(url: 'America/Chicago', location: 'Chicago')
  ];

  void updateTime(index) async {
    WorldtimeApi allLocations = locations[index];
    await allLocations.mainData();
    Navigator.pop(context, {
      'locations': allLocations.location,
      'flag': allLocations.flag,
      'url': allLocations.url
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Locations'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                updateTime(index);
                print('${locations[index].location} has been tapped');
              },
              title: Text(locations[index].location),
              leading: CircleAvatar(
                child: Image.asset('name'),
              ),
            ),
          );
        },
      ),
    );
  }
}
