import 'package:flutter/cupertino.dart';

class NotesScreenWidget extends StatelessWidget {
  const NotesScreenWidget({Key? key}) : super(key: key);

  static const String _title = 'Notes';

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(_title),
        ),
        child: Center(child: Text('Notes Page')));
  }
}
