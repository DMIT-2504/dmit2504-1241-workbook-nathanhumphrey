import 'package:week_02_async_dart/week_02_async_dart.dart';

Future<void> main(List<String> arguments) async {
  // Fetch from the dog api
  // https://dog.ceo/api/breeds/image/random
  // https://dog.ceo/api/breeds/list/all

  // Get random dog image
  const dogUrl = 'https://dog.ceo/api/breeds/image/random';
  var dogData = await getJson(dogUrl);
  print(dogData);

  // Get all breeds
  const allBreedsUrl = 'https://dog.ceo/api/breeds/list/all';
  dogData = await getJson(allBreedsUrl);
  print(dogData['message']['australian'][0]); // shepherd
}
