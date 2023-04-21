import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  MapController mapController = MapController();

  static const List<Widget> _widgetOptions = <Widget>[    Text(      'Index 0: Home',    ),    Text(      'Index 1: Search',    ),    Text(      'Index 2: Profile',    ),  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biergarten',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Biergarten'),
        ),
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(49.133592481774116, 9.228640120723618),
            zoom: 13.0,
            minZoom: 10.0,
            maxZoom: 18.0,
            controller: mapController,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate:
              'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c'],
            ),
            MarkerLayerOptions(
              markers: [
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(49.138857433272385, 9.254136844067324),
                  builder: (ctx) => IconButton(
                    icon: const Icon(
                      Icons.location_on,
                      color: Colors.green,
                      size: 50,
                    ),
                    onPressed: () {
                      print("Biergarten 1");
                    },
                  ),
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(49.132980588602585, 9.263301254971836),
                  builder: (ctx) => const Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 50,
                  ),
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(49.133902849001146, 9.2049815172233),
                  builder: (ctx) => const Icon(
                    Icons.location_on,
                    color: Colors.green,
                    size: 50,
                  ),
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(49.127209816202466, 9.199046556108982),
                  builder: (ctx) => const Icon(
                    Icons.location_on,
                    color: Colors.green,
                    size: 50,
                  ),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Karte',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Suche',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'Mehr',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}