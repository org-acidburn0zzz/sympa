<!-- RCS Identication ; $Revision$ ; $Date$ -->

  [IF status=auth]
    Le szeretn�l iratkozni a(z) [list] list�r�l. <BR>Leiratkoz�sod
    meger�s�t�s�hez kattints a lenti gombra:<BR>
	<BR>

	<FORM ACTION="[path_cgi]" METHOD=POST>
	  <INPUT TYPE="hidden" NAME="list" VALUE="[list]">
	  <INPUT TYPE="hidden" NAME="email" VALUE="[user->email]">
	  <INPUT TYPE="submit" NAME="action_signoff" VALUE="[list] list�r�l leiratkozom">
	</FORM>

  [ELSIF not_subscriber]

      Nem vagy a(z) [list] list�n nyilv�ntartva [email] 
      e-mail c�mmel.
      <BR><BR>
      Lehet, hogy a list�ra m�sik c�mmel iratkozt�l fel.
      K�rlek ez esetben keresd fel a lista tulajdonos�t leiratkoz�sodhoz:
      <A HREF="mailto:[list]-request@[conf->host]">[list]-request@[conf->host]</A>
      
  [ELSIF init_passwd]
	Le szeretn�l iratkozni a(z) [list] list�r�l.
	<BR><BR>
	Azonos�t�sodhoz �s hogy m�sok tudtod n�lk�l ne tudjanak t�r�lni 
	lev�lben kapsz egy pontos internet c�met (URL).<BR><BR>

	A Sympa �ltal k�ld�tt lev�lben tal�lhat� jelsz�t kell itt megadnod
	a(z) [list] list�r�l val� leiratkoz�sodhoz.
	
        <FORM ACTION="[path_cgi]" METHOD=POST>
          <FONT COLOR="[dark_color]"><B>E-mail c�m</B> </FONT>[email]<BR>
            <FONT COLOR="[dark_color]"><B>Jelsz�</B> </FONT> 
  	  <INPUT TYPE="password" NAME="passwd" SIZE="20">
	  <INPUT TYPE="hidden" NAME="list" VALUE="[list]">
	  <INPUT TYPE="hidden" NAME="email" VALUE="[email]">
        &nbsp; &nbsp; &nbsp;<INPUT TYPE="submit" NAME="action_signoff" VALUE="Leiratkoz�s">
        </FORM>


	A jelszavaddal �s e-mail c�meddel az egy�ni be�ll�t�saidat
	tudod k�s�bb megv�ltoztatni.

   [ELSIF ! email]
        K�rlek add meg az e-mail c�medet a(z) [list] list�r�l val� leiratkoz�si k�relemhez.

      <FORM ACTION="[path_cgi]" METHOD=POST>
          <B>E-mail c�med:</B> 
          <INPUT NAME="email"><BR>
          <INPUT TYPE="hidden" NAME="action" VALUE="sigrequest">
	  <INPUT TYPE="hidden" NAME="list" VALUE="[list]">
	  <INPUT TYPE="submit" NAME="action_sigrequest" VALUE="Leiratkoz�s">
         </FORM>


  [ELSE]

	A(z) [list] listar�l val� leiratkoz�s meger�s�t�s�hez add meg
	lent a jelszavadat:

         <FORM ACTION="[path_cgi]" METHOD=POST>
          <FONT COLOR="[dark_color]"><B>E-mail c�m</B> </FONT>[email]<BR>
            <FONT COLOR="[dark_color]"><B>Jelsz�</B> </FONT> 
  	  <INPUT TYPE="password" NAME="passwd" SIZE="20">
	  <INPUT TYPE="hidden" NAME="list" VALUE="[list]">
	  <INPUT TYPE="hidden" NAME="email" VALUE="[email]">
         &nbsp; &nbsp; &nbsp;<INPUT TYPE="submit" NAME="action_signoff" VALUE="Leiratkoz�s">

<BR><BR>
<I>Ha a szerveren nincsen jelszavad, vagy elfelejtetted, akkor klikk ide:</I>  <INPUT TYPE="submit" NAME="action_sendpasswd" VALUE="K�ldd el a jelszavamat">

         </FORM>

  [ENDIF]      



