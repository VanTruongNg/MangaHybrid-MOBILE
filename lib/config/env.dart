import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String get apiUrl => dotenv.env['API_URL'] ?? '';
  static String get googleClientId => dotenv.env['GOOGLE_CLIENT_ID'] ?? '';
  static String get wsUrl => dotenv.env['WS_URL'] ?? '';
  
  static Future<void> init() async {
    await dotenv.load(fileName: '.env');
  }
}