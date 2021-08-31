## Best Practises

+ Maintain seperate files for seperate configurations
    + Add following code in /etc/nginx/nginx.conf and create seperate files

    include conf.d/http; <br>
    include conf.d/stream; <br>
    include conf.d/exchange-enhanced; <br>
 



