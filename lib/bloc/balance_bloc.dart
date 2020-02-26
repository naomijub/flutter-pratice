import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BalanceBloc extends ChangeNotifier {
  static final double amount = 2000.0;

  static BalanceBloc of(BuildContext context, {bool listen = true}) =>
      Provider.of<BalanceBloc>(context, listen: listen);

  static double getAmount() => amount;

  static change(double value) => amount + value; 
}