import {ConfigFile} from '../../../../generator/types';

export const config: ConfigFile = {
  rootOptions: {
    configFile: 'src/contracts/updates/20251016_AaveV3Ethereum_CollateralUpdates/config.ts',
    force: true,
    pools: ['AaveV3Ethereum'],
    title: 'CollateralUpdates',
    shortName: 'CollateralUpdates',
    date: '20251016',
    author: 'brotherlymite',
    discussion: '',
  },
  poolOptions: {
    AaveV3Ethereum: {
      configs: {COLLATERAL_UPDATE: [{asset: 'WETH', ltv: '50', liquidationThreshold: '50', liquidationBonus: '2'}]},
      cache: { },
    },
  },
};
