import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            titleSpacing: 50,
            title: new Text(
              "MES NOTES",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: new Container(
            child: Column(
              children: [
                new Container(
                  height: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1)),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                  child: MyCustomForm(),
                ),
                new Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                  child: MyNotes(),
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
          ElevatedButton(
            style: ButtonStyle(
                alignment: Alignment.topLeft,
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
              if (_formKey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            },
          ),
          Spacer(
            flex: 1,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black45),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.black45)))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              child: Text('AJOUTER MA NOTE'),
            ),
            onPressed: () {
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            },
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
      child: Column(
        children: <Widget>[
          Text("test"),
        ],
      ),
    );
  }
}
