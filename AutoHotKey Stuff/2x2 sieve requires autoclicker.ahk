'::ExitApp
return


j::
msgbox, bottom left sieve, 10 seconds after you close this
sleep 10000

loop {
send {w down}
sleep 20
send {w up}
send {d down}
sleep 20
send {d up}
send {s down}
sleep 20
send {s up}
send {a down}
sleep 20
send {a up}
}
return