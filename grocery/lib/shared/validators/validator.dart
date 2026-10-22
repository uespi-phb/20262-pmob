abstract class Validator {
  final String? fieldName;
  final String errorMessage;

  Validator({
    this.fieldName,
    required this.errorMessage,
  });

  String? validate(String? value);

  String get formmatedMessage => (fieldName != null) ? '$fieldName: $errorMessage' : errorMessage;
}
