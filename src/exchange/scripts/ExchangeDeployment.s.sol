// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import { Script } from "forge-std/Script.sol";
import { CTFExchange } from "exchange/CTFExchange.sol";

/// @title ExchangeDeployment
/// @notice Script to deploy the CTF Exchange
/// @author Polymarket
contract ExchangeDeployment is Script {
    // / @notice Deploys the Exchange contract
    // / @param admin        - The admin for the Exchange
    // / @param collateral   - The collateral token address
    // / @param ctf          - The CTF address
    // / @param proxyFactory - The Polymarket proxy factory address
    // / @param safeFactory  - The Polymarket Gnosis Safe factory address
    // function deployExchange(address admin, address collateral, address ctf, address proxyFactory, address safeFactory)
    function run()
        external
        returns (address exchange)
    {
        vm.startBroadcast();
        // console.log("Hello");

        CTFExchange exch = new CTFExchange(0x0281ea21A7321Fae94d70FE8c319C36190d6bf72, 0x50832198F0801Da8C15D9B0F9D709bEBf8F318d9, 0x361f270645F86Bfb6906D0DC63c9cE95450DB2Ab, 0x4Ce992B69037Ce7Db0C74c3D3e35017DF66982dA);

        // Grant Auth privileges to the Admin address
        exch.addAdmin(0xd0c6cED6D99f4B78e968a05adc2A3f26cFcAaBF5);
        exch.addOperator(0xE129236aAf50E8890a3eaad082FF37232bAB37b2);

        // Revoke the deployer's authorization
        exch.renounceAdminRole();
        exch.renounceOperatorRole();

        exchange = address(exch);
        vm.stopBroadcast();
    }
}
