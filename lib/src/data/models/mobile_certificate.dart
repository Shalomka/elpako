// As in https://documenter.getpostman.com/view/11918038/T17FATVh#eedadf32-bfe8-4c90-9df6-295fc3ec5213
//
// Example data:
// {
//   "signing_certificate": {
//     "name": "SERIALNUMBER=PNOLT-3904201234, G=VARDENIS, SN=PAVARDENIS, CN=\"VARDENIS,PAVARDENIS\", C=LT",
//     "subject": {
//       "country": "LT",
//       "common_name": "VARDENIS,PAVARDENIS",
//       "surname": "PAVARDENIS",
//       "name": "VARDENIS",
//       "serial_number": "PNOLT-3904201234",
//       "organisation": null,
//       "organisation_unit": null,
//       "email": null
//     },
//     "issuer": {
//       "country": "EE",
//       "common_name": "EID-SK 2016",
//       "surname": null,
//       "name": null,
//       "serial_number": null,
//       "organisation": "AS Sertifitseerimiskeskus",
//       "organisation_unit": null,
//       "email": null
//     },
//     "valid_from": "2018-06-01T21:38:58+03:00",
//     "valid_to": "2023-05-31T23:59:59+03:00",
//     "value": "encodedCert"
//   },
//   "authentication_certificate": null,
//   "country": "LT",
//   "code": "PNOLT-3904201234",
//   "name": "VARDENIS",
//   "surname": "PAVARDENIS",
//   "message": null,
//   "errors": [],
//   "status": "ok",
//   "error_code": null
// }

class CertificateData {
  final String country;
  final String commonName;
  final String surname;
  final String name;
  final String serialNumber;
  final String organisation;
  final String organisationUnit;
  final String email;

  CertificateData({
    required this.country,
    required this.commonName,
    required this.surname,
    required this.name,
    required this.serialNumber,
    required this.organisation,
    required this.organisationUnit,
    required this.email,
  });

  factory CertificateData.fromJson(Map<String, dynamic> json) {
    return CertificateData(
      country: json['country'],
      commonName: json['common_name'],
      surname: json['surname'],
      name: json['name'],
      serialNumber: json['serial_number'],
      organisation: json['organisation'],
      organisationUnit: json['organisation_unit'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'common_name': commonName,
      'surname': surname,
      'name': name,
      'serial_number': serialNumber,
      'organisation': organisation,
      'organisation_unit': organisationUnit,
      'email': email,
    };
  }
}

class SigningCertificate {
  final String name;
  final CertificateData subject;
  final CertificateData issuer;
  final DateTime validFrom;
  final DateTime validTo;
  final String value;

  SigningCertificate({
    required this.name,
    required this.subject,
    required this.issuer,
    required this.validFrom,
    required this.validTo,
    required this.value,
  });

  factory SigningCertificate.fromJson(Map<String, dynamic> json) {
    return SigningCertificate(
      name: json['name'],
      subject: CertificateData.fromJson(json['subject']),
      issuer: CertificateData.fromJson(json['issuer']),
      validFrom: DateTime.parse(json['valid_from']),
      validTo: DateTime.parse(json['valid_to']),
      value: json['value'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'subject': subject.toJson(),
      'issuer': issuer.toJson(),
      'valid_from': validFrom.toIso8601String(),
      'valid_to': validTo.toIso8601String(),
      'value': value,
    };
  }
}

class MobileCertificate {
  final SigningCertificate signingCertificate;
  final CertificateData? authenticationCertificate;
  final String country;
  final String code;
  final String name;
  final String surname;
  final String? message;
  final List<String> errors;
  final String status;
  final String? errorCode;

  MobileCertificate({
    required this.signingCertificate,
    required this.authenticationCertificate,
    required this.country,
    required this.code,
    required this.name,
    required this.surname,
    required this.message,
    required this.errors,
    required this.status,
    required this.errorCode,
  });

  factory MobileCertificate.fromJson(Map<String, dynamic> json) {
    return MobileCertificate(
      signingCertificate:
          SigningCertificate.fromJson(json['signing_certificate']),
      authenticationCertificate: json['authentication_certificate'] != null
          ? CertificateData.fromJson(json['authentication_certificate'])
          : null,
      country: json['country'],
      code: json['code'],
      name: json['name'],
      surname: json['surname'],
      message: json['message'],
      errors: List<String>.from(json['errors']),
      status: json['status'],
      errorCode: json['error_code'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'signing_certificate': signingCertificate.toJson(),
      'authentication_certificate': authenticationCertificate?.toJson(),
      'country': country,
      'code': code,
      'name': name,
      'surname': surname,
      'message': message,
      'errors': errors,
      'status': status,
      'error_code': errorCode,
    };
  }
}
