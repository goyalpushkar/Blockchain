/**
 *Submitted for verification at Etherscan.io on 2022-04-18
*/

pragma solidity ^0.8.0;

// interface my_token_ERC20{
//     function name() public view returns (string);
//     function symbol() public view returns (string);
//     function decimals() public view returns (uint8);
//     function totalSupply() public view returns (uint256);
//     function balanceOf(address _owner) public view returns (uint256 balance);
//     function transfer(address _to, uint256 _value) public returns (bool success);
//     function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
//     function approve(address _spender, uint256 _value) public returns (bool success);
//     event Transfer(address indexed _from, address indexed _to, uint256 _value);
//     event Approval(address indexed _owner, address indexed _spender, uint256 _value);
// }

// Set1 - Transactions
//0x256BF2F9BA622ff7cBbB36113d05144e96F2FAc2 My Address   (601000)
//0xD813981Ed7bD77EFEc2A23Acc28dCf9DC12AA607 Contract Address (600000)
//0x7b9dd47389848ecd89454311b238781e264b30c732f6afbc635034032d501278 Transaction Hash for Contract Creation (my_token)

//0xa45279e4d7823b0e77c276cdf73c0f5a0a814d5912a6024d6764f22e4581a1e6 Transaction Hash for Contract Minting
//0x4c612cb304063e207e197d5321ba8d82f3b091177aa2fc06c256d8f0b8c7912f Transaction Hash for My account Minting
//0x22a0ce60ab8cb81d86420440a6a562570c48bbb083330cbefefbf81b949c8789 Transaction Hash for more minting
//0xbd5c0db29b58c6326d8372c601a55f851e8fe3bf822fa3b0afaa212f23797e72 Transaction Hash for 100 transfer to 0x4DA59FE6c21b33D153dc799EaBCF10076d9F769f
//0x17bac8b1400815a957ba8f194bbc9ce925bb7a43b75ae034ca50fbcfc831af39 Transaction Hash for 545677 transfer to 0x9709df3B12d0B3A0A27716F598dDD2C119F37582
//0xfe158a5f6ddd84a1b197bca35c5b30077661e32ff702e276680991245bea662d Transaction Hash for approve 0xC38be03FEe1404c155002b6D6160e7aac4C6C0e0

// Set2 - Transactions
//0x256BF2F9BA622ff7cBbB36113d05144e96F2FAc2 My Address   (1000000)
//0xd4c463c1E372a383CFDF4f204076f90d7a902453 Contract Address (0)
//0x8de54123d82f5abf2ac53b7a9c50dbc376bdde34c98f19a940188504b91d2027 Transaction Hash for Contract Creation (my_token_ERC20)

//0x8ce936f6d0e668a31fd49981870985daafb81f765f2e56ca3991cd47f31a0bb2  Transaction Hash to mint 100 to account 0x4DA59FE6c21b33D153dc799EaBCF10076d9F769f
//0x1676963daa9c861b32ae3c101b6074f10c13b750abb5b1d157d12ee476d1505b Transaction Hash for 100 transfer to 0x4DA59FE6c21b33D153dc799EaBCF10076d9F769f 
//0x8f212e09b8a7b49b5f4afef07a495531179f523ab3909b0f188aeecaadc8185e Transaction Hash for 545677 transfer to 0x9709df3B12d0B3A0A27716F598dDD2C119F37582
//0x1c612823af5762d4aec24a136921e151f4fb9284a171111b70da2bd4d3888a91 Transaction Hash for approve 0xC38be03FEe1404c155002b6D6160e7aac4C6C0e0
//0xa571f18c894da7f4629bc06ef758e40427e598cbc1e78f78614c102fe2b34ebe Transaction Hash for approve 0xC38be03FEe1404c155002b6D6160e7aac4C6C0e0
//0xa64dfd969b8ca44c8d9402177dd140ea712766b50c65b2076474927aca4f3e67 Transaction Hash for approve 0xC38be03FEe1404c155002b6D6160e7aac4C6C0e0
//0xa55cf61c8b00f25352fb3bd45792afdab69923d40aaaed872780d5b9cb662478 Transaction Hash for approve 0xC38be03FEe1404c155002b6D6160e7aac4C6C0e0

/**
 *Submitted for verification at Etherscan.io on 2022-04-18
*/

pragma solidity ^0.8.0;

// interface my_token_ERC20{
//     function name() public view returns (string);
//     function symbol() public view returns (string);
//     function decimals() public view returns (uint8);
//     function totalSupply() public view returns (uint256);
//     function balanceOf(address _owner) public view returns (uint256 balance);
//     function transfer(address _to, uint256 _value) public returns (bool success);
//     function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
//     function approve(address _spender, uint256 _value) public returns (bool success);
//     event Transfer(address indexed _from, address indexed _to, uint256 _value);
//     event Approval(address indexed _owner, address indexed _spender, uint256 _value);
// }

contract my_token_ERC20 {  //is my_token_ERC20

    uint256 constant private MAX_UINT256 = 2**256 - 1;
    string private token_name;
    string private token_symbol;
    uint8 private token_decimals;

    mapping(address => uint256) private token_balances;
    mapping(address => mapping(address => uint256)) private token_allowances;
    uint256 private token_totalSupply;
	
	address public owner;

    constructor () public {
        token_name = "1427B9D2";
        token_symbol = "B65F787E";
        token_decimals = 0;
        token_totalSupply = 1000000;
        token_balances[msg.sender] = 1000000;
		owner = msg.sender;
    }

    function name() public view returns (string memory) {
        return token_name;
    }

    function symbol() public view returns (string memory){
        return token_symbol;
    }

    function decimals() public view returns (uint8){
        return token_decimals;
    }

    function totalSupply() public view returns (uint256){
        return token_totalSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool success){
        require(token_balances[msg.sender] >= _value, "ERC20_PG: Not sufficient balance");
        token_balances[msg.sender] -= _value;
        token_balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function balanceOf(address _owner) public view returns (uint256 balance){
        return token_balances[_owner];
    }

    function approve(address _spender, uint256 _value) public returns (bool success){
        require(msg.sender != address(0), "ERC20_PG: approve from the zero address");
        require(_spender != address(0), "ERC20_PG: approve to the zero address");
        token_allowances[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value); 
        return true;
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining){
        return token_allowances[_owner][_spender];
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success){
        uint256 allowance_balance = token_allowances[_from][msg.sender];
        uint256 balance = token_balances[_from];
        require(allowance_balance >= _value, "ERC20_PG: Overlimit to transfer");
        require(balance >= _value, "ERC20_PG: Not sufficient balance to transfer");
        token_balances[_from] -= _value;
        token_balances[_to] += _value;
        if (_value <= MAX_UINT256){
            token_allowances[_from][msg.sender] -= _value;
        }
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function mint(address account, uint256 amount) public returns (bool success) {
        require(account != address(0), "ERC20_PG: mint to the zero address");

        token_totalSupply += amount;
        token_balances[account] += amount;
        emit Transfer(address(0), account, amount);
        return true;
    }

    function owner() public view returns (address){
        return msg.sender;
    }
	
	function contract_addresss() public view returns (address){
	    return address(this);
	}
		
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

}


# {"task-1-name": "The ERC20 Token name \"1427B9D2\" defined successfully.", "task-2-symbol": "The ERC20 Symbol name \"B65F787E\" defined successfully.", "task-3-decimals": "\"Failed\" - The decimals value \"0\" does not match.", "task-4-totalSupply": "The totalSupply value \"1301000\" defined successfully.", "task-5-transfer": "The transfer() function works fine.", "task-10-transfer-event": "The transfer event works fine.", "task-6-balanceOf": "The balanceOf() returns value \"545677.0\" successfully.", "task-7-approve": "The approve() function works fine.", "task-11-approval-event": "The approval event works fine.", "task-8-allowance": "The allowance value \"97775.0\" defined successfully.", "task-9-transferFrom": "The transferFrom() function works fine."}

# {"task-1-name": "The ERC20 Token name \"1427B9D2\" defined successfully.", "task-2-symbol": "The ERC20 Symbol name \"B65F787E\" defined successfully.", "task-3-decimals": "The decimals value \"0\" defined successfully.", "task-4-totalSupply": "The totalSupply value \"1000000\" defined successfully.", "task-5-transfer": "\"Failed\" - The transfer() function does not work.", "task-6-balanceOf": "The balanceOf() returns value \"545677.0\" successfully.", "task-7-approve": "The approve() function works fine.", "task-11-approval-event": "The approval event works fine.", "task-8-allowance": "The allowance value \"97775.0\" defined successfully.", "task-9-transferFrom": "The transferFrom() function does not work."}

# {"task-1-name": "The ERC20 Token name \"1427B9D2\" defined successfully.", "task-2-symbol": "The ERC20 Symbol name \"B65F787E\" defined successfully.", "task-3-decimals": "The decimals value \"0\" defined successfully.", "task-4-totalSupply": "The totalSupply value \"1000200\" defined successfully.", "task-5-transfer": "The transfer() function works fine.", "task-10-transfer-event": "The transfer event works fine.", "task-6-balanceOf": "The balanceOf() returns value \"545677.0\" successfully.", "task-7-approve": "\"Failed\" The approval() function does not work.", "task-8-allowance": "The allowance value \"97775.0\" defined successfully.", "task-9-transferFrom": "The transferFrom() function works fine."}

 # {"task-1-name": "The ERC20 Token name \"1427B9D2\" defined successfully.", "task-2-symbol": "The ERC20 Symbol name \"B65F787E\" defined successfully.", "task-3-decimals": "The decimals value \"0\" defined successfully.", "task-4-totalSupply": "The totalSupply value \"1000200\" defined successfully.", "task-5-transfer": "The transfer() function works fine.", "task-10-transfer-event": "The transfer event works fine.", "task-6-balanceOf": "The balanceOf() returns value \"545677.0\" successfully.", "task-7-approve": "\"Failed\" The approval() function does not work.", "task-8-allowance": "The allowance value \"97775.0\" defined successfully.", "task-9-transferFrom": "The transferFrom() function does not work."} 
 
 # {"task-1-name": "The ERC20 Token name \"1427B9D2\" defined successfully.", "task-2-symbol": "The ERC20 Symbol name \"B65F787E\" defined successfully.", "task-3-decimals": "The decimals value \"0\" defined successfully.", "task-4-totalSupply": "The totalSupply value \"1000200\" defined successfully.", "task-5-transfer": "The transfer() function works fine.", "task-10-transfer-event": "The transfer event works fine.", "task-6-balanceOf": "The balanceOf() returns value \"545677.0\" successfully.", "task-7-approve": "The approve() function works fine.", "task-11-approval-event": "The approval event works fine.", "task-8-allowance": "The allowance value \"97775.0\" defined successfully.", "task-9-transferFrom": "The transferFrom() function does not work."} 
 
 # {"task-1-name": "The ERC20 Token name \"1427B9D2\" defined successfully.", "task-2-symbol": "The ERC20 Symbol name \"B65F787E\" defined successfully.", "task-3-decimals": "The decimals value \"0\" defined successfully.", "task-4-totalSupply": "The totalSupply value \"1097975\" defined successfully.", "task-5-transfer": "The transfer() function works fine.", "task-10-transfer-event": "The transfer event works fine.", "task-6-balanceOf": "The balanceOf() returns value \"545677.0\" successfully.", "task-7-approve": "The approve() function works fine.", "task-11-approval-event": "The approval event works fine.", "task-8-allowance": "The allowance value \"97775.0\" defined successfully.", "task-9-transferFrom": "The transferFrom() function does not work."}