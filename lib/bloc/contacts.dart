import 'dart:collection';

import 'package:fii/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactsBloc extends ChangeNotifier {
  static final List<Contact> contacts = [
    Contact(
      name: 'Kinjo',
      contactInfo: HashMap.from({
        'bank': 'Bank Kinjo',
        'account': '1029321'
      })
    ), 
    Contact(
      name: 'Naomi',
      contactInfo: HashMap.from({
        'bank': 'NaomiBank',
        'account': '423523'
      })), 
    Contact(
      name: 'Diego',
      contactInfo: HashMap.from({
        'bank': 'Hyunwoo Bank',
        'account': '93473'
      }))
    ];

  static ContactsBloc of(BuildContext context, {bool listen = true}) =>
      Provider.of<ContactsBloc>(context, listen: listen);

  static Future<List<Contact>> getContacts() {
    return Future.delayed(
      Duration(seconds: 1),
      () {
        return contacts;
      },
    );
  }

  static void addContact(String name, HashMap<String, String> contactInfo) {
    final contact = Contact(contactInfo: contactInfo, name: name);
    contacts.add(contact);
  }
}
