contract SimpleWallet {

    mapping(address => Senders) isAllowedToSendFundsMapping;


    event Deposit(address _sender, uint amount);
    event Withdrawl(address _sender, uint amount, address _beneficiary);

    function SimpleWallet() {
        owner = msg.sender;
    }

   function() {
   
    if(msg.sender == owner || isAllowedToSendFundsMapping[msg.sender] == true) {
        Deposit(msg.sender,msg.value);
    }
    else {
        throw;
    }
    
   }
   
   
   function sendFunds(uint amount, address receiver) returns (uint) {
   
   if(msg.sender == owner || isAllowedToSendFundsMapping[msg.sender]) {
   if(this.balance >= amount) {
        if(!receiver.send(amount)) {
            throw;
        }
        Withdrawl(msg.sender,amount,receiver);
        return this.balance;
    }
   }
   
   
   }
   


      function allowAddressToSendMoney(address _address) {
        if(msg.sender == owner) {
            isAllowedToSendFundsMapping[_address].allowed = true;
         }
      }

      function disallowAddressToSendMoney(address _address) {
        if(msg.sender == owner) {
            isAllowedToSendFundsMapping[_address].allowed = false;
         }
      }

      function isAllowedToSend(address _address) constant returns (bool) {
        return isAllowedToSendFundsMapping[_address].allowed || _address == owner;
      }

      function killWallet() {
        if(msg.sender == owner) {
          suicide(owner);
        }
      }
    
}