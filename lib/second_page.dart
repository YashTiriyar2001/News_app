import 'package:flutter/material.dart';

 
class NewsDetailScreen extends StatelessWidget {
  final Map<String, dynamic> source;

  NewsDetailScreen({required this.source});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(source['title']),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Author: ${source['author']}'),
            // Text('id: ${source['source']['id']}'),
            Text('Title: ${source['title']}'),
            Text('Description: ${source['description']}'),
            
            // Add the remaining fields
            Text('URL: ${source['url']}'), // Display the URL
            Text('Image URL: ${source['urlToImage']}'), // Display the Image URL
            Text('Published At: ${source['publishedAt']}'), // Display the Published Date
            Text('Content: ${source['content']}'), // Display the Content
            
            
          ],
        ),
      ),
    );
  }
}
