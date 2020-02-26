import 'dart:collection';

import 'package:fii/bloc/contacts.dart';
import 'package:fii/views/kbscaffold.dart';
import 'package:flutter/material.dart';

class ContactView extends StatefulWidget {
  
  @override
    _ContactViewState createState() => _ContactViewState();

}

class _ContactViewState extends State<ContactView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumberController =
      TextEditingController();
  final TextEditingController _bankController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return KBScaffold(
      title: 'Add Contact',
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Full name',
              ),
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _bankController,
                decoration: InputDecoration(
                  labelText: 'Bank name',
                ),
                style: TextStyle(
                  fontSize: 24.0,
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _accountNumberController,
                decoration: InputDecoration(
                  labelText: 'Account number',
                ),
                style: TextStyle(
                  fontSize: 24.0,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: RaisedButton(
                  child: Text('Create'),
                  onPressed: () {
                    final String name = _nameController.text;
                    final HashMap<String,String> contactInfo = HashMap.from({
                      'bank': _bankController.text,
                      'account': _accountNumberController.text});
                    ContactsBloc.addContact(name, contactInfo);
                    Navigator.pop(context);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}