/// Signature authority that is used to sign the PDF document
enum SignatureAuthority {
  /// Signing with a mobile ID
  mobileId,

  /// Signing with a smart ID
  smartId,

  /// Signing method is unknown at the moment
  unknown;
}

enum DocumentType {
  pdf,
  adoc,
}
