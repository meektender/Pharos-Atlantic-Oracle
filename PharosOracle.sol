// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract PharosActivityOracle {
    address public owner;
    
    struct PriceReport {
        uint256 zentraPrice;
        uint256 faroPrice;
        uint256 timestamp;
        string recommendation;
    }

    PriceReport public latestReport;

    constructor() {
        owner = msg.sender;
    }

    // Instead of querying broken routers, you "Report" the truth from your swaps
    function updatePrice(uint256 _zentra, uint256 _faro) public {
        require(msg.sender == owner, "Only the builder can update");
        
        string memory rec = _zentra >= _faro ? "Buy on FaroSwap" : "Buy on ZentraFi";
        
        latestReport = PriceReport({
            zentraPrice: _zentra,
            faroPrice: _faro,
            timestamp: block.timestamp,
            recommendation: rec
        });
    }

    // This will ALWAYS return data on PharosScan without reverting
    function getLatestComparison() public view returns (uint256, uint256, string memory) {
        return (latestReport.zentraPrice, latestReport.faroPrice, latestReport.recommendation);
    }
}
