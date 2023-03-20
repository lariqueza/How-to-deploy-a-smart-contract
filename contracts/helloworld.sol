pragma solidity ^0.8.19;

// a contract is a collection of functions and data (its state) Once deployed, a contract resides at a specific address on the Ethereum blockchain
// define a contract
contract helloWorld {
    //emitted when update function is called
    //smart contract events are a way for your contract to communicate that something happened on the blockchain of the app frontend
    event updatedMessages(string oldStr, string newStr);
    //declares a state variable `message` of type `string`
    //state variables are variables whose values are permanently stored in contract storage. The keyword `public` makes variables accessible from outside a contract and creates a function that other contracts or clients can call to access the value
    string public message;
    //constructors are used to initialize the contract's data
    constructor(string memory initMessage) {
        //accepts a string argument `initMessage` and sets the value into the contract's `message` storage variable
        message = initMessage;
    }
    //a public function that accepts a string argument and updates the `message` storage variable.
    function update(string memory newMessage) public {
        string memory oldMsg = message;
        message = newMessage;
        emit updatedMessages(oldMsg, newMessage);
    }
}