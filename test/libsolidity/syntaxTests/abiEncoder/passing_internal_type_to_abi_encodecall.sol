struct S {
    function () f;
}

contract C {
    function f(uint) external {}

    function main() external view {
        S memory s;
        abi.encodeCall(this.f, (s));
    }
}
// ----
// TypeError 5407: (167-170): Cannot implicitly convert component at position 0 from "struct S memory" to "uint256".
