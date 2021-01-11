#!/bin/bash
# Simple Mail Script using MailGun API
Api_KEY=api:<APINUMBER>
MAILGUN_MAIL=<postmaster@MAILGUN_MAIL.mailgun.org>
MAILGUN_DOMAIN=<DOMAIN>
echo "   _____ _                 _        __  __       _ _    _____           _       _   "
echo "  / ____(_)               | |      |  \/  |     (_) |  / ____|         (_)     | |  "
echo " | (___  _ _ __ ___  _ __ | | ___  | \  / | __ _ _| | | (___   ___ _ __ _ _ __ | |_ "
echo "  \___ \| | '_ \` _ \| '_ \| |/ _ \ | |\/| |/ _\` | | |  \___ \ / __| '__| | '_ \| __|"
echo "  ____) | | | | | | | |_) | |  __/ | |  | | (_| | | |  ____) | (__| |  | | |_) | |_ "
echo " |_____/|_|_| |_| |_| .__/|_|\___| |_|  |_|\__,_|_|_| |_____/ \___|_|  |_| .__/ \__|"
echo "                    | |                                                  | |        "
echo "                    |_|                                                  |_|        "

echo ""
echo -n "Recipient : "
read email
echo -n "Subject : "
read sujet
echo -n "Mail body : "
read txt
echo -n "File : "
    read file


if [[ -z "$file" ]]; then
    curl -s --user $Api_KEY \
        https://api.mailgun.net/v3/"$MAILGUN_DOMAIN"/messages \
        -F from=$MAIL \
        -F to=$email \
        -F subject="$sujet" \
        -F text="$txt" \
    echo "1"
else
    curl -s --user $Api_KEY \
        https://api.mailgun.net/v3/"$MAILGUN_DOMAIN"/messages \
        -F from=$MAIL \
        -F to=$email \
        -F subject="$sujet" \
        -F text="$txt" \
        -F attachment=@$file
fi