import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Experiment09Page extends StatefulWidget {
  const Experiment09Page({super.key});

  @override
  State<Experiment09Page> createState() => _Experiment09PageState();
}

class _Experiment09PageState extends State<Experiment09Page> {
  late Future<List<dynamic>> _posts;

  Future<List<dynamic>> _fetchPosts() async {
    final response = await http.get(Uri.parse(
      'https://jsonplaceholder.typicode.com/posts?_limit=10',
    ));
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as List<dynamic>;
    }
    throw Exception('Failed to load posts (${response.statusCode})');
  }

  @override
  void initState() {
    super.initState();
    _posts = _fetchPosts();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Experiment 9 – REST API')),
        body: FutureBuilder<List<dynamic>>(
          future: _posts,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            final posts = snapshot.data ?? [];
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  child: Text('${posts[index]['id']}'),
                ),
                title: Text(posts[index]['title']),
                subtitle: Text(posts[index]['body']),
              ),
            );
          },
        ),
      );
}
