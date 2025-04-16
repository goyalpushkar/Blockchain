Project - 1 is developed on Hyperledger Fabric blockchain framework. Hyperledger is
an open-source community focused on developing a suite of stable frameworks, tools, and libraries for
enterprise-grade blockchain deployments. 


Hyperledger was established under the Linux Foundation. It
serves as a neutral home for various distributed ledger frameworks including Hyperledger Fabric.
Hyperledger Fabric is an open-source enterprise-grade private distributed ledger technology (DLT)
platform, designed for use in enterprise contexts, that delivers some key differentiating capabilities over
other popular distributed ledger or blockchain platforms. Read more about Hyperledger Fabric on this link
(https://hyperledger-fabric.readthedocs.io/en/release-1.4/whatis.html)


Project - 2 is developed on Ethereum ecosystem by writing, testing, and deploying an ERC-20 Token
Standard smart contract on the Ropsten Ethereum Testnet in the Solidity programming language. This project 
was developed to understand Ethereum-based Web3 projects that utilize token mechanisms including 
Decentralized Autonomous Organizations (DAOs) and Non-Fungible Tokens (NFTs).


To create a Blockchain Network locally and test smart contract on local system, the
following is required software:
1. Node JS
2. NPM
3. Hyperledger Fabric Setup


Project 1 - 
A smart contract is developed to manage patient records over the Hyperledger Fabric. For this project, 
below functions are developed
1. A function that creates patient records on the Hyper ledger Fabric blockchain network.
2. A function that updates one attribute of a patient record.
3. Several functions allow reading/ accessing the information about the patient using
CouchDB-enabled data indexing and querying.


Project 2 - 
A smart contract is developed on ethereum to understand the ethereum blockchain.


Tools Used - 
1. MetaMask browser extension (supported browsers include Chrome, Firefox,
Brave, and Edge), as it gives us an easy-to-use interface into Ethereum Networks
2. Smart contracts was deployed to the Ropsten Ethereum Testnet. The Ropsten testnet allows us
to deploy our smart contract in a live setting, without the need for real ETH and other mainnet security
considerations.
3. The on-chain currency for the Ropsten Testnet is rETH. rETH are needed to pay gas fees when
deploying smart contract and transacting on the Ropsten network. Similar to many developer
testnets, the Ropsten network has faucets that gives rETH for free (usually up to a daily limit per
address).
Working faucets can be found at these links: 1)https://faucet.egorfine.com/, 
    2) https://faucet.dimensions.network/ 3) https://ropsten.oregonctf.org/
4. The Remix IDE (https://remix.ethereum.org). Remix is a
browser-based IDE that easily connects to MetaMask, allows to develop, test, and deploy
Solidity smart contract, all directly in the browser.


Smart Contracts - 
Smart contracts are mediums that are used to manage digital assets, store information, make decisions,
and interact with other smart contracts. Hyperledger Fabric smart contracts usually manipulate JSON-like
digital assets (arrays of key-value pairs) of any complexity. For every digital asset we want to store on a
Hyperledger Fabric blockchain, there must be a smart contract in place for its management (writing data
on the blockchain, updating, reading, etc.).
In Hyperledger Fabric smart contracts are packaged into chaincodes and the chaincode is deployed on the
Hyperledger Fabric blockchain. Chaincode is a term local to the Hyperledger Fabric framework and, for
now, you can think of chaincode and smart contract as synonyms. To read more about chaincode in
Hyperledger Fabric, visit the link.
Writing smart contacts on Hyperledger Fabric network requires three classes: State class, Contract Class,
Statelist class.
● State class: Used to represent the asset on which the smart contract will be applied
● Contract class: Used to define methods that are set up in the contract
● State List class: Used to interact with the blockchain network. In this class, we define methods to
add, get and update data on the blockchain network.
To learn more about writing smart contracts using Hyperledger Fabric visit the link
(https://hyperledger-fabric.readthedocs.io/en/release-1.4/chaincode4ade.html)


Tokens - 
Tokens are widely used in the Ethereum ecosystem to represent many things including governance power,
in-game currencies, reputation points, and much more. The Ethereum ecosystem uses Ethereum
Improvement Proposals (EIPs) for the community to propose standards specifying potential new features
or processes for the network.
EIPs play a central role in how changes happen and are documented on Ethereum. They are the way for
people to propose, debate and adopt changes. There are different types of EIPs including core EIPs for
low-level protocol changes that affect consensus and require a network upgrade as well as Ethereum
Request for Comments (ERCs) for application standards. One such type of ERC standards are token
standards, like the ERC-20 Token Standard, which allow applications interacting with the specific ERC
standard token to treat all other tokens using the same rules, which makes it easier to create interoperable
applications.
Fungibility refers to the ability for each token to be treated exactly the same, in contrast to 
non-fungible tokens in which the token has properties that make it distinct from other sets of tokens


A smart contract on the Ethereum Network can be considered an ERC-20 Token Contract if it implements
the following methods and events (for further reading on the standard, visit
https://ethereum.org/en/developers/docs/standards/tokens/erc-20/):

You can learn more about Ethereum Networks by going to this link:
https://ethereum.org/en/developers/docs/networks/

Methods
	function name() public view returns (string)
	function symbol() public view returns (string)
	function decimals() public view returns (uint8)
	function totalSupply() public view returns (uint256)
	function balanceOf(address _owner) public view returns (uint256 balance)
	function transfer(address _to, uint256 _value) public returns (bool
		success)
	function transferFrom(address _from, address _to, uint256 _value) public
		returns (bool success)
	function approve(address _spender, uint256 _value) public returns (bool
		success)
	function allowance(address _owner, address _spender) public view returns
		(uint256 remaining)

Events
	event Transfer(address indexed _from, address indexed _to, uint256 _value)
	event Approval(address indexed _owner, address indexed _spender, uint256
	_value)


The Solidity documentation is well detailed and can be found here: https://docs.soliditylang.org/en/v0.8.12/
The  Remix detailed documentation can be found here: https://remix-ide.readthedocs.io/en/latest/#
