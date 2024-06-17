import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class Maketrip extends StatefulWidget {
  const Maketrip({super.key});

  @override
  State<Maketrip> createState() => _MaketripState();
}

class _MaketripState extends State<Maketrip> {
  late GoogleMapController _mapController;
  LatLng? _currentPosition;
  LatLng? _selectedPosition;
  double _pricePerKm = 30.0;
  double _totalPrice = 0.0;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude);
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  void _onTap(LatLng position) {
    setState(() {
      _selectedPosition = position;
      if (_currentPosition != null) {
        double distanceInMeters = Geolocator.distanceBetween(
          _currentPosition!.latitude,
          _currentPosition!.longitude,
          position.latitude,
          position.longitude,
        );
        double distanceInKm = distanceInMeters / 1000;
        _totalPrice = distanceInKm * _pricePerKm;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make Trip'),
      ),
      body: _currentPosition == null
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _currentPosition!,
                    zoom: 14.0,
                  ),
                  markers: {
                    if (_currentPosition != null)
                      Marker(
                        markerId: const MarkerId('currentLocation'),
                        position: _currentPosition!,
                        infoWindow: const InfoWindow(title: 'Current Location'),
                      ),
                    if (_selectedPosition != null)
                      Marker(
                        markerId: const MarkerId('selectedLocation'),
                        position: _selectedPosition!,
                        infoWindow: const InfoWindow(title: 'Selected Location'),
                      ),
                  },
                  onTap: _onTap,
                ),
                Positioned(
                  bottom: 16.0,
                  left: 16.0,
                  right: 16.0,
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8.0,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Total Price: ₹${_totalPrice.toStringAsFixed(2)}',
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8.0),
                        ElevatedButton(
                          onPressed: _selectedPosition == null ? null : () {
                            // Implement booking functionality here
                          },
                          child: const Text('Book Now'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
