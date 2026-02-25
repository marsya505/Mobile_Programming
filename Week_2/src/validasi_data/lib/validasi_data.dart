bool isUsernameValid(String username) {
  return username.length >= 6;
}

bool isPasswordValid(String password) {
  return password.length >= 6;
}

bool isAdult(int umur) {
  return umur >= 18;
}

bool canRegister(String username, String password) {
  return isUsernameValid(username) && isPasswordValid(password);
}

bool canAccessAdultContent(String username, String password, int umur) {
  return canRegister(username, password) && isAdult(umur);
}
