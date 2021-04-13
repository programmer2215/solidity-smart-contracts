pragma solidity >=0.4.20;

contract Ico{
    mapping (address => uint256) public balances;
    address payable wallet;
    
    constructor (address payable _wallet) public{
        wallet = _wallet;
    }
    
    function buyToken() public payable{
        //buyToken
        balances[msg.sender] += msg.value;
        //send ether
        wallet.transfer(msg.value);
    }
    
}
