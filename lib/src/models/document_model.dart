import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_model.freezed.dart';
part 'document_model.g.dart';

/// Document that is sent or received from the server. It is a part of the signature request calls and responses.
@freezed
class Document with _$Document {
  const factory Document({
    /// File name with extension
    required String name,

    /// Base64 encoded file content
    required String content,

    /// SHA-256 digest of the file content
    required String digest,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  /// Creates document from file path
  static Future<Document> fromFile(String filePath) async {
    final file = File(filePath);
    final name = file.path.split('/').last;
    final bytes = await file.readAsBytes();
    final content = base64Encode(bytes);
    final digest = await _getSha256Hash(bytes);
    return Document(name: name, content: content, digest: digest);
  }

  static Future<String> _getSha256Hash(Uint8List data) async {
    final digest = sha256.convert(data);
    return digest.toString();
  }
}
