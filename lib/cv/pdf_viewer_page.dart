import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

class PdfUploaderPage extends StatefulWidget {
  const PdfUploaderPage({super.key});

  @override
  _PdfUploaderPageState createState() => _PdfUploaderPageState();
}

class _PdfUploaderPageState extends State<PdfUploaderPage> {
  String? pdfPath;

  Future<void> uploadPDF() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (result != null) {
        File file = File(result.files.single.path!);
        String fileName = result.files.single.name;

        Directory? appDocumentsDirectory =
            await getApplicationDocumentsDirectory();
        String newPath = '${appDocumentsDirectory.path}/$fileName';

        await file.copy(newPath);

        setState(() {
          pdfPath = newPath;
        });

        print('PDF file uploaded successfully.');
      } else {
        print('File picking canceled.');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Uploader'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: uploadPDF,
            child: const Text('Télécharger votre CV'),
          ),
          if (pdfPath != null) ...[
            const SizedBox(height: 20),
            Expanded(
              child: PDFView(
                filePath: pdfPath!,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
