};

public func checkBalance(): async Text {
  var message = "Your balance is "  # Float.toText(balance);
  recordTransactions(message);
  return message;
};

public func topUp(amount: Float): async Text{
  balance := balance + amount;
  var message = "You deposited: " # Float.toText(amount);
  recordTransactions(message);
  return message;
};

public func withdrawalBalance(amount: Float) : async Text{
  if (amount > balance){
    return "Insufficient balance";
  }

  else {
    balance := balance - amount;
  var message = "You withdrew: " #Float.toText(amount);
  recordTransactions(message);
  return message;
  }
};

// var b : [Text] = [];

public func getTransactions(): async [Transaction]{
  return transactions;
}


}
