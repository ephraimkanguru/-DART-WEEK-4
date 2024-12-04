import 'dart:io';

void stringManipulation(String input) {
  // String Concatenation
  String name = "Dart";
  String message = "Welcome to " + name + " Programming!";
  print(message);

  // String Interpolation
  String age = "25";
  String intro = "I am $age years old.";
  print(intro);

  // Substring Extraction
  String subStr = message.substring(11, 15); // Extracts "Dart"
  print(subStr);

  // Case Conversion
  String upper = message.toUpperCase();
  String lower = message.toLowerCase();
  print(upper);
  print(lower);

  // Reverse String
  String reversed = input.split('').reversed.join('');
  print(reversed);

  // String Length
  print('Length of the string: ${input.length}');
}

void collections() {
  // List
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  fruits.add('Orange');
  fruits.remove('Banana');
  fruits.forEach((fruit) => print(fruit));

  // Set
  Set<String> uniqueFruits = {'Apple', 'Banana', 'Mango'};
  uniqueFruits.add('Apple'); // No duplicates allowed
  uniqueFruits.remove('Banana');
  uniqueFruits.forEach((fruit) => print(fruit));

  // Map
  Map<String, int> fruitCount = {'Apple': 10, 'Banana': 5};
  fruitCount['Orange'] = 8;
  fruitCount.remove('Banana');
  fruitCount.forEach((key, value) => print('$key: $value'));
}

void fileHandling() async {
  try {
    // Reading from a file
    File inputFile = File('input.txt');
    String content = await inputFile.readAsString();
    print('Content from input.txt: $content');

    // Writing to a file
    File outputFile = File('output.txt');
    await outputFile.writeAsString('New data to save in the file.');
    print('Data written to output.txt');
  } catch (e) {
    print('Error during file operations: $e');
  }
}

void dateTimeOperations() {
  // Current DateTime
  DateTime now = DateTime.now();
  print('Current Date and Time: $now');

  // Date Formatting
  String formattedDate = '${now.day}/${now.month}/${now.year}';
  print('Formatted Date: $formattedDate');

  // Adding/Subtracting Days
  DateTime newDate = now.add(Duration(days: 5));
  print('Date after 5 days: $newDate');

  // Date Difference
  DateTime pastDate = DateTime(2023, 12, 1);
  Duration diff = now.difference(pastDate);
  print('Difference: ${diff.inDays} days');
}

void main() async {
  // Prompt user input for string manipulation
  stdout.write('Enter a string: ');
  String userInput = stdin.readLineSync() ?? '';

  // Perform string manipulation
  stringManipulation(userInput);

  // Store results in a collection
  List<String> results = [];
  results.add(userInput);
  print('Stored Results: $results');

  // Save results to a file
  try {
    File outputFile = File('log.txt');
    await outputFile.writeAsString('Logged at ${DateTime.now()}: $userInput\n', mode: FileMode.append);
    print('Data saved to log.txt');
  } catch (e) {
    print('Error saving to file: $e');
  }

  // Date and time usage
  dateTimeOperations();
}
