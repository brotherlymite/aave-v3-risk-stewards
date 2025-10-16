// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {RiskStewardsEthereumLido} from '../../../../scripts/networks/RiskStewardsEthereumLido.s.sol';
import {EngineFlags} from 'aave-v3-origin/src/contracts/extensions/v3-config-engine/EngineFlags.sol';
import {IAaveV3ConfigEngine} from 'aave-v3-origin/src/contracts/extensions/v3-config-engine/IAaveV3ConfigEngine.sol';
/**
 * @title EModesUpdate
 * @author brotherlymite
 * - discussion: TODO
 * - deploy-command: make run-script contract=src/contracts/updates/20251016_AaveV3EthereumLido_EModesUpdate/AaveV3EthereumLido_EModesUpdate_20251016.sol:AaveV3EthereumLido_EModesUpdate_20251016 network=mainnet broadcast=false generate_diff=true skip_timelock=false
 */
contract AaveV3EthereumLido_EModesUpdate_20251016 is RiskStewardsEthereumLido {
  function name() public pure override returns (string memory) {
    return 'AaveV3EthereumLido_EModesUpdate_20251016';
  }

  function eModeCategoriesUpdates()
    public
    pure
    override
    returns (IAaveV3ConfigEngine.EModeCategoryUpdate[] memory)
  {
    IAaveV3ConfigEngine.EModeCategoryUpdate[]
      memory eModeUpdates = new IAaveV3ConfigEngine.EModeCategoryUpdate[](1);

    eModeUpdates[0] = IAaveV3ConfigEngine.EModeCategoryUpdate({
      eModeCategory: 2,
      ltv: 90_00,
      liqThreshold: EngineFlags.KEEP_CURRENT,
      liqBonus: EngineFlags.KEEP_CURRENT,
      label: EngineFlags.KEEP_CURRENT_STRING
    });

    return eModeUpdates;
  }
}
