// Autor: Adrian Ramirez Mendez · No. control 1225100309 · GTID243 · Super Dolores (TDD)
import 'package:flutter/material.dart';

class Aviso extends StatelessWidget {
  final String? texto;
  const Aviso(this.texto, {super.key});
  @override
  Widget build(BuildContext context) => texto == null
      ? const SizedBox.shrink()
      : Card(
          color: Theme.of(context).colorScheme.errorContainer,
          child: Padding(padding: const EdgeInsets.all(12), child: Text(texto!)),
        );
}
