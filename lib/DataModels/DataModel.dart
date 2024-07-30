import 'package:api_calling_ecommerce_site/ApiCalling.dart';
class JsonData {
  int id;
  String name;
  String email;
  Address address;
  Company company;

  JsonData(
    this.id,
    this.name,
    this.email,
    this.address,
    this.company,
  );

  factory JsonData.fromJson(Map json) {
    int id = json['id'] ?? 0;
    String name = json['name'] ?? 'Unknown';
    String email = json['email'] ?? 'Unknown';
    Address address = Address.fromJson(json['address'] ?? {});
    Company company = Company.fromJson(json['company'] ?? {});
    return JsonData(
      id,
      name,
      email,
      address,
      company,
    );
  }

  @override
  String toString() {
    return 'JsonData{id: $id, name: $name, email: $email, address: $address, company: $company}';
  }

  JsonData.name(this.id, this.name, this.email, this.address, this.company);
}

class Address {
  String city;
  Geo geo;



  Address(this.city, this.geo);

  factory Address.fromJson(Map json) {
    String city = json['city'] ?? 'Unknown';
    Geo geo = Geo.fromJson(json['geo'] ?? {});

    return Address(
      city,
      geo,
    );
  }
}

class Geo {
  String lat;

  Geo(this.lat);

  factory Geo.fromJson(Map json) {
    return Geo(json['lat'] ?? 0);
  }
}

class Company {
  String name;

  Company(this.name);

  factory Company.fromJson(Map json) {
    return Company(json['name'] ?? 'Unknown');
  }
}

//
// void fff() {
//   Map json = {
//       "id": 1,
//       "name": "Leanne Graham",
//       "username": "Bret",
//       "email": "Sincere@april.biz",
//       "address": {
//         "street": "Kulas Light",
//         "suite": "Apt. 556",
//         "city": "Gwenborough",
//         "zipcode": "92998-3874",
//         "geo": {
//           "lat": "-37.3159",
//           "lng": "81.1496"
//         }
//       },
//       "phone": "1-770-736-8031 x56442",
//       "website": "hildegard.org",
//       "company": {
//         "name": "Romaguera-Crona",
//         "catchPhrase": "Multi-layered client-server neural-net",
//         "bs": "harness real-time e-markets"
//       }
//   };
//   print("FFF called...");
//   JsonData jsonData = JsonData.fromJson(json);
//
//   print('++++++++ > ${jsonData.address.geo.lat}');
// }

class JsonPhotos
{
  int albumId;
  int id;
  String title;
  String url;

  JsonPhotos(this.albumId, this.id, this.title, this.url);
  factory JsonPhotos.fromJson(Map json)
  {
    int albumId=json['albumId'];
    int id=json['id'];
    String title=json['title'];
    String url=json['url'];

    return JsonPhotos(albumId, id, title, url );

  }
}
