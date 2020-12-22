import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDao {

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<String> getAccount() async {
    final SharedPreferences prefs = await _prefs;
    return (prefs.getString('account') ?? null);
  }

}