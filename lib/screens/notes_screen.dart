import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotesScreenWidget extends StatelessWidget {
  const NotesScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Icon(CupertinoIcons.doc)
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(AppLocalizations.of(context)?.notes ?? 'Notes'),
        ),
        child: Scaffold(
            body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: const Icon(CupertinoIcons.doc),
                  ),
                  const Text('Fooobar baz quux',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        )));
  }
}
