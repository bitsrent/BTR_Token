import './ERC20.sol';
pragma solidity ^0.4.24;
contract BitsrentToken is ERC20{
    string public constant name = "Bitsrent";
    string public constant symbol = "BTR";
    uint8 public constant decimals = 18;
    //supply is 20 Billion
    uint256 public constant INITIAL_SUPPLY=20000000000*(10 ** uint256(decimals));
    
/**
   * @dev Constructor that gives msg.sender all of existing tokens.
   * minted only during contract initialization
   */
  constructor() public {
    _mint(msg.sender, INITIAL_SUPPLY);
  }
   /**
   * @dev function that burns an amount of the token of a given
   * account.
   * @param amount The amount that will be burnt.
   **/
  function burnToken( uint256 amount)  public {
      _burn(msg.sender,amount);
  }
  
   /**
   * @dev Freezes the account from transferring tokens from own address to another
   * can be called by owner only
   **/
  function freeze(address freezingAddress,bool decision)  onlyOwner public {
      _freezeAccount(freezingAddress,decision);
  }
  
}