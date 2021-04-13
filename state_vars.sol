pragma solidity 0.5.3;

contract StateContract {
    
    enum State {Waiting, Active, Ready}
    State public state;
    
    constructor() public{
        state = State.Waiting;
    }
    
    function isActive() public view returns(bool){
        return state == State.Active;
    }
    
    function isWaiting() public view returns(bool){
        return state == State.Waiting;
    }
    
    function isReady() public view returns(bool){
        return state == State.Ready;
    }
    
    function setActive() public {
        state = State.Active;
    }
    function setWaiting() public {
        state = State.Waiting;
    }
    function setReady() public {
        state = State.Ready;
    }
}
