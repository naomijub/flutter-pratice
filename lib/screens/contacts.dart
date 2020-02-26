import 'package:fii/bloc/contacts.dart';
import 'package:fii/components/contact_item.dart';
import 'package:fii/models/contact.dart';
import 'package:fii/views/contact_view.dart';
import 'package:fii/views/kbscaffold.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {

  const Contacts({Key key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return KBScaffold(
      button: FloatingActionButton(
        backgroundColor: Colors.cyan,
        focusColor: Colors.white,
        tooltip: 'Add Contact',
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ContactView(),
              ),
            );
        },
        child: Icon(
          Icons.add,
          color: Colors.yellow,
          size: 35,
        ),
      ),
      title: 'Contacts',
      body: FutureBuilder<List<Contact>>(
        future: ContactsBloc.getContacts(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Text('Loading')
                  ],
                ),
              );
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              final List<Contact> contacts = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return ContactItem(contact: contact,);
                },
                itemCount: contacts.length,
              );
              break;
          }
          return Text('Unknown error');
        },
        initialData: List(),
      ),
    );
  }
}