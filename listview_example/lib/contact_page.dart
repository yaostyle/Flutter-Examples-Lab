import 'package:flutter/material.dart';
import 'package:listview_example/contactlist/contact_list.dart';
import 'package:listview_example/contactlist/modal/contact.dart';

class ContactPage extends StatelessWidget {
  _buildContactList() {
    return <ContactModal>[
      const ContactModal(fullname: 'Jason Wong', email: 'jason.w@abdddsss.com'),
      const ContactModal(fullname: 'Mario James', email: 'mjames@jjjls.com'),
      const ContactModal(
          fullname: 'Cindy Lorreno', email: 'cindylorreno@llllskj.com'),
      const ContactModal(
          fullname: 'Larry King', email: 'king.larry@larryking.com'),
      const ContactModal(fullname: 'Bill Gass', email: 'bgass@bgass.com'),
      const ContactModal(fullname: 'GGGYY', email: 'ggyy@ggyy.com'),
      const ContactModal(fullname: 'Jason Wong', email: 'jason.w@abdddsss.com'),
      const ContactModal(fullname: 'Mario James', email: 'mjames@jjjls.com'),
      const ContactModal(
          fullname: 'Cindy Lorreno', email: 'cindylorreno@llllskj.com'),
      const ContactModal(
          fullname: 'Larry King', email: 'king.larry@larryking.com'),
      const ContactModal(fullname: 'Bill Gass', email: 'bgass@bgass.com'),
      const ContactModal(fullname: 'GGGYY', email: 'ggyy@ggyy.com'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactsList(_buildContactList()),
    );
  }
}
