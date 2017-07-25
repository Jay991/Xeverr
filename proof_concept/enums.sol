/*
* Enums
* Enums are one way to create a user-defined type in Solidity. 
* They are explicitly convertible to and from all integer types but implicit conversion is not allowed. 
* The explicit conversions check the value ranges at runtime and a failure causes an exception. Enums needs at least one member.
*/
contract enums {
    enum ActionChoices { GoLeft, GoRight, GoStraight, SitStill }
    ActionChoices choice;
    ActionChoices constant defaultChoice = ActionChoices.GoStraight;
    
    function setGoStraight() {
        choice = ActionChoices.GoStraight;
    }
    
    function getChoice() constant returns (ActionChoices) {
        return choice;
    }
    
    function getDefaultChoice() constant returns (uint) {
        return uint(defaultChoice);
    }
}