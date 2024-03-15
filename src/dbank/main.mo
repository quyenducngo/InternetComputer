import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 1234567890;

  Debug.print("Hello");
  Debug.print(debug_show (currentValue));
  Debug.print(debug_show (id));
};
