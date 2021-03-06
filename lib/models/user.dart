part of models;

@JsonSerializable()
class User {
  const User({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Address {
  const Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final LatLng geo;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  String toString() => '$street $suite. $city, $zipcode';
}

@JsonSerializable()
class LatLng {
  const LatLng({
    this.lat,
    this.lng,
  });

  @JsonKey(fromJson: double.tryParse)
  final double lat;

  @JsonKey(fromJson: double.tryParse)
  final double lng;

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
  Map<String, dynamic> toJson() => _$LatLngToJson(this);

  @override
  String toString() => '[$lat, $lng]';
}

@JsonSerializable()
class Company {
  const Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  final String name;
  final String catchPhrase;
  final String bs;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  @override
  String toString() => name;
}
