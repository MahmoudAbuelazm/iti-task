class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Deposit amount must be positive.');
    }
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Withdrawal amount must be positive.');
    }
    if (amount > balance) {
      throw OverdraftException('Insufficient funds for withdrawal.');
    }
    balance -= amount;
  }
}

class Customer extends BankAccount {
  Customer(super.balance);
  void main() {
    final account = BankAccount(1000.0);

    try {
      account.deposit(500.0);
      account.withdraw(800.0);
    } on OverdraftException catch (e) {
      print(e);
    }
  }
}

class OverdraftException implements Exception {
  final String message;

  OverdraftException(this.message);

  @override
  String toString() => 'OverdraftException: $message';
}
