require('rootpath')();
const express = require('express');
var https = require('https');
const app = express();
const cors = require('cors');
const bodyParser = require('body-parser');
const errorHandler = require('_middleware/error-handler');

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors());
app.options("*", cors());

var fs = require('fs');
// var options = {
//     key: fs.readFileSync('/home/ec2-user/demosite/ssl_files/backendinfotech.key'),
//     cert: fs.readFileSync('/home/ec2-user/demosite/ssl_files/certificate.crt'),
// };

// app.use(express.static('public', https_options))

// api routes
// app.use('/', (req, res, next) => {
//     res.end("Hello world !")
// })

app.use('/src/uploads', express.static('./src/uploads'))

app.use('/retired_user', require('./retired_User/users.controller'));
app.use('/serving_users', require('./serving_Users/users.controller'));
app.use('/company_User', require('./company_User/users.controller'));
app.use('/user_Register', require('./user_Register/users.controller'));
app.use('/son_Register', require('./son_Register/users.controller'));
app.use('/job_fair', require('./employment/employment.controller'));
app.use('/job_post', require('./job_post/employment.controller'));
app.use('/notification', require('./sendNotification/notification.controller'));

// global error handler
app.use(errorHandler);

// start server
const port = process.env.NODE_ENV === 'production' ? (process.env.PORT || 2083) : 2083;
app.listen(port, () => console.log('Server listening on port ' + port));
// var listener = https.createServer(options, app).listen(5000, function () {
//     console.log('Express HTTPS server listening on port ' + listener.address().port);
// });