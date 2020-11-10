class User {
  static const String PassionCooking = 'cooking';
  static const String PassionHiking = 'hiking';
  static const String PassionTraveling = 'traveling';

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
}