import {ConfigFile} from '../../generator/types';

export const config: ConfigFile = {
  rootOptions: {
    configFile: 'src/contracts/updates/20251016_AaveV3Arbitrum_CollateralUpdates/config.ts',
    force: true,
    pools: ['AaveV3Arbitrum'],
    title: 'CollateralUpdates',
    shortName: 'CollateralUpdates',
    date: '20251016',
    author: 'brotherlymite',
    discussion: '',
  },
  poolOptions: {
    AaveV3Arbitrum: {
      configs: {COLLATERAL_UPDATE: [{asset: 'DAI', ltv: '75', liquidationThreshold: '80', liquidationBonus: '5'}]},
      cache: { },
    },
  },
};
