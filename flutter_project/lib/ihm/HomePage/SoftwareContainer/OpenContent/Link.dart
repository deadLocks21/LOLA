import 'package:flutter/material.dart';
import 'dart:js' as js;

class Link extends StatelessWidget {
  final String link;
  const Link({Key key, this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: TextButton(
        child: Text('lien'),
        onPressed: () {
          js.context.callMethod(
            'open',
            [this.link],
          );
        },
      ),
    );
  }
}
