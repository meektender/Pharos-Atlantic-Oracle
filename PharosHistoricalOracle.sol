// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract PharosHistoricalOracle {
    address public owner;
    
    struct PriceReport {
        uint256 zentraPrice;
        uint256 faroPrice;
        uint256 timestamp;
        string recommendation;
    }

    // This array stores your history
    PriceReport[] public history;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the developer can update");
        _;
    }

    // This function adds to the list every time you call it
    function updatePrice(uint256 _zentra, uint256 _faro) public onlyOwner {
        string memory rec = _zentra >= _faro ? "Buy on FaroSwap" : "Buy on ZentraFi";
        
        PriceReport memory newReport = PriceReport({
            zentraPrice: _zentra,
            faroPrice: _faro,
            timestamp: block.timestamp,
            recommendation: rec
        });

        history.push(newReport);
    }

    // Professional touch: Get the total number of reports recorded
    function totalReports() public view returns (uint256) {
        return history.length;
    }

    // Retrieve a specific report by its index (0, 1, 2, etc.)
    function getReport(uint256 index) public view returns (PriceReport memory) {
        require(index < history.length, "Report does not exist");
        return history[index];
    }
}
