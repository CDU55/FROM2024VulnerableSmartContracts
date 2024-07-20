pragma solidity 0.8.23;

contract BidContract {
    mapping(uint => uint) public bidders;
    function bid(uint bidderNumber) public payable {
        require(msg.value > 10);
        uint newBid = bidders[bidderNumber] + msg.value;
        if (newBid > 10) {
            //Since msg.value>10 implies that newBid>10,
            //this brach will always execute
            bidders[bidderNumber] = newBid;
        } else {
            //Since the "then" branch is based on a tautology,
            //this branch will never execute
            revert("Inssuficient bid");
        }
    }
}
