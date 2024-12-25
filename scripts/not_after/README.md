# not_after

This is a script for Linux shell.

```shell
touch ~/not_after.sh && chmod +x ~/not_after.sh
```

Then open the file and paste the contents.

## Description

Returns 1 if the current date/time is past the date/time you gave on the command line.

Use it in External filters if you want autobrr to reject everything after a given date/time.

For example in a limited global freeleech, you don't want to download anything after FL ends.

External / add External Filter
Type = Exec
Path to executable = ~/not_after.sh
Exec arguments = "2024-12-31" "22:30:00"

Test in your shell:
./not_after.sh "2024-12-25" "12:00:00" && echo 'current date before the given date' || echo 'current date after the given date'
