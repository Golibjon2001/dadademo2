class User {
  String emile;
  String password;

  User({required this.password, required this.emile});

  User.fromJson(Map<String, dynamic> json)
      :emile=json['emile'],
        password=json['password'];

  Map<String, dynamic> toJson()=>{
    'emile':emile,
    'password':password,
  };
}
class Account {
  String emile;
  String number;
  String adres;

  Account({required this.number, required this.emile,required this.adres});

  Account.fromJson(Map<String, dynamic> json)
      :emile=json['emile'],
        number=json['number'],
       adres=json['adres'];

  Map<String, dynamic> toJson()=>{
    'emile':emile,
    'number':number,
    'adres':adres,
  };
}
