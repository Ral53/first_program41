import 'dart:math';
import 'package:flutter/material.dart';

class PalindromeView extends StatefulWidget {
  const PalindromeView({super.key});

  @override
  State<PalindromeView> createState() => _PalindromeViewState();
}

class _PalindromeViewState extends State<PalindromeView> {
  final TextEditingController inputController = TextEditingController();
  String palindromeResult = '';
  List<String> randomPalindromes = [];

  bool isPalindrome(String str) {
    String cleanedStr =
        str.replaceAll(RegExp(r'[^A-Za-z0-9]'), '').toLowerCase();
    String reversedStr = cleanedStr.split('').reversed.join('');
    return cleanedStr == reversedStr;
  }

  void generateRandomPalindromes() {
    List<String> knownPalindromes = [
      'madam',
      'racecar',
      'civic',
      'level',
      'deed',
      'rotor',
      'refer',
      'noon',
      '121',
      '12321',
      'wow',
      'eye',
      'pop',
      'stats',
    ];

    knownPalindromes.shuffle();
    randomPalindromes = knownPalindromes.take(5).toList();

    setState(() {});
  }

  String generateRandomString(Random random) {
    const characters =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    int length = random.nextInt(5) + 3;
    return List.generate(
      length,
      (index) => characters[random.nextInt(characters.length)],
    ).join();
  }

  // Function to check if the entered input is palindrome
  void checkPalindrome() {
    String input = inputController.text;
    setState(() {
      if (isPalindrome(input)) {
        palindromeResult = '"$input" is a Palindrome.';
      } else {
        palindromeResult = '"$input" is not a Palindrome.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Palindrome Checker'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.8),
        child: Column(
          children: [
            // Input field to check Palindrome
            TextField(
              controller: inputController,
              decoration: const InputDecoration(
                labelText: "Enter a word/number to check Palindrome:",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: checkPalindrome,
              child: const Text("Check Palindrome"),
            ),
            const SizedBox(height: 20),
            Text(palindromeResult, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: generateRandomPalindromes,
              child: const Text("Generate 5 Random Palindromes"),
            ),
            const SizedBox(height: 20),
            Text(
              randomPalindromes.isNotEmpty
                  ? 'Random Palindromes: ${randomPalindromes.join(', ')}'
                  : 'No Palindromes generated yet.',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
