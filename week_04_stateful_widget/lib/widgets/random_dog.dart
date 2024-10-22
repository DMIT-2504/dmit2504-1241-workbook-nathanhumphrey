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
  var likeCount = 0;
  var dislikeCount = 0;

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
        imageUrl != ''
            ? Dismissible(
                key: UniqueKey(),
                child: Image.network(imageUrl),
                onDismissed: (direction) async {
                  final url = await getDogImage();

                  setState(() {
                    switch (direction) {
                      case DismissDirection.startToEnd:
                        likeCount += 1;
                        break;
                      case DismissDirection.endToStart:
                        dislikeCount += 1;
                        break;
                      default:
                        break;
                    }
                    imageUrl = url;
                  });
                },
              )
            /* OPTION 2: Gestures for like/dislike
            GestureDetector(
                child: Image.network(imageUrl),
                onLongPress: () async {
                  final url = await getDogImage();

                  setState(() {
                    dislikeCount += 1;
                    imageUrl = url;
                  });
                },
                onTap: () async {
                  final url = await getDogImage();

                  setState(() {
                    likeCount += 1;
                    imageUrl = url;
                  });
                },
              )*/
            : const Text('Loading Image'),
        /* OPTION 1: two buttons for like/dislike
        ElevatedButton(
          onPressed: () async {
            final url = await getDogImage();

            setState(() {
              likeCount += 1;
              imageUrl = url;
            });
          },
          child: const Text('Like Image'),
        ),
        ElevatedButton(
          onPressed: () async {
            final url = await getDogImage();

            setState(() {
              dislikeCount += 1;
              imageUrl = url;
            });
          },
          child: const Text('Dislike Image'),
        ),*/
        Text('Likes: $likeCount - Dislikes: $dislikeCount'),
      ],
    );
  }
}
