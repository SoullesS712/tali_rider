import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tali_rider/model/location_model.dart';
import 'AnimatedSwitch.dart';
import 'Dropdownbutton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var locationModel = Provider.of<LocationModel>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24, 74, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'GPS for riders',
                            ),
                          ],
                        ),
                      ),
                      const Padding(padding: const EdgeInsets.all(17)),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'GPS',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Nunito',
                              fontWeight: FontWeight.w100,
                              fontSize: 92,
                            ),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.all(10)),
                      const AnimatedSwitch(),
                      const Padding(padding: EdgeInsets.all(20)),
                      const Text(
                        'Tali Code : ',
                        style: TextStyle(fontSize: 34),
                      ),
                      const Padding(padding: EdgeInsets.all(10)),
                      const Dropdownbutton(car: []),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Text(
                    'Latitude: ${locationModel.latitude}\n\nLongitude: ${locationModel.longitude}'),
              ],
            )));
  }
}
