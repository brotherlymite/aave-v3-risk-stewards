import {ConfigFile} from '../../generator/types';

export const config: ConfigFile = {
  rootOptions: {
    configFile: 'src/contracts/updates/20251006_AaveV3Ethereum_CapsUpdates/config.ts',
    force: true,
    pools: ['AaveV3Ethereum'],
    title: 'CapsUpdates',
    shortName: 'CapsUpdates',
    date: '20251006',
    author: 'brotherlymite',
    discussion: '',
  },
  poolOptions: {
    AaveV3Ethereum: {
      configs: {CAPS_UPDATE: [{asset: 'USDC', supplyCap: '1', borrowCap: '1'}]},
      cache: { },
    },
  },
};
