import 'package:fii/components/actions.dart';
import 'package:fii/views/kbscaffold.dart';
import 'package:flutter/material.dart';

import 'balance.dart';
import 'contacts.dart';

class App extends StatelessWidget {
  final String title;

  const App({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KBScaffold(
      title: title,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 18),
              child: Image.asset('assets/images/flag.png'),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Contacts(),
                    ),
                  );
                  },
                  child: ActionToken(
                    title: 'Contacts',
                    icon: Icons.people,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Balance(),
                    ),
                  );
                  },
                  child: ActionToken(
                    title: 'Balance',
                    icon: Icons.account_balance_wallet,
                  ),
                )
              ],
            )
          ],
        ),
      ),    
    );
  }
}
