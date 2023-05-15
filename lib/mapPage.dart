import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:mpcbiergarten/restaurantPage.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  MapController mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return  FlutterMap(
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
                tooltip: "Peters Biergarten",
                icon: const Icon(
                  Icons.location_on,
                  color: Colors.green,
                  size: 50,
                ),
                onPressed: () {
                  // print("Biergarten 1");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        const RestaurantPage(name: "Peters Biergarten")
                    )
                  );
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
    );
  }
}
