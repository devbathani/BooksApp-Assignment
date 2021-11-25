class Model {
  Model({
    required this.clients,
  });

  List<Client> clients;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        clients:
            List<Client>.from(json["clients"].map((x) => Client.fromJson(x))),
      );
}

class Client {
  Client({
    required this.name,
    required this.company,
  });

  String name;

  String company;

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        name: json["name"],
        company: json["company"],
      );
}
