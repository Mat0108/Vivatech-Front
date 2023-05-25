import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:vivatech/components/topNavigation.dart';
import 'package:share_plus/share_plus.dart';

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

        Directory appDocumentsDirectory =
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/bg-gradient-vivatech-2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: TopNavigationComponent(
          currentPage: "cv",
          content: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    alignment: Alignment.center,
                    child: RawMaterialButton(
                      onPressed: () {
                        Share.shareXFiles([XFile(pdfPath!)], text: 'Great picture');
                      },
                      elevation: 2.0,
                      fillColor: Colors.purple,
                      shape: CircleBorder(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.share, color: Colors.white, size: 24),
                          SizedBox(height: 4),
                          Text("Share", style: TextStyle(color: Colors.white, fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    alignment: Alignment.center,
                    child: RawMaterialButton(
                      onPressed: uploadPDF,
                      elevation: 2.0,
                      fillColor: Colors.purple,
                      shape: CircleBorder(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.download, color: Colors.white, size: 24),
                          SizedBox(height: 4),
                          Text('Upload', style: TextStyle(color: Colors.white, fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              if (pdfPath != null)
                Container(
                  width: 350,
                  height: 520,
                  child: PDFView(
                    filePath: pdfPath!,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}