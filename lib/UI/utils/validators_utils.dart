
class  FormValidator {
  String? isValidName(String? text) {
    if (text == null || text.isEmpty || text.length < 3) {
      return 'This email is not valid';
    }
    return null;
  }
}

