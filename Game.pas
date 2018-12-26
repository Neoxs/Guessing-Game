Program Game;
     Part of Type declaration
    Type tab = Array[1..500] of Integer;
    // ======== Global variables ========
    Var
    t: tab;
    i,j,n,g,k: Integer;
    x: char;
    b: Boolean;
    //============================
   {
    Procedure rempli (var t1:tab);
        Begin
        	i:=1;
            While( i <= n - g + 1 ) do
                Begin
                    t[i]:= i;
                    i := i+1
                End
            End;
            }
             
        //============ Procedure to fill the table and initialize the values =======    
        Procedure start ;
        Begin
        	b:= false;
            n:=500;
            g:=1;
            For i:=1 to 500 do
                t[i] := i
        End;
    Begin
    	//========== Calling Strat Procedure To start the Game =============
    	start;
        //=========== Explaning the game Rules ==============
        WriteLn('============= GAME RULES =============='); 
        writeln();
        WriteLn('The Rules Of This Game Are Simple Like This') ;
        writeln();
        writeln('All What You Have To Do Is To Think Of A Number And Tell The Truth');
        writeln();
        WriteLn('''==== DON''T LIE WE HAVE EYES THAT CAN TELL IF YOU ARE LYING :) ====''');
        writeln();
        WriteLn('OKAY so while you think of that number this program will guess that number');
        writeln();
        WriteLn('All what you have to do is this ...');
        writeln();
        Writeln('===> Write "p" If The Number That appears Is Smaller Then Yours');
        writeln();
        Writeln('===> Write "g" If The Number that appears Is Greater Then Yours');
        writeln();
        WriteLn('===> If The Number That Appears Is Yours Then type "y"') ;
        writeln();
        WriteLn('==========================================================');
        //==================== The beginning of the game ======================
    	WriteLn('Think Of A Number Between 1 And 500');
    	Writeln('========== Press ENTER To Strat The Game ==========');
    	Readln();
    	While (b = false) do
        Begin
        	//======== Guessing The Number ========
        	// j is the guessed number 
        	// g : is the begging of the interval that contains your number
        	//n : is the end of the interval that contains your number
        	//==================================
            j:= g + Random( n - g +1);
            WriteLn('Is This Your Number ? ',j);
            WriteLn('===============================');
            Readln(x);
            //=============== Checking the user inputs to change the inteval =================
            Case x of 
            'g' : n := j;
            'p' : g:=j;
            'y' : Begin 
                        b:= True;
                        WriteLn('Got ya :) Good Game');
                        // ==== If The user want to restart the game ===
                        WriteLn('If you want to repeat the game type "r" else press ENTER');
                        Readln(x);
                        if x='r' Then Begin start; WriteLn('===============================') end 
                    End;
                End  ;
            // ========= Case Of Cheating ========= 
            if ( (x <> 'y') AND (n =g) ) then begin b:=true; WriteLn('YOU CAN"T TRICK ME NAUGHTY KID THIS IS YOUR NUMBER ',j) end
        End   
    End.
    //====== End of the game ============
