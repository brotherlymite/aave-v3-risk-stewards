// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3PolygonAssets} from 'aave-address-book/AaveV3Polygon.sol';
import {RiskStewardsPolygon} from '../../../../scripts/networks/RiskStewardsPolygon.s.sol';
import {IAaveV3ConfigEngine} from 'aave-v3-origin/src/contracts/extensions/v3-config-engine/IAaveV3ConfigEngine.sol';
/**
 * @title CapsUpdates
 * @author brotherlymite
 * - discussion: TODO
 * - deploy-command: make run-script contract=src/contracts/updates/20251015_AaveV3Polygon_CapsUpdates/AaveV3Polygon_CapsUpdates_20251015.sol:AaveV3Polygon_CapsUpdates_20251015 network=polygon broadcast=false generate_diff=true skip_timelock=false
 */
contract AaveV3Polygon_CapsUpdates_20251015 is RiskStewardsPolygon {
  function name() public pure override returns (string memory) {
    return 'AaveV3Polygon_CapsUpdates_20251015';
  }

  function capsUpdates() public pure override returns (IAaveV3ConfigEngine.CapsUpdate[] memory) {
    IAaveV3ConfigEngine.CapsUpdate[] memory capsUpdate = new IAaveV3ConfigEngine.CapsUpdate[](1);

    capsUpdate[0] = IAaveV3ConfigEngine.CapsUpdate({
      asset: AaveV3PolygonAssets.UNI_UNDERLYING,
      supplyCap: 1,
      borrowCap: 1
    });

    return capsUpdate;
  }
}
