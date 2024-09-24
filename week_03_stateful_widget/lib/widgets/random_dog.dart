import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class RandomDog extends StatelessWidget {
  const RandomDog({super.key});

  static const dogUrl = 'https://dog.ceo/api/breeds/image/random';

  static Future<String> getDogImage() async {
    final url = Uri.parse(dogUrl);
    final response = await get(url);
    return jsonDecode(response.body)['message'];
  }

  // TODO: use the getDogImage function

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            'https://images.dog.ceo/breeds/terrier-lakeland/n02095570_1068.jpg'),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Get Image'),
        ),
      ],
    );
  }
}
