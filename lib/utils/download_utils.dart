import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:open_file/open_file.dart';
import 'dart:html' as html;

Future<void> downloadResume() async {
  const String assetPath = 'assets/resume.pdf';
  const String fileName = 'resume.pdf';

  if (kIsWeb) {
    // For web, create a download link
    final bytes = await rootBundle.load(assetPath);
    final blob = html.Blob([bytes.buffer.asUint8List()]);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', fileName)
      ..click();
    html.Url.revokeObjectUrl(url);
  } else {
    // For mobile, save to documents directory and open
    // Request storage permission
    var status = await Permission.storage.request();
    if (status.isGranted) {
      final bytes = await rootBundle.load(assetPath);
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/$fileName');
      await file.writeAsBytes(bytes.buffer.asUint8List());
      await OpenFile.open(file.path);
    } else {
      // Handle permission denied
      print('Storage permission denied');
    }
  }
}
