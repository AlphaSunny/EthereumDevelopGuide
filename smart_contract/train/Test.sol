pragma solidity ^0.4.17;

contract Test {
    uint[] public myarray;
    
    function Test() public{
        myarray.push(1);
        myarray.push(5);
        myarray.push(10);
    }
    
    function getArrayLength() public view returns(uint) {
        return myarray.length;
    }
    
    function getFirstElement() public view returns(uint) {
        return myarray[0];
    }
}