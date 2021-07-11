import 'package:flutter/material.dart';
import 'package:tp_flutter/app/Modules/Index/screens/detailNote/detail_screen.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            shape: Border(bottom: BorderSide(color: Colors.black, width: 1)),
            elevation: 0,
            titleSpacing: 50,
            title: new Text(
              "MES NOTES",
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
                        height: 450,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        margin:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                        child: MyCustomForm(),
                      ),
                      new Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                        margin:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                        child: MyNotes(),
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

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: Row(
              children: <Widget>[
                Text(
                  "NOUVELLE NOTE",
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w100,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Titre',
              labelStyle: TextStyle(color: Colors.grey),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Un titre est nécéssaire';
              }
              return null;
            },
          ),
          Spacer(
            flex: 1,
          ),
          TextFormField(
            maxLines: 5,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Contenu',
              labelStyle: TextStyle(color: Colors.grey),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Un contenue est obligatoir';
              }
              return null;
            },
          ),
          Spacer(
            flex: 1,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black45),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Colors.black45)))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text('Ajouter une image'),
              ),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                showGeneralDialog(
                  barrierLabel: "Label",
                  barrierDismissible: true,
                  barrierColor: Colors.black.withOpacity(0.7),
                  transitionDuration: Duration(milliseconds: 400),
                  context: context,
                  pageBuilder: (context, anim1, anim2) {
                    return Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 500,
                        width: 500,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(50, 400, 50, 50),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ))),
                            child: Text("CAPTURER UNE IMAGE"),
                          ),
                        ),
                        margin: EdgeInsets.only(left: 45, right: 45),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage("assets/images/backflutter.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                  transitionBuilder: (context, anim1, anim2, child) {
                    return SlideTransition(
                      position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
                          .animate(anim1),
                      child: child,
                    );
                  },
                );
              },
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black45),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black45)))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                  child: Text('AJOUTER MA NOTE'),
                ),
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Envoie des donées')));
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyNotes extends StatefulWidget {
  @override
  MyNotesState createState() {
    return MyNotesState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MyNotesState extends State<MyNotes> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Card(
      elevation: 0.0,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: Text(
              "MES NOTES SAUVEGARDÉES",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
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
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 12),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "07 - 07 - 2021",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 13,
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
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.black87,
                height: 4,
                width: 300,
                margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
                alignment: Alignment.centerLeft,
              )
            ],
          ),
          //space
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "COURS PHILO #33",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 12),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "13 - 06 - 2021",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 13,
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
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.asset(
                            'assets/images/backflutter.jpg',
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
