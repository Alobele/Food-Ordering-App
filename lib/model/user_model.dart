class UserModel{
  String? uid;
  String? fullName;
  String? email;

UserModel({this.uid, this.fullName, this.email});
// receive data from server

factory UserModel.fromMap(map){
  return UserModel(
    uid: map['uid'],
  email: map['email'],
  fullName: map['fullName'],
  );
  
}
// sending data to our server
Map<String, dynamic>toMap(){
  return{
    'uid': uid,
    'email': email,
    'fullName': fullName,
  };
}

}