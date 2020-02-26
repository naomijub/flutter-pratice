import 'dart:collection';

import 'package:fii/views/kbscaffold.dart';
import 'package:flutter/material.dart';

class Contact {
  final String name;
  final HashMap<String, String> contactInfo;

  const Contact({Key key, this.name, this.contactInfo});

  @override
  String toString() {
    return 'Contact{name: $name, accountInfo: $contactInfo.toString()}';
  }
}
