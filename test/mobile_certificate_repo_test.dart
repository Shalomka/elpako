import 'package:dio/dio.dart';
import 'package:elpako/elpako.dart';
import 'package:test/test.dart';
import 'package:elpako/src/data/mobile_certificate_repo.dart';

void main() {
  group('MobileCertificates', () {
    late MobileCertificates mobileCertificates;
    late Dio dio;

    setUp(() {
      dio = Dio();
      mobileCertificates = MobileCertificates(apiKey: 'YOUR_API_KEY', dio: dio);
    });

    test('getCertificate should return MobileCertificate object', () async {
      // Arrange
      const code = '39004201234';
      const phone = '+37069298114';

      // Act
      final result = await mobileCertificates.getCertificate(code, phone);

      // Assert
      expect(result, isA<MobileCertificate>());
    });

    test('uploadFile should return UploadedFile object', () async {
      // Arrange
      const filePath = 'path/to/file';

      // Act
      final result = await mobileCertificates.uploadFile(filePath);

      // Assert
      expect(result, isA<UploadedFile>());
    });

    test('createSignRequest should return UploadedFile object', () async {
      // Arrange
      const type = FileFormat.pdf;
      const name =
          'Apple and Google partner on COVID-19 contact tracing technology';
      final file =
          UploadedFile(token: 'YOUR_FILE_TOKEN', errors: [], status: '');
      final signers = [
        Signer(
          id: '1',
          name: 'Vardenis',
          surname: 'Pavardenis',
          message: 'MobileMessage1',
          options: PdfOptions(
            level: 'pades-t',
            contact: 'Vardenis Pavardenis',
            reason: 'Tekstas vizualiame paraše',
            signingPurpose: 'signature',
            location: '-',
            annotation: Annotation(
              visualStyle: 'image',
              placement: 'topright',
            ),
          ),
          signingOptions: ['mobile', 'stationary', 'advanced', 'smartid'],
        ),
      ];

      // Act
      final result =
          await mobileCertificates.createSignRequest(type, name, file, signers);

      // Assert
      expect(result, isA<UploadedFile>());
    });

    test('getSignRequestStatus should return Map<String, dynamic>', () async {
      // Arrange
      const token = 'YOUR_SIGNING_TOKEN';

      // Act
      final result = await mobileCertificates.getSignRequestStatus(token);

      // Assert
      expect(result, isA<Map<String, dynamic>>());
    });
  });
}
