
# Notify me the intruders

Script para notificarte de los intrusos o nuevas conexiones en tu red en tu celular usando [ntfy.sh](https://ntfy.sh)


## Prerequisites

[Install Nmap](https://nmap.org/download#linux-rpm)


## Run Locally

Clone the project

```bash
git clone https://github.com/nothingbutlucas/notify_me_the_intruders
```

Go to the project directory

```bash
cd notify_me_the_intruders
```

Edit the script (I use nvim, but u can use vim or nano)

```bash
nvim notify_me_the_intruders.sh
```

Change the topic variable

```bash
topic=YOUR_TOPIC_HERE
```

Run the script to test it

```bash
./notify_me_the_intruders.sh
```

If it works, create a cron (Every 5 minutes example)

```bash
crontab -e
```

```bash
*/5 * * * * /route/to/the/script/notify_me_the_intruders.sh >/dev/null 2>&1
```
