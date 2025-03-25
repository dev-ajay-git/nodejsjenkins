const request = require('supertest');
const app = require('../server');  // Import the Express app

describe('GET /', () => {
    it('should return 200 OK', (done) => {
        request(app)
            .get('/')
            .expect(200, done);  // Expect status 200
    });
});

describe('GET /api/hello', () => {
    it('should return a hello message', (done) => {
        request(app)
            .get('/api/hello')
            .expect(200)
            .expect('Hello from the /hello route', done);  // Expect response content
    });
});
