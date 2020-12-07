import "package:cloud_firestore/cloud_firestore.dart";
import 'package:qrpay_app/module/account/user.dart';
import 'package:qrpay_app/module/account/user_instance.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid});

  //collection reference
  final CollectionReference userAccountCollection = FirebaseFirestore.instance.collection(
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
      return await userAccountCollection.doc(uid).set({
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
  //
  // List<User> _userListFromSnapshot(QuerySnapshot snapshot) {
  //   return snapshot.docs.map((doc){
  //     print(doc);
  //     // return UserInstance(
  //     //     firstName: doc.data['firstName'] ?? '',
  //     //     lastName: doc.data['firstName'] ?? '',
  //     //     email: doc.data['firstName'] ?? '',
  //     //     phone: doc.data['firstName'] ?? '',
  //     //     street: doc.data['firstName'] ?? '',
  //     //     city: doc.data['firstName'] ?? '',
  //     //     state: doc.data['firstName'] ?? '',
  //     //     zip: doc.data['firstName'] ?? '',
  //     //     transactionAlert: doc.data['firstName'] ?? '',
  //     //     accountChangeAlert: doc.data['firstName'] ?? ''
  //     // )
  //   })
  // }
  //
  //




  //get user data stream
  Stream<QuerySnapshot> get userData {
    return userAccountCollection.snapshots();
  }


}



