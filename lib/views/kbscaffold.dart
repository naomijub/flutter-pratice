import 'package:flutter/material.dart';

class KBScaffold extends StatelessWidget {
  @required final String title;
  @required final Widget body;
  final FloatingActionButton button;

  const KBScaffold({Key key, this.title, this.body, this.button}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: button != null ? button : null,
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.yellow),        
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
          ),
        ),
      ),
      body: body,
    );
  }
  
}