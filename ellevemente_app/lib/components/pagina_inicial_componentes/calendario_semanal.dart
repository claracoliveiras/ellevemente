import 'package:flutter/material.dart';

class CalendarioPagInicial extends StatelessWidget {
  const CalendarioPagInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Calendário semanal',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          SizedBox(height: 10),
          ListView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.hardEdge,
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
        ],
      ),
    );
  }
}

class DiaSemanaCalendario extends StatelessWidget {
  final String diaSemana;

  const DiaSemanaCalendario({required this.diaSemana, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.green),
      width: 180,
      height: 400,
      child: Column(
        children: [
          Text(diaSemana, style: TextStyle(fontWeight: FontWeight.w600)),
          ExameCalendario(
            horarioExame: '10:00AM',
            nomePaciente: 'Sabrina Carpenter',
            pacienteImg:
                'https://i.pinimg.com/736x/aa/d0/6a/aad06a97a6c132311c0e47c820fdd6f4.jpg',
          ),
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
    return Row(
      children: [
        Container(
          width: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(pacienteImg, fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 5),
        Column(children: [Text(nomePaciente), Text(horarioExame)]),
      ],
    );
  }
}
