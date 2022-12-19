import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Report {
  final String email;
  final List<String> gweight;
  final List<String> tinfo;
  final int kudu, cow, sheep, chicken, goat, horse;

  Report(this.email, this.gweight, this.tinfo, this.kudu, this.cow, this.sheep,
      this.chicken, this.goat, this.horse);

  Report.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        gweight = json['grass_weights'],
        tinfo = json['tree_info'],
        kudu = json['kudu'],
        cow = json['cow'],
        sheep = json['sheep'],
        chicken = json['chicken'],
        goat = json['goat'],
        horse = json['horse'];

  Map<String, dynamic> toJson() => {
        'email': email,
        'grass_weights': gweight,
        'tree_info': tinfo,
        'kudu': kudu,
        'cow': cow,
        'sheep': sheep,
        'chicken': chicken,
        'goat': goat,
        'horse': horse
      };
}

class FileStorage {
  Future<String> getPath() async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> getFile(String file) async {
    final path = await getPath();
    return File('$path/$file');
  }

  Future<int> readFile(String fileName) async {
    try {
      final file = await getFile(fileName);

      // Read the file
      final contents = await file.readAsString();

      return int.parse(contents);
    } catch (e) {
      // If encountering an error, return 0
      return 0;
    }
  }

  Future<File> writeFile(dynamic data, String fileName) async {
    final file = await getFile(fileName);
    // Write the file
    return file.writeAsString(jsonEncode(data));
  }
}
