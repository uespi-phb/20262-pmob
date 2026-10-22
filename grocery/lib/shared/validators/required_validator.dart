import './validator.dart';

class RequiredValidator extends Validator {
  static const defaultErrorMessage = 'Campo obrigatório';

  RequiredValidator({
    super.fieldName,
    String? errorMessage,
  }) : super(errorMessage: errorMessage ?? defaultErrorMessage);

  @override
  String? validate(String? value) {
    if ((value != null) && (value.isNotEmpty)) return null;
    return formmatedMessage;
  }
}
