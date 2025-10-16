import {ConfigFile} from '../../../../generator/types';

export const config: ConfigFile = {
  rootOptions: {
    configFile: 'src/contracts/updates/20251016_AaveV3EthereumLido_RateUpdateV3/config.ts',
    force: true,
    pools: ['AaveV3EthereumLido'],
    title: 'RateUpdateV3',
    shortName: 'RateUpdateV3',
    date: '20251016',
    author: 'brotherlymite',
    discussion: '',
  },
  poolOptions: {
    AaveV3EthereumLido: {
      configs: {RATE_UPDATE_V3: [{asset: 'WETH', params: {optimalUtilizationRate: '90', baseVariableBorrowRate: '3', variableRateSlope1: '2', variableRateSlope2: '41'}}]},
      cache: { },
    },
  },
};
