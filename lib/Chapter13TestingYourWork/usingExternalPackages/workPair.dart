

import 'package:english_words/english_words.dart';




void main() {
  // generateWordPairs().forEach(print);
  // nouns.take(10).forEach(print);
  List<WordPair>? wordPairs = [];
  wordPairs = generateWordPairs().take(10).toList();
  for( WordPair aPair in wordPairs) {
    print(aPair);
    print(aPair.first + ' - ' + aPair.second);
  }
}
