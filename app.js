// To Do Application
let window, $, dna;

const app = {
   doLunch: () => {
      dna.clone('task', { title: 'Order bulgogi' });
      dna.clone('task', { title: 'Eat bulgogi' });
      },
   init: (thisWindow, this$, thisDna) => {
      window = thisWindow;
      $ = this$;
      dna = thisDna;
      return app;
      },
   };

module.exports = { app };  //const app = require('./app.js'); app.init(window, $, dna);
