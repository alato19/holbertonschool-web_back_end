import getResponseFromAPI from './0-promicse';

const response = getResponseFromAPI();
console.log(response instanceof Promise);
