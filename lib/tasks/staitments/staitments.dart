import 'dart:math';

final bool first = true;
final bool second = false;
final bool third = true;

void main(List<String> args) {
  //TODO: optimize staitments
  // checkStaitments('','');
}

bool isThirdAndFirstTrue() {
  if (first == true) {
    if (third == true) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}

bool isFirstAndSecondFalse() {
  if (first == false) {
    if (second == false) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}

bool isEveryTrue() {
  if (first == true) {
    if (second == true) {
      if (third == true) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else {
    return false;
  }
}

bool isEveryFalse() {
  if (first == false) {
    if (second == false) {
      if (third == false) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  } else {
    return false;
  }
}

bool checkStaitments(String email, String password, bool registered) {
  return registered || (emailCheck(email) && checkPassword(password));
}


bool emailCheck(String email) {
  // throw 'Not implemented';
  /// validation
  /// - has symbol @
  /// - length > 5
  /// - not included symbol -
  return email.length > 5 && email.contains('@') && !email.contains('-');
}

bool checkPassword(String password) {
  // throw 'Not implemented';
  /// validation
  /// - length > 8
  return password.length > 8;
}
