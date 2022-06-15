import Debug "mo:base/Debug";

actor DBank {
  stable var currentValue = 300;
  // currentValue := 100;

  let id = 3233;

  public func topup(amount: Nat) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Nat) {
    let tempVal: Int = currentValue - amount;
    if(tempVal >= 0){
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Amount too large");
    };
  };

  public query func balance(): async Nat {
    return currentValue;
  };

  // topup();
};
