pragma solidity 0.5.3;

contract StructContract {
    
    // Car [] public cars;
    uint256 public arr_size = 0;
    
    mapping (uint256 => Car) public cars;
    
    struct Car{
        string _model;
        string _topSpeed;
    }
    
    function addCar(string memory _model, string memory _topSpeed) public {
        //cars.push(Car(_model, _topSpeed));
        arr_size ++;
        cars[arr_size] =  Car(_model, _topSpeed);
        
    }
    
}
