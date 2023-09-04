import 'dart:convert';

import 'package:dict_app/data/dto/dict_dto.dart';
import 'package:http/http.dart';

class RemoteClient {
  Future<List<DictDto>> getMeaning(String word) async {
    try {
      Uri uri =
          Uri.parse("https://api.dictionaryapi.dev/api/v2/entries/en/$word");

      Response resp = await get(uri);
      List<dynamic> decode = jsonDecode(resp.body);
      return decode.map((e) => DictDto.fromJson(e)).toList();
    } catch (e, stk) {
      print(e);
      return [];
    }
  }
}
