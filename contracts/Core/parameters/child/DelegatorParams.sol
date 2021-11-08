// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
import "../interfaces/IDelegatorParams.sol";
import "../ACL.sol";

abstract contract DelegatorParams is ACL, IDelegatorParams {
    uint16 public epochLength = 300;
    bytes32 public constant GOVERNANCE_ROLE = 0x71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ceb1;

    function setEpochLength(uint16 _epochLength) external override onlyRole(GOVERNANCE_ROLE) {
        // slither-disable-next-line events-maths
        epochLength = _epochLength;
    }
}