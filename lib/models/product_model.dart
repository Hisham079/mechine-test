// To parse this JSON data, do
//
//     final message = messageFromJson(jsonString);

import 'dart:convert';


prodct_model messageFromJson(String str) => prodct_model.fromJson(json.decode(str));

String messageToJson(prodct_model data) => json.encode(data.toJson());

class prodct_model {
    prodct_model({
        required this.name,
        required this.code,
        required this.price,
    });

    String name;
    String code;
    String price;

    factory prodct_model.fromJson(Map<String, dynamic> json) => prodct_model(
        name: json["name"],
        code: json["code"],
        price: json["code"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "code": code,
        "price": price,
    };
}
