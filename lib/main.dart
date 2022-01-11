import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quicknote/screens/groups_screen.dart';
import 'package:quicknote/screens/notes_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Quicknote';

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: _title,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
      ],
      home: HomeScreenWidget(),
    );
  }
}

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.folder), label: 'Groups'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.doc_text), label: 'Notes')
        ]),
        tabBuilder: (context, index) => CupertinoTabView(
            builder: (context) => index == 0
                ? const GroupsScreenWidget()
                : const NotesScreenWidget()));
  }
}
