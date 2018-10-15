/*
	This is a very simple demonstration of a while loops. Same as JS/c.
*/
pragma solidity^0.4.17;

contract BasicIterator {

    address creator;                  // reserve one "address"-type spot
    uint8[10] integers;               // reserve a chunk of storage for 10 8-bit unsigned integers in an array

    function BasicIterator() public 
    {
        creator = msg.sender;         // set the creator address
        uint8 x = 0;                  // initialize an 8-bit, unsigned integer to zero
        while(x < integers.length)    // the variable integers was initialized to length 10
        {
        	integers[x] = x;      // set integers to [0,1,2,3,4,5,6,7,8,9] over ten iterations
        	x++;
        }
    }
    
    function getSum() public view returns (uint)  // "constant" just means this function returns something to the caller
    {                                          // which is immediately followed by what type gets returned, in this case a full uint256
    	uint8 sum = 0;
    	uint8 x = 0;
    	while(x < integers.length)
        {
        	sum = sum + integers[x];
        	x++;
        }
    	return sum;
    }
    
    /**********
     杀死协议，然后把剩余的钱退回给创建者
     **********/
    
    function kill()  public
    { 
        if (msg.sender == creator)
        {
            selfdestruct(creator);  
        }
    }
}