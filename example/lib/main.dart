import 'dart:developer';
import 'dart:io';

import 'package:elpako/elpako.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  final String apiKey;
  const MainApp({super.key, this.apiKey = 'your_api_key'});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: IconButton(
              onPressed: () async {
                final path = await copyFile();
                log('File copied');
                await uploadFile(path);
                log('File uploaded');
              },
              icon: Icon(Icons.upload)),
        ),
      ),
    );
  }

  // copy file from assets/pdf.pdf to temp directory
  Future<String> copyFile() async {
    final Directory tempDir = await getTemporaryDirectory();
    final String tempPath = '${tempDir.path}/pdf.pdf';
    final File file = File(tempPath);
    final ByteData data = await rootBundle.load('assets/pdf.pdf');
    final List<int> bytes = data.buffer.asUint8List();
    await file.writeAsBytes(bytes);
    log('File copied to $tempPath');
    return tempPath;
  }

  // upload file to Elpako
  Future<void> uploadFile(String filePath) async {
    final ElpakoClient client = ElpakoClient.sandbox(apiKey: apiKey);
    client.uploadAndSign(filePath,
        authority: SignatureAuthority.mobileId,
        phone: '+37061234567',
        code: '36601010001');
  }
}
