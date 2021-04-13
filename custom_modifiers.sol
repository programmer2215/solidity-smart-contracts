pragma solidity 0.5.3;

contract StructContract {
    
    address Owner;
    
    modifier admin(){
        require(msg.sender == Owner);
        _;
    }
    
    uint256 openTime = 1618309492;
    
    modifier afterOpen(){
        require(block.timestamp >= openTime);
        _;
    }
    
    constructor() public{
        Owner = msg.sender;
    }
    
    // Car [] public cars;
    uint256 public arr_size = 0;
    
    mapping (uint256 => Car) public cars;
    
    struct Car{
        string _model;
        string _topSpeed;
    }
    
    function addCar(string memory _model, string memory _topSpeed)
    public 
    admin
    afterOpen
    
    {
        //cars.push(Car(_model, _topSpeed));
        increamentCount();
        cars[arr_size] =  Car(_model, _topSpeed);
        
    }
    
    function increamentCount() internal{
        arr_size ++;
    }
}
