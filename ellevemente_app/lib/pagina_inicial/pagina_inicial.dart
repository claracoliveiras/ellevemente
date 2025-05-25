import 'package:ellevemente_app/pagina_inicial/widgets/calendario_semanal.dart';
import 'package:ellevemente_app/pagina_inicial/widgets/pacientes_do_dia.dart';
import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PacientesDoDia(),
                SizedBox(width: 20),
                CalendarioPagInicial(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
