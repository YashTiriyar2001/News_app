import 'package:flutter/material.dart';
class ShareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share News'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add buttons for various sharing options here

            ElevatedButton.icon(
              onPressed: () {
                // Handle WhatsApp sharing
              },
              icon: Icon(Icons.share),
              label: Text('WhatsApp'),
            ),

            ElevatedButton.icon(
              onPressed: () {
                // Handle Instagram sharing
              },
              icon: Icon(Icons.share),
              label: Text('Instagram'),
            ),

            ElevatedButton.icon(
              onPressed: () {
                // Handle Facebook sharing
              },
              icon: Icon(Icons.share),
              label: Text('FB'),
            ),

            ElevatedButton.icon(
              onPressed: () {
                // Handle Email sharing
              },
              icon: Icon(Icons.email),
              label: Text('Email'),
            ),

            ElevatedButton.icon(
              onPressed: () {
                // Handle Message sharing
              },
              icon: Icon(Icons.message),
              label: Text('Message'),
            ),
          ],
        ),
      ),
    );
  }
}
