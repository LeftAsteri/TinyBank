class Check {
  String usern;
  String passw;
  Map<String, String> userList = {'Tiny': '1234'};

  Check(this.usern, this.passw);

  void register() {
    userList.addEntries({
      MapEntry(usern,passw),
  });
    print(userList);
  }

  bool check() {
    if (passw == userList[usern]) {
      print('success');
      return true;
    }
    print(userList[usern]);
    print(usern);
    print(passw);
    print(userList);
    print('failed');
    return false;
  }

  String getUser() {
    for (int i = 0; i < userList.length; i++) {
      if (passw == userList[usern]) {
        return usern;
      }
    }
    return '';
  }
}
