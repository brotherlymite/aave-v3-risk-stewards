import {ConfigFile} from '../../../../generator/types';

export const config: ConfigFile = {
  rootOptions: {
    configFile: 'src/contracts/updates/20251016_AaveV3Optimism_CollateralUpdates/config.ts',
    force: true,
    pools: ['AaveV3Optimism'],
    title: 'CollateralUpdates',
    shortName: 'CollateralUpdates',
    date: '20251016',
    author: 'brotherlymite',
    discussion: '',
  },
  poolOptions: {
    AaveV3Optimism: {
      configs: {COLLATERALS_UPDATE: [{asset: 'WETH', ltv: '77', liqThreshold: '79', liqBonus: '5', debtCeiling: '0', liqProtocolFee: '10'}]},
      cache: { },
    },
  },
};
