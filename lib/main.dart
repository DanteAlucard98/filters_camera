import 'package:camera_filters/camera_filters.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Camera'),
        ),
        body: CameraScreenPlugin(
          onDone: (value) {
            /// value returns the picture path you can save here or navigate to some screen
            print(value);
          },
          //Si se utiliza un Icono puede utilizar esta instruccion
          // profileIconWidget:,

          //filtro predeterminado cuando se abre la camara
          filterColor: ValueNotifier<Color>(Colors.transparent),

          //Lista de filtros que se puede utilizar => List<Color> colors = [Colors.blue, Colors.blue, Colors.blue ..... Colors.blue]
          //Recomiendan que el trasparente sea el primero en la lista pero pues somos rockstars jajaja ok no xD
          /// filters: [],
        ),
      ),
    );
  }
}
