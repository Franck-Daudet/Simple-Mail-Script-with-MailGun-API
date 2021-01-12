# Simple-Mail-Script-with-MailGun-API
Mail script that allows to send a mail with a file

## Set Up

* Change Api_KEY, MAILGUN_MAIL, MAILGUN_DOMAIN value between < >
* Make .sh file executable and make an alias so you can use it whenever you want :
    ```bash
    chmod +x PATH_TO_FILE\mail.sh
    alias mail=PATH_TO_FILE\mail.sh
    ```
* Now you can use the `mail` command to launch the script

## How to use it

* Launch the script
* Fill the recipient, subject and mail boy

* If you want to add a file, you can type the relative path or full path
* If you dont want to add a file, leave the field empty
![bash](./images/bash.png?raw=true "Exemple d'utilisation du script")
![mail](./images/mail.png?raw=true "Exemple de mail")

## Author
* DAUDET Franck
* BOREL Nathan