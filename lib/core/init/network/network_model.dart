import 'dart:convert';

class CatsModel {
  List<Breed>? breeds;
  List<Category>? categories;
  String? id;
  String? url;
  int? width;
  int? height;

  CatsModel({
    required this.breeds,
    required this.categories,
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  Map<String, dynamic> toMap() {
    return {
      'breeds': breeds?.map((x) => x.toMap()).toList(),
      'categories': categories?.map((x) => x.toMap()).toList(),
      'id': id,
      'url': url,
      'width': width,
      'height': height,
    };
  }

  factory CatsModel.fromMap(Map<String, dynamic> map) {
    return CatsModel(
      breeds: map['breeds'] != null ? List<Breed>.from(map['breeds']?.map((x) => Breed.fromMap(x))) : null,
      categories: map['categories'] != null ? List<Category>.from(map['categories']?.map((x) => Category.fromMap(x))) : null,
      id: map['id'],
      url: map['url'],
      width: map['width']?.toInt(),
      height: map['height']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory CatsModel.fromJson(String source) => CatsModel.fromMap(json.decode(source));
}

class Breed {
  Weight weight;
  String id;
  String name;
  String cfaUrl;
  String vcahospitalsUrl;
  String temperament;
  String origin;
  String countryCodes;
  String countryCode;
  String description;
  String lifeSpan;
  int indoor;
  int lap;
  String altNames;
  int adaptability;
  int affectionLevel;
  int childFriendly;
  int catFriendly;
  int dogFriendly;
  int energyLevel;
  int grooming;
  int healthIssues;
  int intelligence;
  int sheddingLevel;
  int socialNeeds;
  int strangerFriendly;
  int vocalisation;
  int bidability;
  int experimental;
  int hairless;
  int natural;
  int rare;
  int rex;
  int suppressedTail;
  int shortLegs;
  String wikipediaUrl;
  int hypoallergenic;
  String referenceImageId;
  String vetstreetUrl;

  Breed({
    required this.weight,
    required this.id,
    required this.name,
    required this.cfaUrl,
    required this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    required this.lap,
    required this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.catFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.bidability,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    required this.wikipediaUrl,
    required this.hypoallergenic,
    required this.referenceImageId,
    required this.vetstreetUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'weight': weight.toMap(),
      'id': id,
      'name': name,
      'cfaUrl': cfaUrl,
      'vcahospitalsUrl': vcahospitalsUrl,
      'temperament': temperament,
      'origin': origin,
      'countryCodes': countryCodes,
      'countryCode': countryCode,
      'description': description,
      'lifeSpan': lifeSpan,
      'indoor': indoor,
      'lap': lap,
      'altNames': altNames,
      'adaptability': adaptability,
      'affectionLevel': affectionLevel,
      'childFriendly': childFriendly,
      'catFriendly': catFriendly,
      'dogFriendly': dogFriendly,
      'energyLevel': energyLevel,
      'grooming': grooming,
      'healthIssues': healthIssues,
      'intelligence': intelligence,
      'sheddingLevel': sheddingLevel,
      'socialNeeds': socialNeeds,
      'strangerFriendly': strangerFriendly,
      'vocalisation': vocalisation,
      'bidability': bidability,
      'experimental': experimental,
      'hairless': hairless,
      'natural': natural,
      'rare': rare,
      'rex': rex,
      'suppressedTail': suppressedTail,
      'shortLegs': shortLegs,
      'wikipediaUrl': wikipediaUrl,
      'hypoallergenic': hypoallergenic,
      'referenceImageId': referenceImageId,
      'vetstreetUrl': vetstreetUrl,
    };
  }

  factory Breed.fromMap(Map<String, dynamic> map) {
    return Breed(
      weight: Weight.fromMap(map['weight']),
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      cfaUrl: map['cfaUrl'] ?? '',
      vcahospitalsUrl: map['vcahospitalsUrl'] ?? '',
      temperament: map['temperament'] ?? '',
      origin: map['origin'] ?? '',
      countryCodes: map['countryCodes'] ?? '',
      countryCode: map['countryCode'] ?? '',
      description: map['description'] ?? '',
      lifeSpan: map['lifeSpan'] ?? '',
      indoor: map['indoor']?.toInt() ?? 0,
      lap: map['lap']?.toInt() ?? 0,
      altNames: map['altNames'] ?? '',
      adaptability: map['adaptability']?.toInt() ?? 0,
      affectionLevel: map['affectionLevel']?.toInt() ?? 0,
      childFriendly: map['childFriendly']?.toInt() ?? 0,
      catFriendly: map['catFriendly']?.toInt() ?? 0,
      dogFriendly: map['dogFriendly']?.toInt() ?? 0,
      energyLevel: map['energyLevel']?.toInt() ?? 0,
      grooming: map['grooming']?.toInt() ?? 0,
      healthIssues: map['healthIssues']?.toInt() ?? 0,
      intelligence: map['intelligence']?.toInt() ?? 0,
      sheddingLevel: map['sheddingLevel']?.toInt() ?? 0,
      socialNeeds: map['socialNeeds']?.toInt() ?? 0,
      strangerFriendly: map['strangerFriendly']?.toInt() ?? 0,
      vocalisation: map['vocalisation']?.toInt() ?? 0,
      bidability: map['bidability']?.toInt() ?? 0,
      experimental: map['experimental']?.toInt() ?? 0,
      hairless: map['hairless']?.toInt() ?? 0,
      natural: map['natural']?.toInt() ?? 0,
      rare: map['rare']?.toInt() ?? 0,
      rex: map['rex']?.toInt() ?? 0,
      suppressedTail: map['suppressedTail']?.toInt() ?? 0,
      shortLegs: map['shortLegs']?.toInt() ?? 0,
      wikipediaUrl: map['wikipediaUrl'] ?? '',
      hypoallergenic: map['hypoallergenic']?.toInt() ?? 0,
      referenceImageId: map['referenceImageId'] ?? '',
      vetstreetUrl: map['vetstreetUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Breed.fromJson(String source) => Breed.fromMap(json.decode(source));
}

class Weight {
  String imperial;
  String metric;

  Weight({
    required this.imperial,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return {
      'imperial': imperial,
      'metric': metric,
    };
  }

  factory Weight.fromMap(Map<String, dynamic> map) {
    return Weight(
      imperial: map['imperial'] ?? '',
      metric: map['metric'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Weight.fromJson(String source) => Weight.fromMap(json.decode(source));
}

class Category {
  int id;
  String name;

  Category({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) => Category.fromMap(json.decode(source));
}
