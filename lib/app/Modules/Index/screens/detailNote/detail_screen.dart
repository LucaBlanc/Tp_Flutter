import 'package:flutter/material.dart';
import 'package:tp_flutter/app/Modules/Index/screens/index/index_screen.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            shape: Border(bottom: BorderSide(color: Colors.black, width: 1)),
            elevation: 0,
            titleSpacing: 10,
            leading: IconButton(
              iconSize: 35,
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IndexScreen()),
                );
              },
            ),
            title: new Text(
              " MES NOTES",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                new Container(
                  child: Column(
                    children: [
                      new Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "COURS PHILO #34",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 35,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 4, 0, 50),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "07 - 07 - 2021",
                                    style: TextStyle(
                                      color: Colors.black26,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum.",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  ClipRRect(
                                    child: Image.asset(
                                      'assets/images/backflutter.jpg',
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  color: Colors.black87,
                                  height: 4,
                                  width: 350,
                                  margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
                                  alignment: Alignment.centerLeft,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
