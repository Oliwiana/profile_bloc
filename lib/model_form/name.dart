import 'package:formz/formz.dart';

enum UsernameValidationError {
  empty,
  invalid
}

class Username extends FormzInput<String, UsernameValidationError> {
  const Username.pure([String value = '']) : super.pure(value);
  const Username.dirty([String value = '']) : super.dirty(value);

  static final RegExp _nameRegExp = RegExp(
    r'^(?=.*[a-z])[A-Za-z ]{2,}$',
  );

  @override
  UsernameValidationError? validator(String value) {
    if (value.isNotEmpty == false) {
      return UsernameValidationError.empty;
    }
    return _nameRegExp.hasMatch(value)
        ? null
        : UsernameValidationError.invalid;
  }
}
extension Explanation on UsernameValidationError {
  String? get name {
    switch(this) {
      case UsernameValidationError.invalid:
        return 'Invalid condition';
      default:
        return null;
    }
  }
}
