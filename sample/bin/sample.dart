import 'dart:convert';

const json = '''
[
  {
    "text": "O que é Flutter?",
    "difficulty": "easy",
    "relatedLevels": ["easy", "medium"]
  },
  {
    "text": "Qual linguagem é utilizada pelo Flutter?",
    "difficulty": "easy",
    "relatedLevels": ["easy"]
  },
  {
    "text": "O que é um StatefulWidget?",
    "difficulty": "medium",
    "relatedLevels": ["easy", "medium"]
  },
  {
    "text": "Qual a diferença entre hot reload e hot restart?",
    "difficulty": "medium",
    "relatedLevels": ["medium", "hard"]
  },
  {
    "text": "Explique o ciclo de vida de um widget com estado.",
    "difficulty": "hard",
    "relatedLevels": ["medium", "hard"]
  }
]
''';

class Question {
  final String text;
  final String difficult;
  final List<String> levels;

  Question({
    required this.text,
    required this.difficult,
    required this.levels,
  });

  factory Question.from(dynamic data) {
    return Question(
      text: data['text'],
      difficult: data['difficulty'],
      levels: List<String>.from(data['relatedLevels']),
    );
  }
}

Object? cast(Object? key, Object? value) {
  print('key=$key\tvalue=$value');
  return null;
}

void main() {
  final data = jsonDecode(json);
  final List<Question> questions = [];

  for (var q in data) {
    print('q=$q');

    questions.add(Question.from(q));
  }
}
