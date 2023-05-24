// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'package:front/main.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';

// // class PdfViewerPage extends StatefulWidget {
// //   final String pdfUrl;

// //   const PdfViewerPage({super.key, required this.pdfUrl,});

// //   @override
// //   _PdfViewerPageState createState() => _PdfViewerPageState();
// // }

// // class _PdfViewerPageState extends State<PdfViewerPage> {
// //   late String localFilePath;
// //   bool downloading = false;
// //   bool fileExists = false;

// //   @override
// //   void initState() {
// //     super.initState();
// //     checkFileExists().then((exists) {
// //       setState(() {
// //         fileExists = exists;
// //       });
// //     });
// //   }

// //   Future<bool> checkFileExists() async {
// //     Directory appDocDir = await getApplicationDocumentsDirectory();
// //     String filePath = '${appDocDir.path}/myFile.pdf';
// //     return File(filePath).exists();
// //   }

// //   Future<void> downloadFile() async {
// //     setState(() {
// //       downloading = true;
// //     });

// //     Directory appDocDir = await getApplicationDocumentsDirectory();
// //     String appDocPath = appDocDir.path;
// //     String filePath = '$appDocPath/myFile.pdf';

// //     Dio dio = Dio();
// //     await dio.download(widget.pdfUrl, filePath);

// //     setState(() {
// //       localFilePath = filePath;
// //       downloading = false;
// //       fileExists = true;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('PDF Viewer'),
// //       ),
// //       body: Center(
// //         child: fileExists
// //             ? PDFView(
// //                 filePath: localFilePath,
// //               )
// //             : downloading
// //                 ? const CircularProgressIndicator()
// //                 : ElevatedButton(
// //                     onPressed: downloadFile,
// //                     child: const Text('Télécharger PDF'),
// //                   ),
// //       ),
// //     );
// //   }
// // }

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});


// }
