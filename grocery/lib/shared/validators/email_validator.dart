import './validator.dart';

class EmailValidator extends Validator {
  static const defaultErrorMessage = 'E-mail inválido';
  final emailRegex = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$",
  );

  EmailValidator({
    super.fieldName,
    String? errorMessage,
  }) : super(errorMessage: errorMessage ?? defaultErrorMessage);

  @override
  String? validate(String? value) {
    if (value == null) return null;
    if (emailRegex.hasMatch(value)) return null;

    return formmatedMessage;
  }
}
