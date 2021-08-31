## Best Practises

+ Maintain seperate files for seperate configurations
    + Add following code in /etc/nginx/conf.d and create seperate files
        include conf.d/http;
        include conf.d/stream;
        include conf.d/exchange-enhanced;

        