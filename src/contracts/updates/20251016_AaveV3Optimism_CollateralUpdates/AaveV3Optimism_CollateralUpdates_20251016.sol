// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3OptimismAssets} from 'aave-address-book/AaveV3Optimism.sol';
import {RiskStewardsOptimism} from '../../../../scripts/networks/RiskStewardsOptimism.s.sol';
import {IAaveV3ConfigEngine} from 'aave-v3-origin/src/contracts/extensions/v3-config-engine/IAaveV3ConfigEngine.sol';
/**
 * @title CollateralUpdates
 * @author brotherlymite
 * - discussion: TODO
 * - deploy-command: make run-script contract=src/contracts/updates/20251016_AaveV3Optimism_CollateralUpdates/AaveV3Optimism_CollateralUpdates_20251016.sol:AaveV3Optimism_CollateralUpdates_20251016 network=optimism broadcast=false generate_diff=true skip_timelock=false
 */
contract AaveV3Optimism_CollateralUpdates_20251016 is RiskStewardsOptimism {
  function name() public pure override returns (string memory) {
    return 'AaveV3Optimism_CollateralUpdates_20251016';
  }

  function collateralsUpdates()
    public
    pure
    override
    returns (IAaveV3ConfigEngine.CollateralUpdate[] memory)
  {
    IAaveV3ConfigEngine.CollateralUpdate[]
      memory collateralUpdate = new IAaveV3ConfigEngine.CollateralUpdate[](1);

    collateralUpdate[0] = IAaveV3ConfigEngine.CollateralUpdate({
      asset: AaveV3OptimismAssets.WETH_UNDERLYING,
      ltv: 77_00,
      liqThreshold: 79_00,
      liqBonus: 5_00,
      debtCeiling: 0,
      liqProtocolFee: 10_00
    });

    return collateralUpdate;
  }
}
