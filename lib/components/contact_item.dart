import 'dart:collection';

import 'package:fii/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;

  const ContactItem({Key key, this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
            child: Container(
              width: 300,
              child: Text(
                contact.name,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          _ContactInfo(info: contact.contactInfo)
        ],
      ),
    );
  }
}

class _ContactInfo extends StatelessWidget {
  final HashMap<String, String> info;
  static const Radius radius = Radius.circular(10.0);

  const _ContactInfo({Key key, this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
          child: Icon(
            Icons.contacts,
            color: Colors.cyan,
            size: 24,
          ),
        ),
        Column(
          children: info.entries.map(
            (entry) {
              final String key = entry.key;
              final String value = entry.value;
              return Container(
                child: Text(
                  '$key: $value',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'OpenSans',
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                width: 200,
              );
            },
          ).toList(),
        ),
        InkWell(
          child: Container(
            decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: new BorderRadius.only(
              topLeft: radius,
              topRight: radius,
              bottomLeft: radius,
              bottomRight: radius,
            ),
          ),
          width: 30,
          height: 30,
            child: Icon(
              Icons.send,
              color: Colors.yellow,
                size: 24,
            ),
          ),
        )
      ],
    );
  }
}
