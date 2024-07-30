import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showComstomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'OK!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('Esta seguro'),
              content: const Text('Esta seguro que quieres eliminar este elemento'),
              actions: [
                TextButton(
                  onPressed: () => context.pop(), 
                  child: const Text('Cancelar') 
                ),
                FilledButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  }, 
                  child: const Text('Aceptar')
                )
              ]
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Officia do exercitation veniam elit. Excepteur velit elit nisi id do labore laborum mollit incididunt magna nisi. Esse magna sunt occaecat sunt elit magna ad ea irure laboris et reprehenderit fugiat. Aliqua sint ipsum culpa irure tempor enim do labore elit ea enim. Eiusmod esse do non consectetur consequat ipsum cupidatat commodo ut deserunt.')
                  ]);
                },
                child: const Text('Licencias Usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar dialog'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showComstomSnackbar(context),
      ),
    );
  }
}


/*
En una aplicación indicar paso por paso el funcionamiento del GoRouter 
usando el mismo paquete de GoRouter para los pasos, cada paso a ser una ruta diferente
*/