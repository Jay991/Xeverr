// this class is an introduction to objects types
contract Owned {
    bool myBool;
    uint8 myUint8;
    uint myUint256;
    bytes32 myBytes32;
    bytes myBytes;
    string myString;
    
    function Owned() {
        myBool = true;
        myUint8 = 255;
        myUint256 = 0x0000000000000000000000ffffffffffffffffffffffffffffffffffffffffff;
        myBytes32 = 0x0000000000000000000000ffffffffffffffffffffffffffffffffffffffffff;
        myString = "ABC";
    }
    
    function setMyString(string mystring) {
        myString = mystring;
    }
    
    function getMyBytes32() constant returns (bytes32) {
        return myBytes32;
    }
    
    function getMyUnit256() constant returns (uint256) {
        return myUint256;
    }
}