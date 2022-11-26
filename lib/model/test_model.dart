class User {
  int? id;
  String? name;
  int? age;
  String? address;
  String? phone;
  String? email;

  User({
    this.id,
    this.name,
    this.age,
    this.address,
    this.phone,
    this.email,
  });

  User copyWith({
    int? id,
    String? name,
    int? age,
    String? address,
    String? phone,
    String? email,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'address': address,
      'phone': phone,
      'email': email,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int?,
      name: json['name'] as String?,
      age: json['age'] as int?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
    );
  }
}
