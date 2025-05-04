import 'dart:io';

import 'package:flutter/services.dart';

Future<SecurityContext> get globalSecurityContext async {
  final cert = await rootBundle.load('cert/tmdb.pem');
  return SecurityContext(withTrustedRoots: false)
    ..setTrustedCertificatesBytes(cert.buffer.asInt8List());
}
