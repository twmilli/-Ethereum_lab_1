pragma solidity 0.4.19;
import "github.com/oraclize/ethereum-api/oraclizeAPI.sol";


contract Concatenate is usingOraclize{
  using strings for *;
  function concatWithImport(string _s, string _t) public pure returns (string) {
    return strConcat(_s, _t);
  }

  function concatWithoutImport(string s, string t) public pure returns (string) {
    bytes memory s1 = bytes(s);
    bytes memory s2 = bytes(t);
    string memory s_merged = new string(s1.length + s2.length);
    bytes memory merged = bytes(s_merged);
    uint k = 0;
    for (uint i =0; i < s1.length; i++) {
      merged[k] = s1[i];
      k++;
    }

    for (i = 0; i < s2.length; i++) {
      merged[k] = s2[i];
      k++;
    }
    return string(merged);
  }
}
