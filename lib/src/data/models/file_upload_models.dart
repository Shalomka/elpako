// curl --location 'https://api-staging.elpako.lt/api/v1/file/upload.json' \
// --form 'file[name]="someAdocFileName.adoc"' \
// --form 'file[content]="UEsDBBQAAAgIAJdx4"' \
// --form 'file[digest]="b83ec5e7ce0a6214f6d95862066730ce2813aed0"'

import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';

class FileUploadRequest {
  final String name;
  final String content;
  final String digest;

  FileUploadRequest({
    required this.name,
    required this.content,
    required this.digest,
  });

  /// Creates file upload requeast from file path
  static Future<FileUploadRequest> fromFile(String filePath) async {
    final file = File(filePath);
    final name = file.path.split('/').last;
    final content = await file.readAsString();
    final digest = await _getSha256Hash(Uint8List.fromList(content.codeUnits));
    return FileUploadRequest(name: name, content: content, digest: digest);
  }

  static Future<String> _getSha256Hash(Uint8List data) async {
    final digest = sha256.convert(data);
    return digest.toString();
  }

  Future<Map<String, dynamic>> toJson() async {
    return {
      'file': {
        'name': name,
        'content': content,
        'digest': digest,
      },
    };
  }
}

/// Upload file response
// {
//   "token": "63e47a8064074e95add8c2a2ab37565c",
// "signers": {
//     "1": "018243df3f214e86961d886f8ec0bbf9"
//   },
//   "message": null,
//   "errors": [],
//   "status": "ok",
//   "error_code": null
// }

class UploadedFile {
  final String token;
  final List<Map<String, String>> signers;
  final String? message;
  final List<String> errors;
  final String status;
  final String? errorCode;

  UploadedFile({
    required this.token,
    this.signers = const [],
    this.message,
    required this.errors,
    required this.status,
    this.errorCode,
  });

  factory UploadedFile.fromJson(Map<String, dynamic> json) {
    return UploadedFile(
      token: json['token'],
      signers: json['signers'] == null
          ? []
          : List<Map<String, String>>.from(json['signers']),
      message: json['message'],
      errors: List<String>.from(json['errors']),
      status: json['status'],
      errorCode: json['error_code'],
    );
  }

  // to json
  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'signers': signers,
      'message': message,
      'errors': errors,
      'status': status,
      'error_code': errorCode,
    };
  }
}
