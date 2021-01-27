import 'dart:ffi';

class User {
  final String uid;
  User({this.uid});
}

class UserData {
  final String uid;
  final String userName;
  final String userSurname;
  final String userNumber;
  final String userSecondNumber;
  final String userProximity;
  final String userLastLocation;

  UserData(
      {this.uid,
      this.userName,
      this.userSurname,
      this.userNumber,
      this.userSecondNumber,
      this.userProximity,
      this.userLastLocation});
}

class IllerData {
  final String ilUid;
  final String ilName;

  IllerData({this.ilUid, this.ilName});
}

class Ilceler {
  final String ilUid;
  final String ilceuid;
  final String ilceName;
  final String ilceDepremDurumu;
  final Float enlem;
  final Float boylam;

  Ilceler(this.enlem, this.boylam,
      {this.ilUid, this.ilceuid, this.ilceName, this.ilceDepremDurumu});
}

class Mahalleler {
  final String ilceuid;
  final String mahName;
  final String mahDepremDurumu;
  final Float mahEylem;
  final Float mahBoylam;

  Mahalleler(
      {this.ilceuid,
      this.mahName,
      this.mahDepremDurumu,
      this.mahEylem,
      this.mahBoylam});
}
