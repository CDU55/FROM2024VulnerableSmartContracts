# FROM2024VulnerableSmartContracts

This repository contrains the examples used for evaluating the solution described in the paper submitted to FROM2024. We provide the contracts that our tool was used on, as well as the results produced by our tool.

The Solidity files are located in the "Contracts" folder and the results are located in the "Results" folder. The naming convention for a result file is "[contract_name]_[function_name].txt".

The smart contracts included and the highlighted issues are the following:

| Contract                | Function        | Issue                       |
|-------------------------|-----------------|-----------------------------|
| BidContract             | bid             | Unreachable code            |
| DepositContract         | withdraw        | Locked Ether                |
| DivideByZeroMinimal     | divide          | Possible division by 0      |
| ImproperDataValidation  | participate     | Missing paramter validation |
| OutOfBoundsArrayMinimal | getArrayElement | Array out of bounds         |
| DivisionByZeroArray     | getSomeResult   | Possible division by 0      |

### A build of our solution will be uploaded soon along with usage instructions