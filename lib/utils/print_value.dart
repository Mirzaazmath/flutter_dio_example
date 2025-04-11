import 'dart:convert';
import 'dart:developer';

void printValue(dynamic value, {String tag = ""}) {
  try {
    var decodedJson = json.decode(value.toString()) as Map<String, dynamic>;
    log(
      "JSON OUTPUT : $tag ${const JsonEncoder.withIndent('   ').convert(decodedJson)}\n",
    );
  } catch (_) {
    if (value is Map) {
      log(
        "JSON OUTPUT : $tag ${const JsonEncoder.withIndent('   ').convert(value)}\n",
      );
    } else {
      log("PRINT OUTPUT : $tag $value\n\n");
    }
  }
}
