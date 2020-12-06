import "package:cloud_firestore/cloud_firestore.dart";

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid});

  //collection reference
  final CollectionReference userAccountsCollection = FirebaseFirestore.instance.collection(
      'accounts');

  Future updateUserData(
      String firstName,
      String lastName,
      String email,
      String phone,
      String street,
      String city,
      String state,
      String zip,
      bool transactionAlert,
      bool accountChangeAlert) async {
      return await userAccountsCollection.doc(uid).set({
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'phone': phone,
        'street': street,
        'city': city,
        'state': state,
        'zip': zip,
        'transactionAlert': transactionAlert,
        'accountChangeAlert': accountChangeAlert
      });
  }

  //get user data stream
  Stream<QuerySnapshot> get userData {
    return userAccountsCollection.snapshots();
  }


}



