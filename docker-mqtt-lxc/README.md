# Bash Scripting EMQX MQTT Broker on Docker
Script Automation Installation and Running MQTT Broker on Docker Container

Notes :
---------------
First Step Installing Docker Daemon on Linux
Source : https://github.com/anggrdwjy/docker-install-lxc

Configuration :
---------------
Git Clone EMQX MQTT Broker From Repository :
```
git clone https://github.com/anggrdwjy/docker-mqtt-lxc
cd docker-mqtt-lxc
chmod -R 777 *
```

Install EMQX MQTT Broker :
-----------------
```
./docker-mqtt-lxc.sh
```

Verification :
---------------
```
docker ps -a
```

Configuration EMQX MQTT Broker :
---------------
Access Web UI
```
http://ip-address:18083
```
Default Login Web UI EMQX
```
- Username : Admin
- Password : Public
```
Create Authentication 
```
- Authentication -> Build-in Database -> Prefix=Suffix
- Authentication -> Create User -> Username=Text; Password=Text
- MQTT Port Default : 1883
```

Integration EMQX MQTT Client:
----------------
```
- MQTT Broker   : ip-address-mqtt-broker
- MQTT Port     : 1883
- MQTT Username : username-authentication
- MQTT Password : password-authentication
```