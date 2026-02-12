
import 'package:flutter/material.dart';

void main() => runApp(const AppAbarrotes());

class AppAbarrotes extends StatelessWidget {
  const AppAbarrotes({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosEmpleados(),
    );
  }
} // fin clase AppAbarrotes

class LosEmpleados extends StatelessWidget {
  const LosEmpleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Título del AppBar
        title: const Text(
          'Abarrotes',
          style: TextStyle(color: Colors.white), // Texto en color blanco
        ),
        
        // Color de fondo guinda moderno (Deep Carmine/Wine)
        backgroundColor: const Color(0xFF800020),
        
        // Icono a la izquierda (tienda)
        leading: const Icon(
          Icons.store,
          color: Colors.white,
        ),
        
        // Iconos a la derecha (herramienta, emergencia, cámara)
        actions: [
          IconButton(
            icon: const Icon(Icons.build, color: Colors.white),
            onPressed: () {
              // Acción para herramienta
            },
          ),
          IconButton(
            icon: const Icon(Icons.emergency, color: Colors.white),
            onPressed: () {
              // Acción para emergencia
            },
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {
              // Acción para cámara
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Ahora pasamos 4 parámetros: Título, Subtítulo, el icono y el color
              _crearTarjeta(
                'Notificaciones',
                'Revisa tus notificaciones',
                Icons.notifications,
                Colors.blue[100]!,
              ),
              _crearTarjeta(
                'Mi perfil',
                'Actualiza tu información',
                Icons.person,
                Colors.orange[100]!,
              ),
              _crearTarjeta(
                'Seguridad',
                'Gestiona tu seguridad',
                Icons.security,
                Colors.purple[100]!,
              ),
              _crearTarjeta(
                'Métodos de pago',
                'Administra tus tarjetas',
                Icons.payment,
                Colors.teal[100]!,
              ),
            ],
          ),
        ),
      ),
    ); // fin de scaffold
  }

  Widget _crearTarjeta(String titulo, String subtitulo, IconData icono, Color color) {
    return Card(
      color: color, // Fondo con color personalizado
      elevation: 5,             // Sombreado
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(
          icono,
          size: 40,
          color: Colors.black54,
        ),
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.black87),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black54,
        ),
      ),
    );
  }
}
