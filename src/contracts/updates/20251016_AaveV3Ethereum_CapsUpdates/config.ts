import {ConfigFile} from '../../generator/types';
export const config: ConfigFile = {
  rootOptions: {
    configFile: 'src/contracts/updates/20251016_AaveV3Ethereum_CapsUpdates/config.ts',
    force: true,
    pools: ['AaveV3Ethereum'],
    title: 'CapsUpdates',
    shortName: 'CapsUpdates',
    date: '20251016',
    author: 'brotherlymite',
    discussion: '',
  },
  poolOptions: {
    AaveV3Ethereum: {
      configs: {
        CAPS_UPDATE: [
          {asset: 'WETH', supplyCap: '10', borrowCap: '10'},
          {asset: 'USDC', supplyCap: '5', borrowCap: '5'},
        ],
      },
      cache: {},
    },
  },
};
