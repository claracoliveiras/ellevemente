import 'package:flutter/material.dart';

class CalendarioPagInicial extends StatelessWidget {
  const CalendarioPagInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Text(
        'Calendário semanal',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      ),
    );
  }
}
