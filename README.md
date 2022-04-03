
# Notify me the intruders / Notificame de los intrusos

Script para notificarte de los intrusos o nuevas conexiones en tu red en tu celular usando [ntfy.sh](https://ntfy.sh)

Script to notify you if they are intruders or new connections on your network

## Prerequisites / Prerequisitos

[Install Nmap](https://nmap.org/download#linux-rpm)

[Instalar Nmap](https://nmap.org/download#linux-rpm)


## Run Locally / Correr locamente

Clone the project / Clonar el proyecto

```bash
git clone https://github.com/nothingbutlucas/notify_me_the_intruders
```

Go to the project directory / Ir al directorio del proyecto

```bash
cd notify_me_the_intruders
```

Edit the script (I use nvim, but u can use vim or nano) / Editar el script (Yo uso nvim, pero usa lo que quieras)

```bash
nvim notify_me_the_intruders.sh
```

Change the topic variable / Cambia la variable topoc

```bash
topic=YOUR_TOPIC_HERE
```

Run the script to test it / Corre el script para testear que funcione

```bash
./notify_me_the_intruders.sh
```

If it works, create a cron (Every 5 minutes example) / Si funciona crea un cron (Ejemplo de 5 minutos)

```bash
crontab -e
```

```bash
*/5 * * * * /route/to/the/script/notify_me_the_intruders.sh >/dev/null 2>&1
```

If it doesn't work, check that your topic name doesn't have a special character or a bash reserved character and if it does, change it or find a way to skip it.

Si no funciona, verifica que el nombre de tu topico no tenga algún caracter especial o uno reservado por bash y si lo tiene cambialo o busca como esquipearlo.
