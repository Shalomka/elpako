// curl --location 'https://api-staging.elpako.lt/api/v1/signing/create.json' \
// --form 'type="pdf"' \
// --form 'name="Apple and Google partner on COVID-19 contact tracing technology"' \
// --form 'files[0][token]="{{GwSignExampleFileToken}}"' \
// --form 'signers[0][id]="1"' \
// --form 'signers[0][name]="Vardenis"' \
// --form 'signers[0][surname]="Pavardenis"' \
// --form 'signers[0][message]="MobileMessage1"' \
// --form 'signers[0][pdf][level]="pades-t"' \
// --form 'signers[0][pdf][contact]="Vardenis Pavardenis"' \
// --form 'signers[0][pdf][reason]="Tekstas vizualiame paraše"' \
// --form 'signers[0][pdf][signing_purpose]="signature"' \
// --form 'signers[0][pdf][location]="-"' \
// --form 'signers[0][pdf][annotation][visual_style]="image"' \
// --form 'signers[0][pdf][annotation][placement]="topright"' \
// --form 'signers[0][signing_options][0]="mobile"' \
// --form 'signers[0][signing_options][1]="stationary"' \
// --form 'signers[0][signing_options][2]="advanced"' \
// --form 'signers[0][signing_options][3]="smartid"'

import 'package:elpako/src/data/models/file_upload_models.dart';

enum FileFormat {
  pdf,
  pdflt,
  adoc,
}

class SignRequest {
  final FileFormat type;
  final String name;
  final UploadedFile file;
  final List<Signer> signers;

  SignRequest({
    required this.type,
    required this.name,
    required this.file,
    required this.signers,
  });

  Map<String, dynamic> toJson() {
    return {
      'type': type.name,
      'name': name,
      'files': [
        {'token': file.token},
      ],
      'signers': signers.map((signer) => signer.toJson()).toList(),
    };
  }
}

class Signer {
  final String id;
  final String name;
  final String surname;
  final String message;
  final PdfOptions options;
  final List<String> signingOptions;

  Signer({
    required this.id,
    required this.name,
    required this.surname,
    required this.message,
    required this.options,
    required this.signingOptions,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'surname': surname,
      'message': message,
      'pdf': options.toJson(),
      'signing_options': signingOptions,
    };
  }
}

class PdfOptions {
  final String level;
  final String contact;
  final String reason;
  final String signingPurpose;
  final String location;
  final Annotation annotation;

  PdfOptions({
    required this.level,
    required this.contact,
    required this.reason,
    required this.signingPurpose,
    required this.location,
    required this.annotation,
  });

  Map<String, dynamic> toJson() {
    return {
      'level': level,
      'contact': contact,
      'reason': reason,
      'signing_purpose': signingPurpose,
      'location': location,
      'annotation': annotation.toJson(),
    };
  }
}

class Annotation {
  final String visualStyle;
  final String placement;

  Annotation({
    required this.visualStyle,
    required this.placement,
  });

  Map<String, dynamic> toJson() {
    return {
      'visual_style': visualStyle,
      'placement': placement,
    };
  }
}
