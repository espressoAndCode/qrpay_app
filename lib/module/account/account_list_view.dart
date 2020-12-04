import 'package:flutter/material.dart';
import 'user.dart';
import 'package:qrpay_app/widget/drawer.dart';

class AccountPage extends StatefulWidget {
  static const String routeName = '/account';
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Account')),
        drawer: AppDrawer(),
        body: Container(
            padding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
                builder: (context) => Form(
                    key: _formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            decoration:
                            InputDecoration(labelText: 'First name'),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your first name';
                              }
                            },
                            onSaved: (val) =>
                                setState(() => _user.firstName = val),
                          ),
                          TextFormField(
                              decoration:
                              InputDecoration(labelText: 'Last name'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your last name.';
                                }
                              },
                              onSaved: (val) =>
                                  setState(() => _user.lastName = val)),


                          TextFormField(
                              decoration:
                              InputDecoration(labelText: 'Email'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your email address.';
                                }
                              },
                              onSaved: (val) =>
                                  setState(() => _user.email = val)),
                          TextFormField(
                              decoration:
                              InputDecoration(labelText: 'Phone'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your phone number.';
                                }
                              },
                              onSaved: (val) =>
                                  setState(() => _user.phone = val)),


                          TextFormField(
                              decoration:
                              InputDecoration(labelText: 'Street'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your street address.';
                                }
                              },
                              onSaved: (val) =>
                                  setState(() => _user.street = val)),
                          TextFormField(
                              decoration:
                              InputDecoration(labelText: 'City'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your city.';
                                }
                              },
                              onSaved: (val) =>
                                  setState(() => _user.city = val)),
                          TextFormField(
                              decoration:
                              InputDecoration(labelText: 'State'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your state.';
                                }
                              },
                              onSaved: (val) =>
                                  setState(() => _user.state = val)),
                          TextFormField(
                              decoration:
                              InputDecoration(labelText: 'Zip'),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your zip code.';
                                }
                              },
                              onSaved: (val) =>
                                  setState(() => _user.zip = val)),

                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 16.0),
                              child: RaisedButton(
                                  onPressed: () {
                                    final form = _formKey.currentState;
                                    if (form.validate()) {
                                      form.save();
                                      _user.save();
                                      _showDialog(context);
                                    }
                                  },
                                  child: Text('Save'))),
                        ])))));
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Submitting form')));
  }
}