require('dotenv').config();
const express = require('express');
const app = express();
const ejsExtend = require('express-ejs-extend');
import configViewEngine from "./config/viewEngine";
import initRoutes from "./routes/web";
import bodyParser from "body-parser";
import cookieParser from 'cookie-parser';
import flash from 'connect-flash';
import methodOverride from 'method-override';
import passPort from "passport";
import session from "./config/session";

// Cấu hình view engine
app.engine('ejs', ejsExtend);
app.set('view engine', 'ejs');
app.set('views', './src/views');

app.use(methodOverride('_method'));
app.use(cookieParser('secret'));

app.use(flash());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

//config session
session.configSession(app);

configViewEngine(app);

// config Passportjs
app.use(passPort.initialize());
app.use(passPort.session());

initRoutes(app);

let port = process.env.PORT;
app.listen(port || 8080, () => console.log(`Doctors care app is running on port ${port}!`));
