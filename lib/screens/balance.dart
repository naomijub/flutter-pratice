import 'package:fii/bloc/balance_bloc.dart';
import 'package:fii/views/kbscaffold.dart';
import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KBScaffold(
      title: 'Balance',
      body:
       Padding(
         padding: const EdgeInsets.fromLTRB(4, 32, 4, 4),
         child: Center(child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(bottom: 16),
               child: Text('Account Balance',
               style: TextStyle(
                 color: Colors.blueGrey,
                 fontSize: 20,
               ),),
             ),
             Text(BalanceBloc.getAmount().toString(),
             style: TextStyle(
               fontSize: 24,
               color: Colors.black87),),
           ],
         )),
       )
    );
  }
  
}