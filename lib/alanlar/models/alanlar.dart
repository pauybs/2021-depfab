import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import 'package:http/http.dart' as http;

class Alanlar {
  final String mahAdi;
  final String nufus;
  final String latitude;
  final String longitude;
  final String durum;

  Alanlar({
    this.mahAdi,
    this.nufus,
    this.latitude,
    this.longitude,
    this.durum,
  });

  factory Alanlar.fromJson(Map json) {
    return Alanlar(
      mahAdi: json['Mahalle Adı'],
      nufus: json['Mahalle Nüfusu'],
      latitude: json['Enlem'],
      longitude: json['Boylam'],
      durum: json['Fay Hattı Durum Bilgisi'],
    );
  }

  Future<Map<String, dynamic>> parseJsonFromAssets(String assetsPath) async {
    print('--- Parse json from: $assetsPath');
    return rootBundle
        .loadString(assetsPath)
        .then((jsonStr) => jsonDecode(jsonStr));
  }
}
