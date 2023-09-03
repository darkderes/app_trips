import 'package:flutter/material.dart';

Tab _buildTab(String label, String flagImage) {
  return Tab(
    child: Row(
      children: [
        Image.asset(
          flagImage,
          width: 20, // Tamaño de la bandera
          height: 20,
        ),
        const SizedBox(width: 8), // Espacio entre la bandera y el texto
        Text(label),
      ],
    ),
  );
}
