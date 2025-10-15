import {ConfigFile} from '../../generator/types';
export const config: ConfigFile = {
  rootOptions: {
    configFile: 'src/contracts/updates/20251015_AaveV3Polygon_CapsUpdates/config.ts',
    force: true,
    pools: ['AaveV3Polygon'],
    title: 'CapsUpdates',
    shortName: 'CapsUpdates',
    date: '20251015',
    author: 'brotherlymite',
    discussion: '',
  },
  poolOptions: {
    AaveV3Polygon: {
      configs: {CAPS_UPDATE: [{asset: 'UNI', supplyCap: '1', borrowCap: '1'}]},
      cache: {},
    },
  },
};
