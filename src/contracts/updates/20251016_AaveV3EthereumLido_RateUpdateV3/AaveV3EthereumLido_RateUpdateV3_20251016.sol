// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3EthereumLidoAssets} from 'aave-address-book/AaveV3EthereumLido.sol';
import {RiskStewardsEthereumLido} from '../../../../scripts/networks/RiskStewardsEthereumLido.s.sol';
import {IAaveV3ConfigEngine} from 'aave-v3-origin/src/contracts/extensions/v3-config-engine/IAaveV3ConfigEngine.sol';
/**
 * @title RateUpdateV3
 * @author brotherlymite
 * - discussion: TODO
 * - deploy-command: make run-script contract=src/contracts/updates/20251016_AaveV3EthereumLido_RateUpdateV3/AaveV3EthereumLido_RateUpdateV3_20251016.sol:AaveV3EthereumLido_RateUpdateV3_20251016 network=mainnet broadcast=false generate_diff=true skip_timelock=false
 */
contract AaveV3EthereumLido_RateUpdateV3_20251016 is RiskStewardsEthereumLido {
  function name() public pure override returns (string memory) {
    return 'AaveV3EthereumLido_RateUpdateV3_20251016';
  }

  function rateStrategiesUpdates()
    public
    pure
    override
    returns (IAaveV3ConfigEngine.RateStrategyUpdate[] memory)
  {
    IAaveV3ConfigEngine.RateStrategyUpdate[]
      memory rateStrategies = new IAaveV3ConfigEngine.RateStrategyUpdate[](1);
    rateStrategies[0] = IAaveV3ConfigEngine.RateStrategyUpdate({
      asset: AaveV3EthereumLidoAssets.WETH_UNDERLYING,
      params: IAaveV3ConfigEngine.InterestRateInputData({
        optimalUsageRatio: 90_00,
        baseVariableBorrowRate: 3_00,
        variableRateSlope1: 2_00,
        variableRateSlope2: 41_00
      })
    });

    return rateStrategies;
  }
}
