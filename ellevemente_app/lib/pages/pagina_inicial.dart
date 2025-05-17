import 'package:ellevemente_app/components/pagina_inicial_componentes/calendariosemanal.dart';
import 'package:ellevemente_app/components/pagina_inicial_componentes/pacientes_do_dia.dart';
import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dashboard',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              PacientesDoDia(),
              SizedBox(width: 20),
              CalendarioPagInicial(),
            ],
          ),
        ],
      ),
    );
  }
}
