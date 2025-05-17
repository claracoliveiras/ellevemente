import 'package:flutter/material.dart';

import 'pages/pacientes.dart';
import 'pages/pagina_inicial.dart';
import 'pages/calendario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ellevemente',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xff03dac6),
          onPrimary: Colors.black,
          secondary: const Color.fromARGB(255, 118, 184, 238),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: Color(0xffF3F3F3),
          onSurface: Colors.black,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    PaginaInicial(),
    OverviewPacientes(),
    Calendario(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.white,
            leading: Container(
              padding: EdgeInsets.all(8),
              child: Row(
                spacing: 5,
                children: [
                  Icon(Icons.home),
                  Text(
                    'Ellevemente',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ],
              ),
            ),
            selectedIndex: _selectedIndex,
            groupAlignment: -1.0,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Página inicial'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text('Pacientes'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.calendar_month_outlined),
                label: Text('Calendário'),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [_widgetOptions[_selectedIndex]],
            ),
          ),
        ],
      ),
    );
  }
}
