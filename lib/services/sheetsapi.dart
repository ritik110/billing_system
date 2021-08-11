import 'package:billing_system/models/user.dart';
import 'package:gsheets/gsheets.dart';

class UserSheetsApi {
  static const _credentials = r'''{
  "type": "service_account",
  "project_id": "billingsystem-322608",
  "private_key_id": "10e28b8d376c2894cb394cbca7a37d4efca1727a",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDjDFnK+WE6ho5v\nUwl5faWvZ//1QMU2Gb3c9q4aKfaylLTKnZEbBo4JsfdbaRFp8v+M4yXtH/vUymI/\nw2yT+wc+gc3ZAx7iyxpgTMhScuYdfTMIx/rNHlQItIWdHp1jKCEsTmq+xUkz37e4\niJy4nBqPvDSi4TGiNek6rVFq8BNkBkOgisCnvTubAXPGIlEa4uSky8G4LD+gKxlw\nmMsp/xwXTWHLpXG8Fgx4h0K1sQML146gZe6q1Ya3tDnbTXWGRhRK33LaP/NM7TqS\n868IrYaZ3ive3SiNeFj9YgZlBch/z1VLLrL2FtsDEmD+kfYXpXauW07jnsmzEved\nBDZMJcwHAgMBAAECggEADs2yWRKTbU5yoP2IA5zWna4pOSNk+FcLUwneZiRQSmp5\nszA80sdFoYox94rNMNxAHz58LY7FS6V6bG/gd3GJkmDCPCEA9YaKjLbU5NNK/6c3\nGZ54UsFkd0DV6V2io2FtcEcYnKGeWTx/7Q8zMLI05SQ/RlNqegoLz+CXC2Ll0MKc\nWjJ5dliAsm5YWVpDkFi1ULdlkQK9qqXUklw97Ual7NNROxdR0TFJkE929ba0NxIM\nPGdkE4jEwa2J8YlES7UV9JgZKzI+xYWwgj8b6RXiKzfxGh8Kl5nXQykHuIu5v7fH\n3DngwSX6oaK8iJ5vJXDMuzoQIcQq13iVG1xqg12IGQKBgQD2IdDflsrUBWQZsxTl\nam0gW4u1PoCIfanxoCN2wkz7rKkdQVb6lu1QRjY7HiTGirmIyCWZ+IDOiKWBLYD9\n44Ub3bJkpNtVqfMc1a0S1IP1Upn34sTny55UiB2mz1klSJ9+6DrdTheAQChZZ2Kh\nSlS2JmYhWeWkzvxUpd/bsRGj4wKBgQDsJqrNTmrxcZsHS6G0n9kt8Z4XmCWnWtne\n5B7NCPEkGklRwZJKTQ2617qyU+2n8DyPIkOJiusy2t1gmuoDeEEFREDmeEn1D5Fz\nHdDBdPBG+4g+KnUShv42Pn2nzYtt3j9Cho4qqyD6U+B+X3gyewA4prRVJkC/EFZY\n6zA5Tu3YjQKBgQCKdV1t2gMBoIK+Hkq7/9GhqT3/WEiv/5kRTteEYCs0TN3Zkj8e\nuraHOOga+4sOkU1rz8OvSOcUyDPqZjGxIUNo+J75FPA50V/ssZsqA5iz8aKhmtTP\n3HCV9vhPNUddvOvUVUl/4wU/ZVgNayZFu23KBfHgAxU3UCUMbT9v870LpwKBgQCE\n86wb1HdvIZe3fsQ2rfwW2r436Gfilcqtq18P7mXc/pOi3Mlg3YrKU6R/u7LEZwOh\nThgZ+sU6J3CVcAIqG+z3axri5nw05SPtXK7oC88vF3P4E+0/lhLPNVWHQLisDYEu\nEhU+PoRdixWL8HH6cbeJLYm/mr6/ExKaEydeTGqqDQKBgQDe2kmw/OonLTdRFPkR\nu/Zijr0Okiv0a1GKzncE0NkSS1C+yHrqT6y+X3N/6PManV5fzX/jp4Z2qAB1gKVo\ngen/B7TP/jFSLwB/7FLZOxhXkYOVBPedGA8Ydu7Z8uTtP/JsfysdguuEG/0DLrgD\nKs0Z1JqWoc2Sw4BbeEVljLDEBg==\n-----END PRIVATE KEY-----\n",
  "client_email": "billingsystem@billingsystem-322608.iam.gserviceaccount.com",
  "client_id": "103846787092930001914",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/billingsystem%40billingsystem-322608.iam.gserviceaccount.com"
}
''';
  static final _spreadSheetId = "1HhSohlxk-s_zvEIlaoM3p0l5rE0cPtRpIKPj_-2V8Q4";
  static final _gsheets = GSheets(_credentials);
  static Worksheet? _userSheet;

  static Future init() async {
    try {
      final spreadsheet = await _gsheets.spreadsheet(_spreadSheetId);
      _userSheet = await _getWorkSheet(spreadsheet, title: "Users");
      final userheading = Userheadings.getFields();
      _userSheet!.values.insertRow(1, userheading);
    } catch (e) {
      print("Init Error: $e");
    }
  }

  static Future<Worksheet> _getWorkSheet(
    Spreadsheet spreadsheet, {
    required String title,
  }) async {
    try {
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetByTitle(title)!;
    }
  }

  static Future<User?> getByUsername(String username) async {
    if (_userSheet == null) return null;
    final json = await _userSheet!.values.map.rowByKey(username, fromColumn: 1);
    return json == null ? null : User.fromJson(json);
  }

  static Future insert(List<Map<String, dynamic>> rowlist) async {
    if (_userSheet == null) return;
    _userSheet!.values.map.appendRows(rowlist);
  }
}
