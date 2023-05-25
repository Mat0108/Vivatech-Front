import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:vivatech/components/topNavigation.dart';

class PdfUploaderPage extends StatefulWidget {
  const PdfUploaderPage({Key? key}) : super(key: key);

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
  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: const TopNavigationComponent(currentPage: "cv")
    body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background/bg-gradient-vivatech-2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centrer les éléments verticalement
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: uploadPDF,
                child: const Text('Télécharger votre CV'),
              ),
            ),
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
    ),
  );
}
}
