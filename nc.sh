# start nc listening on a specific port for a connection
nc -l 1234

# connect to the machine and port being listened on:
nc 127.0.0.1 1234

# ftp
# server
nc -l 1234 > filename.out
# client
nc host.example.com 1234 < filename.in

# scan port 20-30
nc -zv host.example.com 20-30
