import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quicknote/screens/groups_screen.dart';
import 'package:quicknote/screens/notes_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'App',
      localizationsDelegates: [
        AppLocalizations.delegate,
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
        tabBar: CupertinoTabBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: const Icon(CupertinoIcons.folder),
              label: AppLocalizations.of(context)?.groups ?? 'Groups'),
          BottomNavigationBarItem(
              icon: const Icon(CupertinoIcons.doc_text),
              label: AppLocalizations.of(context)?.notes ?? 'Notes')
        ]),
        tabBuilder: (context, index) => CupertinoTabView(
            builder: (context) => index == 0
                ? const GroupsScreenWidget()
                : const NotesScreenWidget()));
  }
}
