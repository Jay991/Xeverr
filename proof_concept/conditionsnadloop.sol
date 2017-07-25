contract SomeContract {
    uint someVar;
    
    // using conditions in solidity
    function getMyVar() constant returns (string,uint) {
        if(someVar > 2) {
            return ("greator two", someVar);
        } else if(someVar == 2){
            return ("is exactly two", someVar);
        } else {
            return("is smaller two", someVar);
        }
    }
    
    function setMyVar(uint myVar) {
        someVar = myVar;
    }
    
    // using while in solidity.
    function getWhile() constant returns (uint) {
        uint = i = 0;
        while(i < 5) {
            i++;
        }
        return i;
    }
}