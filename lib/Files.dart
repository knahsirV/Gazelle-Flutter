import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Tree {
  int HT, HI, R;

  Tree(this.HT, this.HI, this.R);

  Tree.fromJson(Map<String, dynamic> json)
      : HT = json['tree_ht'],
        HI = json['tree_hi'],
        R = json['tree_r'];

  Map<String, dynamic> toJson() => {'tree_ht': HT, 'tree_hi': HI, 'tree_r': R};
}

class Report {
  String email;
  List<dynamic> gweight;
  List<Tree> tinfo;
  int kudu, cow, sheep, chicken, goat, horse;

  Report(this.email, this.gweight, this.kudu, this.cow, this.sheep,
      this.chicken, this.goat, this.horse, this.tinfo);

  factory Report.fromJson(Map<String, dynamic> json) {
    String email = json['email'];
    List<dynamic> gweight = json['grass_weights'];
    List<dynamic> jsonList = json['tree_info'];
    List<Tree> tinfo = jsonList.map((e) => Tree.fromJson(e)).toList();
    int kudu = json['kudu'];
    int cow = json['cow'];
    int sheep = json['sheep'];
    int chicken = json['chicken'];
    int goat = json['goat'];
    int horse = json['horse'];
    return Report(
        email, gweight, kudu, cow, sheep, chicken, goat, horse, tinfo);
  }

  Map<String, dynamic> toJson() => {
        'email': email,
        'grass_weights': gweight,
        'tree_info': tinfo.map((e) => e.toJson()).toList(),
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
    final folder = Directory(directory.path + '/reports');
    await folder.create();
    return folder.path;
  }

  Future<bool> fileExists(String fileName) async {
    return (await getFile(fileName)).existsSync();
  }

  Future<File> getFile(String file) async {
    final path = await getPath();

    return File('$path/$file');
  }

  Future<List<String>> listFiles() async {
    final directory = await getApplicationDocumentsDirectory();
    final folder = Directory(directory.path + '/reports');
    final files = folder.listSync();
    return files.map((file) => file.path).toList();
  }

  Future<void> deleteFile(String fileName) async {
    final file = await getFile(fileName);
    await file.delete();
  }

  Future<String> readFile(String fileName) async {
    try {
      final file = await getFile(fileName);

      // Read the file
      final contents = await file.readAsString();
      return contents;
    } catch (e) {
      // If encountering an error, return 0
      return 'error';
    }
  }

  Future<File> writeFile(Report data, String fileName) async {
    final file = await getFile(fileName);
    // Write the file
    return file.writeAsString(json.encode(data.toJson()));
  }
}
