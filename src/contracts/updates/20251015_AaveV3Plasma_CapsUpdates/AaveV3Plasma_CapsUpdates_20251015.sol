// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3PlasmaAssets} from 'aave-address-book/AaveV3Plasma.sol';
import {RiskStewardsPlasma} from '../../../../scripts/networks/RiskStewardsPlasma.s.sol';
import {IAaveV3ConfigEngine} from 'aave-v3-origin/src/contracts/extensions/v3-config-engine/IAaveV3ConfigEngine.sol';
/**
 * @title CapsUpdates
 * @author brotherlymite
 * - discussion: TODO
 * - deploy-command: make run-script contract=src/contracts/updates/20251015_AaveV3Plasma_CapsUpdates/AaveV3Plasma_CapsUpdates_20251015.sol:AaveV3Plasma_CapsUpdates_20251015 network=plasma broadcast=false generate_diff=true skip_timelock=false
 */
contract AaveV3Plasma_CapsUpdates_20251015 is RiskStewardsPlasma {
  function name() public pure override returns (string memory) {
    return 'AaveV3Plasma_CapsUpdates_20251015';
  }

  function capsUpdates() public pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3PlasmaAssets.USDT0_UNDERLYING,
      supplyCap: 1,
      borrowCap: 1
    });

    return capsUpdate;
  }
}
