contract C {
    uint8[3] st = [1, 2, 3];
    uint8[] public dt = [4, 5, 6]; // TODO: when uint8[] in use, compiler raise an error: Could not convert "uint8[]" to internal ABI type representation. Falling back to default encoding.

    function s() public returns (uint8[3] memory) {
        return st;
    }
}

// ====
// compileToEwasm: also
// compileViaYul: also
// ----
// s() -> 1, 2, 3
// dt(uint256): 0 -> 4
// dt(uint256): 1 -> 5
// dt(uint256): 2 -> 6
