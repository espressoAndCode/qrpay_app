class User {
  String uid;
  String firstName = '';
  String lastName = '';
  String email = '';
  String phone = '';
  String street = '';
  String city = '';
  String state = '';
  String zip = '';
  bool transaction_alert = false;
  bool account_change_alert = false;

  save() {
    print('saving user using a web service');
  }

  User({this.uid});
}