const IPFS = require('ipfs-mini');
const ipfs = new IPFS({ host: 'ipfs.infura.io', port: 5001, protocol: 'https' });

ipfs.add('hello world!', (err, result) => {
  console.log(err, result);
});

// result null 'QmTp2hEo8eXRp6wg7jXv1BLCMh5a4F3B7buAUZNZUu772j'

ipfs.cat('QmTp2hEo8eXRp6wg7jXv1BLCMh5a4F3B7buAUZNZUu772j', (err, result) => {
  console.log(err, result);
});

// result null 'hello world!'
