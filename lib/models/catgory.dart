// To parse this JSON data, do
//
//     final message = messageFromJson(jsonString);

import 'dart:convert';

Message messageFromJson(String str) => Message.fromJson(json.decode(str));

String messageToJson(Message data) => json.encode(data.toJson());

class Message {
    Message({
        this.name,
        this.icon,
    });

    String? name;
    String? icon;

    factory Message.fromJson(Map<String, dynamic> json) => Message(
        name: json["name"],
        icon: json["icon"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "icon": icon,
    };
}
