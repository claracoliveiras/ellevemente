import 'package:flutter/material.dart';

class CalendarioPagInicial extends StatelessWidget {
  const CalendarioPagInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1250,
      height: 500,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Row(
            children: [
              Icon(Icons.calendar_month),
              SizedBox(width: 5),
              Text(
                'Calendário semanal',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DiaSemanaCalendario(diaSemana: 'SEG'),
                SizedBox(width: 5),
                DiaSemanaCalendario(diaSemana: 'TER'),
                SizedBox(width: 5),
                DiaSemanaCalendario(diaSemana: 'QUA'),
                SizedBox(width: 5),
                DiaSemanaCalendario(diaSemana: 'QUI'),
                SizedBox(width: 5),
                DiaSemanaCalendario(diaSemana: 'SEX'),
                SizedBox(width: 5),
                DiaSemanaCalendario(diaSemana: 'SAB'),
                SizedBox(width: 5),
                DiaSemanaCalendario(diaSemana: 'DOM'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DiaSemanaCalendario extends StatelessWidget {
  final String diaSemana;
  final informacoesPacientesFake = [
    {
      "horarioExame": "10:00 AM",
      "nomePaciente": "Sabrina Carpenter",
      "pacienteImg":
          "https://i.pinimg.com/736x/aa/d0/6a/aad06a97a6c132311c0e47c820fdd6f4.jpg",
    },
    {
      "horarioExame": "11:00 AM",
      "nomePaciente": "Monako Adachi",
      "pacienteImg":
          "https://i.pinimg.com/736x/9e/98/0a/9e980a95443df472b21b222d4bab416c.jpg",
    },
  ];

  DiaSemanaCalendario({required this.diaSemana, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 180,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(diaSemana, style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(height: 5),
          ...informacoesPacientesFake.map((exame) {
            return ExameCalendario(
              horarioExame: exame["horarioExame"]!,
              nomePaciente: exame["nomePaciente"]!,
              pacienteImg: exame["pacienteImg"]!,
            );
          }),
        ],
      ),
    );
  }
}

class ExameCalendario extends StatelessWidget {
  final String nomePaciente;
  final String pacienteImg;
  final String horarioExame;

  const ExameCalendario({
    required this.horarioExame,
    required this.nomePaciente,
    required this.pacienteImg,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.all(5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(pacienteImg, fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 5),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nomePaciente,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
              Text(
                horarioExame,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
