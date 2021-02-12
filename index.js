const puppeteer = require('puppeteer');
const $ = require('cheerio');
const CronJob = require('cron').CronJob;
const nodemailer = require('nodemailer');


const url = 'http://zencloud.uno/elmercader/index.html';

var mysql = require('mysql');

var conexion = mysql.createConnection({
    host: 'localhost',
    database: 'stocks',
    user: 'root',
    password: ''
});

conexion.connect(function(error) {
    if (error) {
        throw error;
    } else {
        console.log('conexion exitosa');
    }
});


async function configureBrowser() {
    const browser = await puppeteer.launch();
    const page = await browser.newPage();
    await page.goto(url);
    return page;
}

const stock = [];

function stokk(acronimo, nombre, precio, hora, fecha) {
  this.acronimo = acronimo;
  this.nombre = nombre;
  this.precio = precio;
  this.hora = hora;
  this.fecha = fecha;
}

let price = '';

async function checkPrice(page) {
    await page.reload();
    let html = await page.evaluate(() => document.body.innerHTML);
    //console.log(html);

     $('h2.stock', html).each(function() {
      let dollarPrice = $(this).text();
       console.log(dollarPrice); 

       

       if (dollarPrice !== price) {

         let hora = Date();
         let fecha = Date();
         
         var dato = new stokk('ALLI', 'Alicorp C.O', dollarPrice, fecha, hora);

         conexion.query('INSERT INTO alicorp SET ?', { nombre: 'Alicorp C.O', precio: dollarPrice, hora: hora, fecha: fecha, acronimo: "ALLI" }, function (error, results, fields) {
          if (error) throw error;
          console.log(results.insertId);
      });
      
      //conexion.end();
         
        const count = stock.push(dato);
        console.log(count);
         console.log(stock);
         
         // funcion para subir a la BD
         
       } else {
         console.log('repetido');

       }
       price = dollarPrice;
       
     /*   if (currentPrice < 300) {
           console.log("BUY!!!! " + currentPrice);
            //sendNotification(currentPrice);
        } */
     });
     
  
}

/* async function monitor() {
  let page = await configureBrowser();
  await checkPrice(page);
}
monitor(); */

async function startTracking() {
   const page = await configureBrowser();
  
   let job = new CronJob('*/15 * * * * *', function() { //runs every 30 minutes in this config
      checkPrice(page);
    }, null, true, null, null, true);
    job.start();
}



/* async function sendNotification(price) {

    let transporter = nodemailer.createTransport({
      service: 'gmail',
      auth: {
        user: '*****@gmail.com',
        pass: '*****'
      }
    });
  
    let textToSend = 'Price dropped to ' + price;
    let htmlText = `<a href=\"${url}\">Link</a>`;
  
    let info = await transporter.sendMail({
      from: '"Price Tracker" <*****@gmail.com>',
      to: "*****@gmail.com",
      subject: 'Price dropped to ' + price, 
      text: textToSend,
      html: htmlText
    });
  
    console.log("Message sent: %s", info.messageId);
  }
 */
startTracking(); 