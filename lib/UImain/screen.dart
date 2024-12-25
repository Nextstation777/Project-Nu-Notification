import 'package:flutter/material.dart';
import 'package:nu_noti_loginpart_pre2/Event_temp/event.dart';
import 'package:nu_noti_loginpart_pre2/Event_temp/eventNote.dart';
import 'package:nu_noti_loginpart_pre2/provider/googleSignIn.dart';
import 'package:provider/provider.dart';

class ScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EVENT"),
        backgroundColor: Colors.green,
        centerTitle: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            },
            child: Text('Logout'),
          )
        ],
      ),
    );
  }
}
