const { post } = require('request-promise');

post({
  uri: 'https://api.zenvia.com/v2/channels/sms/messages',
  headers: {
    'X-API-TOKEN': process.env.YOUR_API_TOKEN
  },
  body: {
    from: process.env.REMETENTE,
    to: process.env.DESTINATARIO,
    contents: [{
      type: 'text',
      text: process.env.MENSAGEM
    }]
  },
  json: true
})
.then((response) => {
  console.log('Response:', response);
})
.catch((error) => {
  console.log('Error:', error);
});
