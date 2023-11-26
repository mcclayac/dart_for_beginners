

mixin LoggingMixin {

  void log(String message) => print('Log: $message');
}

class UserManager with LoggingMixin {
  String userNamme;

  UserManager(this.userNamme);

  void login() {
    log('User $userNamme logged in');
  }
}

void main() {

  var userManager = UserManager('Tony');
  userManager.login();
}