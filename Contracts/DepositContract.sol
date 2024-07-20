pragma solidity 0.8.23;

 contract DepositContract {

    mapping(address=>uint) public  deposits;
    function deposit() public payable {
        require(msg.value>0);
        deposits[msg.sender]=deposits[msg.sender]+msg.value;
     }

     function withdraw() public  payable {
        require(deposits[msg.sender]>0);
        payable(msg.sender).transfer(deposits[msg.sender]);
        //MISSING: set deposits[msg.sender] to 0
        //this assert statement will always revert 
        //and the users cannot withdraw ether
        assert(deposits[msg.sender]==0);
    }
}