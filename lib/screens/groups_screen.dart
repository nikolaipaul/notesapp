import 'package:flutter/cupertino.dart';

class GroupsScreenWidget extends StatelessWidget {
  const GroupsScreenWidget({Key? key}) : super(key: key);

  static const String _title = 'Groups';

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(_title),
        ),
        child: Center(child: Text('Groups Page')));
  }
}
