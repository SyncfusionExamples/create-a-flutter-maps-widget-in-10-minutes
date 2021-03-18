import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // MapShapeSource _shapeSource;
  // List<MapModel> _mapData;

  // @override
  // void initState() {
  //   _mapData = _getMapData();
  //   _shapeSource = MapShapeSource.asset('assets/australia.json',
  //       shapeDataField: 'STATE_NAME',
  //       dataCount: _mapData.length,
  //       primaryValueMapper: (int index) => _mapData[index].state,
  //       dataLabelMapper: (int index) => _mapData[index].stateCode,
  //       shapeColorValueMapper: (int index) => _mapData[index].color);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: SfMaps(
            layers: [
              MapTileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                initialFocalLatLng: MapLatLng(-20, 147),
                initialZoomLevel: 3,
              )
            ],
          )),
    );
    // return Scaffold(
    //   body: Padding(
    //     padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
    //     child: SfMaps(
    //       title: const MapTitle('Austraila Map'),
    //       layers: <MapShapeLayer>[
    //         MapShapeLayer(
    //           source: _shapeSource,
    //           showDataLabels: true,
    //           legend: MapLegend(MapElement.shape),
    //           shapeTooltipBuilder: (BuildContext context, int index) {
    //             return Padding(
    //                 padding: EdgeInsets.all(7),
    //                 child: Text(_mapData[index].stateCode,
    //                     style: TextStyle(color: Colors.white)));
    //           },
    //           tooltipSettings: MapTooltipSettings(color: Colors.blue[900]),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }

  // static List<MapModel> _getMapData() {
  //   return <MapModel>[
  //     MapModel('Australian Capital Territory', 'ACT', Colors.amber),
  //     MapModel('New South Wales', '       New\nSouth Wales', Colors.cyan),
  //     MapModel('Queensland', 'Queensland', Colors.amber[400]),
  //     MapModel('Northern Territory', 'Northern\nTerritory', Colors.red[400]),
  //     MapModel('Victoria', 'Victoria', Colors.purple[400]),
  //     MapModel(
  //         'South Australia', 'South Australia', Colors.lightGreenAccent[200]),
  //     MapModel('Western Australia', 'Western Australia', Colors.indigo[400]),
  //     MapModel('Tasmania', 'Tasmania', Colors.lightBlue[100])
  //   ];
  // }
}

// class MapModel {
//   MapModel(this.state, this.stateCode, this.color);

//   String state;
//   String stateCode;
//   Color color;
// }
