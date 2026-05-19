// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentVerify {
    bytes32 public currentRoot;
    mapping(bytes32 => bool) public usedProofs;
    
    function setMerkleRoot(bytes32 _root) external {
        currentRoot = _root;
    }
    
    function isStudent(
        bytes32[] memory proof,
        bytes32 leaf
    ) public view returns (bool) {
        bytes32 computed = leaf;
        for (uint256 i = 0; i < proof.length; i++) {
            if (computed < proof[i]) {
                computed = keccak256(abi.encodePacked(computed, proof[i]));
            } else {
                computed = keccak256(abi.encodePacked(proof[i], computed));
            }
        }
        return computed == currentRoot;
    }
    
    function claimOffer(bytes32[] memory proof, bytes32 leaf) external {
        require(isStudent(proof, leaf), "Not a student");
        require(!usedProofs[leaf], "Already claimed");
        usedProofs[leaf] = true;
    }
}