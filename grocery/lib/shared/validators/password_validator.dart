import './validator.dart';

class PasswordValidator extends Validator {
  static const defaultErrorMessage = 'Senha inválida';
  final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).+$');

  PasswordValidator({
    super.fieldName,
    String? errorMessage,
  }) : super(errorMessage: errorMessage ?? defaultErrorMessage);

  @override
  String? validate(String? value) {
    if (value == null) return null;
    if (passwordRegex.hasMatch(value)) return null;

    return formmatedMessage;
  }
}
