import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test Demo',
      theme: ThemeData(fontFamily: "MuseoSans"),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _fileText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("File Picker"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _pickMultipleFiles,
                child: const Text("Pick Multiple Files"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _pickDirectory,
                child: const Text("Pick Directory"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _saveAs,
                child: const Text("Save As"),
              ),
              Text(_fileText),
            ],
          ),
        ),
      ),
    );
  }

  void _pickMultipleFiles() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);

    if (result != null) {
      List<File> files = result.paths.map((path) => File(path!)).toList();
      setState(() {
        _fileText = files.toString();
      });
    } else {
      // Aucun fichier sélectionné
    }
  }

  void _pickDirectory() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();
    if (selectedDirectory != null) {
      setState(() {
        _fileText = selectedDirectory;
      });
    } else {
      // Aucun dossier sélectionné
    }
  }

  void _saveAs() async {
    if (kIsWeb || Platform.isIOS || Platform.isAndroid) {
      return;
    }

    Directory? appDocDir = await getExternalStorageDirectory();
    if (appDocDir != null) {
      String savePath = 'assets/output_file.pdf';
      String? outputFile = await FilePicker.platform.saveFile(
        dialogTitle: 'Please select your CV',
        fileName: savePath,
      );

      if (outputFile != null) {
        File outputFileObj = File(outputFile);
        await outputFileObj.copy(savePath);
        setState(() {
          _fileText = 'File saved at: $savePath';
        });
      } else {
        // L'utilisateur a annulé la sauvegarde du fichier
      }
    }
  }
}
