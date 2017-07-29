contract('SimpleWallet',function(accounts){
    
    it('the owner is allowed to send funds ', function() {
       var myContract = SimpleWallet.Deployed();
       return myContract.isAllowedToSend.call(accounts[0]).then(function(isAllowed){
            assert(isAllowed, true, 'the owner should allowed to send funds');
       })
    });
    
    it('the other account should not be allowed to send funds',function(){
       var myContract = SimpleWallet.Deployed();
       return myContract.isAllowedToSend.call(accounts[0]).then(function(isAllowed){
            assert(isAllowed, false, 'the other account is not allowed to send funds');
       })
    });
});