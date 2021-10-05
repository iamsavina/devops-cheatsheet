# Installation

## code

db connection file should looks like this;
```
const mysql = require('mysql');
const db = mysql.createConnection({
    host : "[ip]",
    user : "neo",
    password: "wonderland",
    database: "matrix",
    dateStrings: true,
    port: '3306'
});
db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Database connected successfully !')
});

module.exports = db;
```

## Errors

### Client not support authentication error

    ALTER USER 'neo' IDENTIFIED WITH mysql_native_password BY 'wonderland'

### Timeout error

+ Problem is with the connectivity
    + check firewall
    + ping the server

+ Try to create a new user & give privileges
```
CREATE USER 'neo'@'localhost' IDENTIFIED BY 'wonderland';
GRANT ALL PRIVILEGES ON *.* TO 'neo'@'localhost' WITH GRANT OPTION;

CREATE USER 'neo'@'%' IDENTIFIED BY 'wonderland';
GRANT ALL PRIVILEGES ON *.* TO 'neo'@'%' WITH GRANT OPTION;
```