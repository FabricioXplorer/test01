import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController alias = TextEditingController();
    final TextEditingController lugar = TextEditingController();
    final TextEditingController denunciado = TextEditingController();
    final TextEditingController nombreDenunciado = TextEditingController();
    final TextEditingController domicilioDenunciado = TextEditingController();
    final TextEditingController detallesDenunciado = TextEditingController();
    final TextEditingController descripcionDenuncia = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Bienvenido a tu formulario')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildTextField(alias, 'Aliass'),
              _buildTextField(lugar, 'Lugar del hecho'),
              _buildTextField(denunciado, 'Denunciado'),
              _buildTextField(nombreDenunciado, 'Nombre del Denunciado'),
              _buildTextField(domicilioDenunciado, 'Domicilio del Denunciado'),
              _buildTextField(detallesDenunciado, 'Detalles del Denunciado'),
              _buildTextField(descripcionDenuncia, 'Descripción de la Denuncia'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        alias: alias.text,
                        lugar: lugar.text,
                        denunciado: denunciado.text,
                        nombreDenunciado: nombreDenunciado.text,
                        domicilioDenunciado: domicilioDenunciado.text,
                        detallesDenunciado: detallesDenunciado.text,
                        descripcionDenuncia: descripcionDenuncia.text,
                      ),
                    ),
                  );
                },
                child: const Text('Enviar'),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String alias;
  final String lugar;
  final String denunciado;
  final String nombreDenunciado;
  final String domicilioDenunciado;
  final String detallesDenunciado;
  final String descripcionDenuncia;

  const DetailScreen({Key? key,
    required this.alias,
    required this.lugar,
    required this.denunciado,
    required this.nombreDenunciado,
    required this.domicilioDenunciado,
    required this.detallesDenunciado,
    required this.descripcionDenuncia,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalles del Envío')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Alias: $alias', style: const TextStyle(fontSize: 18)),
            Text('Lugar del Hecho: $lugar',
                style: const TextStyle(fontSize: 18)),
            Text('Denunciado: $denunciado',
                style: const TextStyle(fontSize: 18)),
            Text('Nombre del Denunciado: $nombreDenunciado',
                style: const TextStyle(fontSize: 18)),
            Text('Domicilio del Denunciado: $domicilioDenunciado',
                style: const TextStyle(fontSize: 18)),
            Text('Detalles del Denunciado: $detallesDenunciado',
                style: const TextStyle(fontSize: 18)),
            Text('Descripción de la Denuncia: $descripcionDenuncia',
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
