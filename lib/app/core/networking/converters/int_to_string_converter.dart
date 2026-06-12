import 'package:freezed_annotation/freezed_annotation.dart';

class IntToStringConverter implements JsonConverter<String, dynamic> {
  const IntToStringConverter();

  @override
  fromJson(json) {
    return json.toString();
  }

  @override
  toJson(object) {
    return int.tryParse(object);
  }
}
