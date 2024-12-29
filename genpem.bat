$env:OPENSSL_CONF ="C:\Program Files\Common Files\FireDaemon SSL 3\openssl.cnf"
openssl genrsa -out cool.key 2048
openssl req -x509 -newkey rsa:2048 -keyout cool.key -out cool.pem -days 365
