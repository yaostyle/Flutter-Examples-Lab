import 'package:flutter/material.dart';
import 'package:listview_example/contactlist/modal/contact.dart';

class ContactListItem extends StatelessWidget {
  final ContactModal _contactModal;

  ContactListItem(this._contactModal);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          _contactModal.fullname[0],
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amberAccent,
      ),
      title: Text(_contactModal.fullname),
      subtitle: Text(_contactModal.email),
    );
  }
}
