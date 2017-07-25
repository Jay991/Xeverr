contract Mappings {
    // Mappings types are declared as mapping
    // _KeyType => _ValueType, where _KeyType
    // can be almost any type except for a mapping
    // and _ValueType can actually be any type, including mappings.
    
    mapping (uint => bool) myMapping;
    
    function mappings() {
        myMapping[0] = true;
    }
    
    function getMyMapping(uint position) constant returns (bool) {
        return myMapping[position];
    }
}