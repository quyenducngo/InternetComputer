import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 1234567890;

  Debug.print("Hello");
  Debug.print(debug_show (currentValue));
  Debug.print(debug_show (id));

  public func topUp(amount : Nat) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));
  };

  public func withdrawl(amount : Nat) {
    let tempValue : Int = currentValue - amount;
    if (currentValue - amount >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print("Value entered is too large");
    };
  };
};
