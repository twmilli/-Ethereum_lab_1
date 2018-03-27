pragma solidity 0.4.19;

contract Fib{
  function fibRecur(uint n) public pure returns(uint) {
    if (n == 0 || n == 1){
      return 1;
    }
    return fibRecur(n-1) + fibRecur(n-2);
  }

  function fibIter(uint n) public pure returns (uint) {
    uint i=1;
    uint n1 = 1;
    uint n2 = 1;
    uint tmp;
    while (i < n) {
      tmp = n1 + n2;
      n1 = n2;
      n2 = tmp;
      i++;
    }
    return n2;
  }
}
