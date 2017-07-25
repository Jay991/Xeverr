contract SimpleDapp {
    uint someVar;
    
    function setSomeVar(uint myVar) {
        someVar = myVar;
    }
    
    function getSomeVar() constant returns (uint) {
        return someVar;
    }
    
    function setSomeVarTimesFour(uint myVar) {
        setSomeVar(4 * myVar);
    }
}

contract SomeOtherSimpleDapp {
    SimpleDapp simpleDapp;
    SimpleDapp newInstanceOfSimpleDapp;
    
    function someOtherSimpleDapp(address whereIsMyOtherContract) {
        simpleDapp = SimpleDapp(whereIsMyOtherContract);
        newInstanceOfSimpleDapp = new SimpleDapp();
    }
    
    function getSimpleDappSomeVar() constant returns (uint) {
        return netInstanceOfSimpleDapp.getSomeVar();
    }
}