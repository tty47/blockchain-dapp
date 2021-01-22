import Web3 from 'web3';
import CounterJSON from './contracts/Counter.json'

// Verify if the browser has Metamask installed
if (window.ethereum) {
    window.web3 = new Web3(window.ethereum);
    window.ethereum.enable();
} else {
    alert('Please, install Metamask first...');
}

// Contract address
// 0x1dd78B26837553780C51b817C565d2cb04CAD451
const counterAddr = '0x9aCB55D16A37499aa98A6aC118F860A105A07355';

// initialize the contract in the frontend
// we use the abi in order to know the methods available
export const CounterContract = new window.web3.eth.Contract(CounterJSON.abi, counterAddr);
