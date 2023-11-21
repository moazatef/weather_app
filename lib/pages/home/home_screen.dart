import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:weather_app2/controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController controller=HomeController(city: "cairo");
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromRGBO(113, 92, 233, 1),  
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child:  GNav(
            padding: const EdgeInsets.all(25),
            gap: 8,
            duration: const Duration(milliseconds: 400),
            selectedIndex: _selectedIndex,
            onTabChange:(index){
              setState(() {
                _selectedIndex=index;
                print(index);
              });
            } ,
            backgroundColor: Colors.white,
            tabs:  [
              const GButton(
                
                icon: Icons.home_filled,
                text: "Home",
                iconColor: Colors.grey,
              ),
               GButton(
                icon: Icons.search,
                text: "Search",
                iconColor: Colors.grey,
                onPressed: (){
                  _showBottomSheetSearch(context);
                },
              ),
              GButton(
                icon: Icons.expand_less_outlined,
                iconColor: Colors.grey,
                text: "Forecast",
                onPressed: (){
                  _showBottomSheetsearch(context);
                },
              ),
              const GButton(
                icon: Icons.location_on,
                text: "location",
                iconColor: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white12),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '📍${(controller.Weather.main.temp- 273.15).round().toString()}\u2103 ', 
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 15.0),
                      ),
                       const SizedBox(
                        height: 9.0,
                      ),
                      const Text(
                        'GOOD MORNING',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                      Image.asset('lib/assets/images/3.png'),
                      const Center(
                        child: Text(
                          '22°C',
                          style: TextStyle(
                            fontSize: 70.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Center(
                        child: Text(
                          'Monday 21 . 10.00 AM',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Center(
                        child: Text(
                          'RANIY',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Wind',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            '9 km/h',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Humidit',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '40%',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      // SfSparkLineChart(
                      //   //Enable the trackball
                      //   trackball: const SparkChartTrackball(
                      //       activationMode: SparkChartActivationMode.tap),
                      //   marker: const SparkChartMarker(
                      //       displayMode: SparkChartMarkerDisplayMode.all),
                      //   labelDisplayMode: SparkChartLabelDisplayMode.all,
                      //   data: const <double>[13, -6, 7, 5, 11, 5, 3],
                      // ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }


void _showBottomSheetsearch(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    builder: (BuildContext context) {
      return Container(
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.album),
              title: const Text('Item 1'),
              onTap: () {
                // Do something
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.album),
              title: const Text('Item 2'),
              onTap: () {
                // Do something
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.album),
              title: const Text('Item 3'),
              onTap: () {
                // Do something
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}




void _showBottomSheetSearch(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
    ),
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Wrap(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                      labelText: 'Enter The Location',
                      
                    ),
                    
              )
            ],
          ),
        ),
      );
    },
  );
}



}
