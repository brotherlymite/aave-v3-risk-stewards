import {ConfigFile} from '../../generator/types';

export const config: ConfigFile = {
  rootOptions: {
    configFile: 'src/contracts/updates/20251015_AaveV3Plasma_CapsUpdates/config.ts',
    force: true,
    pools: ['AaveV3Plasma'],
    title: 'CapsUpdates',
    shortName: 'CapsUpdates',
    date: '20251015',
    author: 'brotherlymite',
    discussion: '',
  },
  poolOptions: {
    AaveV3Plasma: {
      configs: {CAPS_UPDATE: [{asset: 'USDT0', supplyCap: '1', borrowCap: '1'}]},
      cache: { },
    },
  },
};
