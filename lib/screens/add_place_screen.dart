import 'package:flutter/material.dart';
import '../widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add-place';
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new Place'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'title'),
                    controller: _titleController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(),
                  ImageInput(),
                ],
              ),
            ),
          )),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(primary: Colors.green),
            icon: Icon(
              Icons.add,
            ),
            label: Text(
              'Add Place',
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
