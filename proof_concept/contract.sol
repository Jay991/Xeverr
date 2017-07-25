// class of contract called my contract.
contract MyContract {
//have 2 attributes creator and a number
    address creator;
    uint256 myNumber;

// constractor of the class to fill the attributes of creator and number    
    function MyContract() {
        creator = msg.sender;
        myNumber = 3;
    }
 
 // method to get the creator value   
    function getCreator() constant return (address) {
        return creator;
    }

// method to get the number of the contract    
    function getNumber() constant return (uint256) {
        return myNumber;
    }

// method to set a value of an attribute example, here we are setting the number attribute.    
    function myNumber(unit256 num) {
        myNumber = num;
    }
    
// method to kill or remove the creator or inatace of object (our creator address).
    function kill(){
        if(msg.sender == creator) {
            suicide(creator);
        }
    }
}