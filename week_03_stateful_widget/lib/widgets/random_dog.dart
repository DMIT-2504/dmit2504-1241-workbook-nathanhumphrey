import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class RandomDog extends StatefulWidget {
  const RandomDog({super.key});

  @override
  State<RandomDog> createState() => _RandomDogState();
}

class _RandomDogState extends State<RandomDog> {
  static const dogUrl = 'https://dog.ceo/api/breeds/image/random';

  var imageUrl = '';

  static Future<String> getDogImage() async {
    final url = Uri.parse(dogUrl);
    final response = await get(url);
    return jsonDecode(response.body)['message'];
  }

  @override
  void initState() {
    getDogImage().then((url) {
      setState(() {
        imageUrl = url;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        imageUrl != '' ? Image.network(imageUrl) : const Text('Loading Image'),
        ElevatedButton(
          onPressed: () {
            getDogImage().then((url) {
              setState(() {
                imageUrl = url;
              });
            });
          },
          child: const Text('Get Image'),
        ),
      ],
    );
  }
}
