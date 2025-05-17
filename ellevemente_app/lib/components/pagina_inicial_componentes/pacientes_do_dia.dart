import 'package:flutter/material.dart';

class PacientesDoDia extends StatelessWidget {
  const PacientesDoDia({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pacientes do dia',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          SizedBox(height: 10),
          Paciente(
            horarioConsulta: '10:00AM',
            nomePaciente: 'Sabrina Carpenter',
            imgurl:
                'https://i.pinimg.com/736x/aa/d0/6a/aad06a97a6c132311c0e47c820fdd6f4.jpg',
          ),
          SizedBox(height: 10),
          Paciente(
            horarioConsulta: '13:00PM',
            nomePaciente: 'Jenna Ortega',
            imgurl:
                'https://i.pinimg.com/736x/8a/19/ff/8a19ffa0dce90ca3b50d85e6495555ac.jpg',
          ),
        ],
      ),
    );
  }
}

// 'https://i.pinimg.com/736x/aa/d0/6a/aad06a97a6c132311c0e47c820fdd6f4.jpg'

class Paciente extends StatelessWidget {
  final String imgurl;
  final String nomePaciente;
  final String horarioConsulta;

  const Paciente({
    required this.imgurl,
    required this.nomePaciente,
    required this.horarioConsulta,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(imgurl, fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 10),
            Text(
              nomePaciente,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Text(horarioConsulta),
      ],
    );
  }
}
