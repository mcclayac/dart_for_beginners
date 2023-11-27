

import 'dart:core';

class AmtException implements Exception {
  String errMsg()=>'Amount should be greater than zero';
}

void withdraw_amt(int amt) {
  if (amt <= 0) {
    throw AmtException();
  }
}

void main() {

  try {
    withdraw_amt(-1);
  } on AmtException catch (e) {
    print(e.errMsg());
  } finally {
    print('Ending request operation ....');
  }
}