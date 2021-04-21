import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:widgets/pages/contactos.dart';


Future<String> _loadAContactsAsset() async {
  return await rootBundle.loadString('assets/Contactos.json');
}


Future loadContacts() async {
  String jsonString = await _loadAContactsAsset();
  final jsonResponse = json.decode(jsonString);
  Contactos contact = new Contactos.fromJson(jsonResponse);
  print(contact.nombre);
}