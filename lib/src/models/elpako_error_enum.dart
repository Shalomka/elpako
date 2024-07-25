// as in https://documenter.getpostman.com/view/11918038/T17FATVh#klaidu-kodai
// 0 - Nežinoma klaida
// 4002 - Rakto „token“ klaida
// 4100 - Failo turinys neatitinka kontrolinės sumos „digest“ reikšmės
// 4101 - Failo turinys nėra tinkamai suformuoti pagal base64 koduotę
// 10000 - Neįmanoma patikrinti ADOC
// 10008 - PDF dokumentas netinkamas tikrinimui
// 10009 - Nepavyko rasti nurodyto lauko
// 10010 - Zip formato klaida
// 5104 - Sertifikatas yra atšauktas
// 5105 - Sertifikato grandinės kūrimo klaida
// 7019 - Aptikta nenustatyta autentifikacijos sesijos klaida
// 7020 - SIM kortelės klaida
// 7051 - Nepavyko gauti sertifikatų iš mobilaus ryšio operatoriaus
// 7052 - Mobilus pasirašymas nepavyko
// 7053 - Mobilus pasirašymas buvo atšauktas
// 7054 - Mobiliam pasirašymui skirtas laikas baigėsi
// 7055 - Nepavyko nustatyti sertifikato
// 7056 - Nepavyko suformuoti elektroninio parašo
// 7057 - Smart-ID operacija atšaukta
// 7058 - Smart-ID operacijai skirtas laikas baigėsi
// 7059 - Nerastas kvalifikuotas Smart-ID sertifikatas
// 7060 - Nenumatyta klaida smart-id autentifikacijos metu
// 8001 - Nepavyko atverti dokumento
// 8002 - Nepavyko atverti dokumento pasirašymui
// 8013 - Dokumentas turi validacijos klaidų
// 11002 - Naudojamas nepalaikomas šifravimo algoritmas
// 11003 - Nepavyko dokumento tikrinimas prieš paruošimą ilgalaikiam saugojimui
// 11004 - Laiko žymos klaidos
// 11005 - Naudojamas nepalaikomas šifravimo algoritmas CRL
// 14001 - Netinkamas ADOC failo turinio formatas
// 14002 - Laiko žymos uždėjimas nepavyko, reiktų pakartoti vėliau
// 14003 - Archyvinės laiko žymos uždėjimas nepavyko, reiktų pakartoti vėliau
// 14004 - Parašas nerastas
// 14005 - Nepavyko pakelti parašo lygio
// 14006 - Nepavyko XML parašo validacija
// 14007 - Sertifikato galiojimo laikas pasibaigė
// 14008 - Sertifikatas nėra patikimas
// 14009 - Sertifikato tikrinimas neįvyko
// 14010 - Sertifikato patikra per CRL nepavyko
// 14011 - Sertifikato atšaukimo laikotarpis („grace period“) dar nepraėjo
// 14012 - Laiko žymos uždėjimas negalimas šiam dokumentui
// 14013 - Archyvinės laiko žymos uždėjimas negalimas šiam dokumentui
// 14014 - Parašas suarchyvuotas ir baigęs galioti
// 14015 - Pasirašymui skirto sertifikato validacija nesėkminga
// 14016 - Sertifikato grandinės kūrimo klaida
// 14017 - Trūksta sertifikato atšaukimo duomenų
// 14018 - Trūksta metaduomenų pasirašymui
// 14019 - Trūksta paprastos laiko žymos prieš archyvavimą
// 14020 - LTV laiko žymos uždėjimo klaida
// 14021 - Netinkami užklausos duomenys
// 14022 - Užklausos duomenys nerasti
// 14023 - Užklausos laukas yra tuščias
// 14024 - Failas nėra pasirašytas
// 14025 - Failas nerastas
// 14026 - Failas naudojamas kitame pasirašymo procese
// 14027 - Nepavyko paruošti parašo ilgalaikiam saugojimui. Trūksta atšaukimo duomenų
// 14028 - Sertifiakte nurodytas asmuo nesutampa su pateiktu
// 14029 - Sertifiaktas yra nekvalifikuotas
// 14030 - Trūksta privalomų metaduomenų
// 15001 - Pasirašymo procesas dar nepradėtas
// 15002 - Pasirašantysis jau egzistuoja
// 15003 - Nežinomas pasirašantysis
// 15004 - Pasirašantysis jau pasirašė
// 15005 - Pasirašymo procese įvyko klaida
// 15006 - Pasirašantysis nepriklauso šiam pasirašymo procesui
// 15007 - Nesutampa pasirašymo metaduomenys
// 15008 - Api metodui trūksta teisių
// 15009 - Pasirašantysis atsisakė pasirašyti
// 15010 - Aptiktas pasirašymas vienu metu to pačio dokumento
// 15011 - Failas nerastas, kuris nurodytas manifest.xml faile
// 15012 - Dokumento konteineryje nėra pasirašomo failo
// 15013 - Neatpažįstamas ASiC formatas
// 15014 - Netinkamas failo mimetype
// 15015 - Nepalaikomas parašo tipas
// 15016 - Nepalaikomas archyvo tipas
// 15017 - Nepalaikomas konteinerio tipas
// 15018 - Trūksta manifest ar konteinerio failo
// 15019 - Vyksta spaudo operacija
// 15020 - Sertifkato ir parašo duomenys nesutampa
// 15021 - Sertifikatas netinkamas autentifikacijai
// 15022 - Autentifikacijos procesas nerastas
// 15023 - Autentifikacijos procesas nepabaigtas
// 15024 - Pasirašymo algoritmas ir pasirašymo raktas nesutampa
// 15025 - Failas per didelis parsisiuntimui base64 formatu

/// An enumeration of Elpako errors as in the API documentation
enum ElpakoError implements Exception {
  unknownError(code: '0', message: 'Nežinoma klaida'),
  tokenError(code: '4002', message: 'Rakto „token“ klaida'),
  fileContentError(
      code: '4100',
      message: 'Failo turinys neatitinka kontrolinės sumos „digest“ reikšmės'),
  fileContentErrorBase64(
      code: '4101',
      message: 'Failo turinys nėra tinkamai suformuoti pagal base64 koduotę'),
  adocError(code: '10000', message: 'Neįmanoma patikrinti ADOC'),
  pdfError(code: '10008', message: 'PDF dokumentas netinkamas tikrinimui'),
  fieldNotFoundError(code: '10009', message: 'Nepavyko rasti nurodyto lauko'),
  zipError(code: '10010', message: 'Zip formato klaida'),
  certificateRevokedError(code: '5104', message: 'Sertifikatas yra atšauktas'),
  certificateChainError(
      code: '5105', message: 'Sertifikato grandinės kūrimo klaida'),
  authenticationSessionError(
      code: '7019',
      message: 'Aptikta nenustatyta autentifikacijos sesijos klaida'),
  simCardError(code: '7020', message: 'SIM kortelės klaida'),
  certificateError(
      code: '7051',
      message: 'Nepavyko gauti sertifikatų iš mobilaus ryšio operatoriaus'),
  mobileSigningError(code: '7052', message: 'Mobilus pasirašymas nepavyko'),
  mobileSigningCancelledError(
      code: '7053', message: 'Mobilus pasirašymas buvo atšauktas'),
  mobileSigningTimeoutError(
      code: '7054', message: 'Mobiliam pasirašymui skirtas laikas baigėsi'),
  certificateNotFoundError(
      code: '7055', message: 'Nepavyko nustatyti sertifikato'),
  electronicSignatureError(
      code: '7056', message: 'Nepavyko suformuoti elektroninio parašo'),
  smartIdCancelledError(code: '7057', message: 'Smart-ID operacija atšaukta'),
  smartIdTimeoutError(
      code: '7058', message: 'Smart-ID operacijai skirtas laikas baigėsi'),
  smartIdQualifiedCertificateNotFoundError(
      code: '7059', message: 'Nerastas kvalifikuotas Smart-ID sertifikatas'),
  smartIdAuthenticationError(
      code: '7060',
      message: 'Nenumatyta klaida smart-id autentifikacijos metu'),
  documentOpenError(code: '8001', message: 'Nepavyko atverti dokumento'),
  documentOpenSigningError(
      code: '8002', message: 'Nepavyko atverti dokumento pasirašymui'),
  documentValidationErrors(
      code: '8013', message: 'Dokumentas turi validacijos klaidų'),
  unsupportedEncryptionAlgorithmError(
      code: '11002', message: 'Naudojamas nepalaikomas šifravimo algoritmas'),
  documentVerificationError(
      code: '11003',
      message:
          'Nepavyko dokumento tikrinimas prieš paruošimą ilgalaikiam saugojimui'),
  timestampError(code: '11004', message: 'Laiko žymos klaidos'),
  unsupportedCrlEncryptionAlgorithmError(
      code: '11005',
      message: 'Naudojamas nepalaikomas šifravimo algoritmas CRL'),
  adocFileContentError(
      code: '14001', message: 'Netinkamas ADOC failo turinio formatas'),
  timestampRetryError(
      code: '14002',
      message: 'Laiko žymos uždėjimas nepavyko, reiktų pakartoti vėliau'),
  archiveTimestampRetryError(
      code: '14003',
      message:
          'Archyvinės laiko žymos uždėjimas nepavyko, reiktų pakartoti vėliau'),
  signatureNotFoundError(code: '14004', message: 'Parašas nerastas'),
  signatureLevelError(code: '14005', message: 'Nepavyko pakelti parašo lygio'),
  xmlSignatureValidationError(
      code: '14006', message: 'Nepavyko XML parašo validacija'),
  certificateExpiredError(
      code: '14007', message: 'Sertifikato galiojimo laikas pasibaigė'),
  certificateNotReliableError(
      code: '14008', message: 'Sertifikatas nėra patikimas'),
  certificateVerificationError(
      code: '14009', message: 'Sertifikato tikrinimas neįvyko'),
  certificateCrlVerificationError(
      code: '14010', message: 'Sertifikato patikra per CRL nepavyko'),
  certificateGracePeriodError(
      code: '14011',
      message:
          'Sertifikato atšaukimo laikotarpis („grace period“) dar nepraėjo'),
  timestampNotPossibleError(
      code: '14012',
      message: 'Laiko žymos uždėjimas negalimas šiam dokumentui'),
  archiveTimestampNotPossibleError(
      code: '14013',
      message: 'Archyvinės laiko žymos uždėjimas negalimas šiam dokumentui'),
  archivedSignatureExpiredError(
      code: '14014', message: 'Parašas suarchyvuotas ir baigęs galioti'),
  signingCertificateValidationFailedError(
      code: '14015',
      message: 'Pasirašymui skirto sertifikato validacija nesėkminga'),
  certificateChainCreationError(
      code: '14016', message: 'Sertifikato grandinės kūrimo klaida'),
  certificateRevocationDataMissingError(
      code: '14017', message: 'Trūksta sertifikato atšaukimo duomenų'),
  signingMetadataMissingError(
      code: '14018', message: 'Trūksta metaduomenų pasirašymui'),
  preArchiveTimestampMissingError(
      code: '14019',
      message: 'Trūksta paprastos laiko žymos prieš archyvavimą'),
  ltvTimestampError(code: '14020', message: 'LTV laiko žymos uždėjimo klaida'),
  invalidQueryDataError(code: '14021', message: 'Netinkami užklausos duomenys'),
  queryDataNotFoundError(code: '14022', message: 'Užklausos duomenys nerasti'),
  queryFieldEmptyError(code: '14023', message: 'Užklausos laukas yra tuščias'),
  fileNotSignedError(code: '14024', message: 'Failas nėra pasirašytas'),
  fileNotFoundError(code: '14025', message: 'Failas nerastas'),
  fileInUseError(
      code: '14026', message: 'Failas naudojamas kitame pasirašymo procese'),
  signingPreparationFailedError(
      code: '14027',
      message:
          'Nepavyko paruošti parašo ilgalaikiam saugojimui. Trūksta atšaukimo duomenų'),
  certificatePersonMismatchError(
      code: '14028',
      message: 'Sertifiakte nurodytas asmuo nesutampa su pateiktu'),
  unqualifiedCertificateError(
      code: '14029', message: 'Sertifiaktas yra nekvalifikuotas'),
  missingMandatoryMetadataError(
      code: '14030', message: 'Trūksta privalomų metaduomenų'),
  signingProcessNotStartedError(
      code: '15001', message: 'Pasirašymo procesas dar nepradėtas'),
  signerAlreadyExistsError(
      code: '15002', message: 'Pasirašantysis jau egzistuoja'),
  unknownSignerError(code: '15003', message: 'Nežinomas pasirašantysis'),
  signerAlreadySignedError(
      code: '15004', message: 'Pasirašantysis jau pasirašė'),
  signingProcessError(
      code: '15005', message: 'Pasirašymo procese įvyko klaida'),
  signerNotBelongsToProcessError(
      code: '15006',
      message: 'Pasirašantysis nepriklauso šiam pasirašymo procesui'),
  metadataMismatchError(
      code: '15007', message: 'Nesutampa pasirašymo metaduomenys'),
  apiMethodRightsError(code: '15008', message: 'Api metodui trūksta teisių'),
  signerRefusedToSignError(
      code: '15009', message: 'Pasirašantysis atsisakė pasirašyti'),
  simultaneousSigningError(
      code: '15010',
      message: 'Aptiktas pasirašymas vienu metu to pačio dokumento'),
  fileNotFoundInManifestError(
      code: '15011',
      message: 'Failas nerastas, kuris nurodytas manifest.xml faile'),
  fileNotInContainerError(
      code: '15012', message: 'Dokumento konteineryje nėra pasirašomo failo'),
  unknownAsicFormatError(
      code: '15013', message: 'Neatpažįstamas ASiC formatas'),
  invalidFileMimeTypeError(code: '15014', message: 'Netinkamas failo mimetype'),
  unsupportedSignatureTypeError(
      code: '15015', message: 'Nepalaikomas parašo tipas'),
  unsupportedArchiveTypeError(
      code: '15016', message: 'Nepalaikomas archyvo tipas'),
  unsupportedContainerTypeError(
      code: '15017', message: 'Nepalaikomas konteinerio tipas'),
  manifestOrContainerFileMissingError(
      code: '15018', message: 'Trūksta manifest ar konteinerio failo'),
  printingOperationError(code: '15019', message: 'Vyksta spaudo operacija'),
  certificateSignatureDataMismatchError(
      code: '15020', message: 'Sertifkato ir parašo duomenys nesutampa'),
  certificateNotSuitableForAuthenticationError(
      code: '15021', message: 'Sertifikatas netinkamas autentifikacijai'),
  authenticationProcessNotFoundError(
      code: '15022', message: 'Autentifikacijos procesas nerastas'),
  authenticationProcessNotCompletedError(
      code: '15023', message: 'Autentifikacijos procesas nepabaigtas'),
  signingAlgorithmKeyMismatchError(
      code: '15024',
      message: 'Pasirašymo algoritmas ir pasirašymo raktas nesutampa'),
  fileTooLargeForBase64DownloadError(
      code: '15025',
      message: 'Failas per didelis parsisiuntimui base64 formatu'),
  ;

  /// Error code as in the API documentation
  final String code;

  /// Error message as in the API documentation
  final String message;

  /// Creates an [ElpakoError] instance with the given [code] and [message]
  const ElpakoError({required this.code, required this.message});

  /// Returns the error code and message as a string
  @override
  String toString() {
    return 'ElpakoError: $code - $message';
  }

  /// Returns an [ElpakoError] instance from the given [code]
  /// if the [code] is not found, returns [ElpakoError.unknownError]
  static ElpakoError fromCode(String code) {
    return ElpakoError.values.firstWhere(
      (error) => error.code == code,
      orElse: () => ElpakoError.unknownError,
    );
  }
}
