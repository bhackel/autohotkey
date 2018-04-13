#\::
   pause

f12::
   loop
   {
   loop 5
   {
   send {f7 down} ;          start of maintenance loop
   sleep 20
   send {f7 up}
   sleep 250
   send {enter down}
   sleep 20
   send {enter up}
   sleep 750
   send {enter down}
   sleep 20
   send {enter up}
   sleep 7000 ;             end of maintenance loop
   }
   send {w down} ;           start of movement to sleep in game
   send {a down}
   sleep 5500
   send {w up}
   send {a up}
   send {s down}
   sleep 1500
   send {s up}
   send {e down}
   sleep 20
   send {e up}
   sleep 250 ;               now ready to sleep in game
   loop 3
   {
   send {enter down}
   sleep 20
   send {enter up}
   sleep 5250
   }
   }
return