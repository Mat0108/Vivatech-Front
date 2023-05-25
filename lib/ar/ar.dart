import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/config_planedetection.dart';
import 'dart:math';
import 'package:vector_math/vector_math_64.dart';
import 'package:geolocator/geolocator.dart';

class AR extends StatefulWidget {
  const AR({super.key, required this.latitude, required this.longitude});

  final double latitude;
  final double longitude;

  @override
  State<AR> createState() => _AR();
}

class _AR extends State<AR> with TickerProviderStateMixin {
  ARSessionManager? arSessionManager;
  ARObjectManager? arObjectManager;
  bool _showFeaturePoints = false;
  bool _showPlanes = false;
  bool _showWorldOrigin = false;
  bool _showAnimatedGuide = true;
  String _planeTexturePath = "/assets/images/unlock.png";
  bool _handleTaps = false;

  Position position = Position(
      longitude: 2.294481,
      latitude: 48.85837,
      timestamp: DateTime(32000),
      accuracy: 0,
      altitude: 0,
      heading: 0,
      speed: 0,
      speedAccuracy: 0);
  ARNode? localObjectNode;
  Future<Position?> getPos() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  updatePosition() {
    getPos().then((value) => setState(() => position = value!));
  }

  double calculCord() {
    double angle = atan((widget.latitude - position.latitude) /
            (widget.longitude - position.longitude)) *
        (180 / pi);

    if (widget.latitude > 0 && widget.longitude < 0) {
      angle = 90 + (90 + angle);
    }
    if (widget.latitude < 0 && widget.longitude < 0) {
      angle = angle + 180;
    }
    if (widget.latitude < 0 && widget.longitude > 0) {
      angle = 360 + angle;
    }
    return angle;
  }

  @override
  void dispose() {
    super.dispose();
    arSessionManager!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Debug Options'),
        ),
        body: Container(
            child: Stack(children: [
          ARView(
            onARViewCreated: onARViewCreated,
            planeDetectionConfig: PlaneDetectionConfig.horizontalAndVertical,
            showPlatformType: true,
          ),
          Align(
            alignment: FractionalOffset.bottomRight,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              color: Color(0xFFFFFFF).withOpacity(0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SwitchListTile(
                    title: Text(calculCord().toString()),
                    value: _showFeaturePoints,
                    onChanged: (bool value) {
                      setState(() {
                        _showFeaturePoints = value;
                        onLocalObjectAtOriginButtonPressed();
                      });
                    },
                  ),
                  SwitchListTile(
                    title: const Text('Planes'),
                    value: _showPlanes,
                    onChanged: (bool value) {
                      setState(() {
                        _showPlanes = value;
                        updateSessionSettings();
                      });
                    },
                  ),
                  SwitchListTile(
                    title: const Text('World Origin'),
                    value: _showWorldOrigin,
                    onChanged: (bool value) {
                      setState(() {
                        _showWorldOrigin = value;
                        updateSessionSettings();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ])));
  }

  void onARViewCreated(
      ARSessionManager arSessionManager,
      ARObjectManager arObjectManager,
      ARAnchorManager arAnchorManager,
      ARLocationManager arLocationManager) {
    this.arSessionManager = arSessionManager;
    this.arObjectManager = arObjectManager;

    this.arSessionManager!.onInitialize(
          showFeaturePoints: _showFeaturePoints,
          showPlanes: _showPlanes,
          customPlaneTexturePath: _planeTexturePath,
          showWorldOrigin: _showWorldOrigin,
          showAnimatedGuide: _showAnimatedGuide,
          handleTaps: _handleTaps,
        );
    this.arObjectManager!.onInitialize();
  }

  void updateSessionSettings() {
    this.arSessionManager!.onInitialize(
          showFeaturePoints: _showFeaturePoints,
          showPlanes: _showPlanes,
          customPlaneTexturePath: _planeTexturePath,
          showWorldOrigin: _showWorldOrigin,
        );
  }

  Future<void> onLocalObjectAtOriginButtonPressed() async {
    if (this.localObjectNode != null) {
      this.arObjectManager!.removeNode(this.localObjectNode!);
      this.localObjectNode = null;
    } else {
      var newNode = ARNode(
          type: NodeType.webGLB,
          uri:
              "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/Duck/glTF-Binary/Duck.glb",
          scale: Vector3(0.2, 0.2, 0.2),
          position: Vector3(0.0, 0.0, 0.0),
          rotation: Vector4(1.0, 0.0, 0.0, 0.0));
      bool? didAddLocalNode = await this.arObjectManager!.addNode(newNode);
      this.localObjectNode = (didAddLocalNode!) ? newNode : null;
    }
  }
}
