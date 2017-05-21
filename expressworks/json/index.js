'use strict';

const koa = require('koa');
const fsp = require('fs-promise');

const app = koa();

const port = process.argv[2];
const file = process.argv[3];

app.use(function* (next) {
    if (this.request.path.indexOf('/books') !== 0) {
        yield next;
    }

    try {
        this.body = yield fsp.readFile(file).then(JSON.parse);
    } catch(err) {
        this.status = 500;
    }

});

app.listen(port);
