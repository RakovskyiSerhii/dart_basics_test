final bool first = true;
final bool second = false;
final bool third = true;
void main(List<String> args) {
  //TODO: optimize staitments
  
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
