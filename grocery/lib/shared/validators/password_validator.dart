import './validator.dart';

class PasswordValidator extends Validator {
  static const defaultErrorMessage = 'Senha inválida';
  static const defaultRegExp = r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).+$';
  final RegExp? validateRegExp;

  PasswordValidator({
    super.fieldName,
    this.validateRegExp,
    String? errorMessage,
  }) : super(errorMessage: errorMessage ?? defaultErrorMessage);

  @override
  String? validate(String? value) {
    if (value == null) return null;

    final regexp = validateRegExp ?? RegExp(defaultRegExp);
    if (regexp.hasMatch(value)) return null;

    return formmatedMessage;
  }
}
