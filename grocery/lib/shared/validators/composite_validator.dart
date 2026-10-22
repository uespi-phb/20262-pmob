import './validator.dart';

class CompositeValidator extends Validator {
  final List<Validator> validators;

  CompositeValidator(this.validators) : super(errorMessage: '');

  @override
  String? validate(String? value) {
    if (value == null) return null;

    for (var validator in validators) {
      if (validator.validate(value) != null) return validator.formmatedMessage;
    }

    return null;
  }
}
