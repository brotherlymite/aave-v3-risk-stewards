import {ConfigFile} from '../../generator/types';
export const config: ConfigFile = {
  rootOptions: {
    configFile: 'src/contracts/updates/20251016_AaveV3EthereumLido_EModesUpdate/config.ts',
    force: true,
    pools: ['AaveV3EthereumLido'],
    title: 'EModesUpdate',
    shortName: 'EModesUpdate',
    date: '20251016',
    author: 'brotherlymite',
    discussion: '',
  },
  poolOptions: {
    AaveV3EthereumLido: {
      configs: {
        EMODES_UPDATE: [{eModeCategory: '2', ltv: '90', liqThreshold: '', liqBonus: '', label: ''}],
      },
      cache: {},
    },
  },
};
