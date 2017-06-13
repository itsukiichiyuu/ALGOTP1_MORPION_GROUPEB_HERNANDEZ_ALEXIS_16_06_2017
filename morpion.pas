{ALGO morpion

CONS
	LARGEUR=8
	LONGUEUR=8
	DECALX=5
	DECALY=5

TYPE
	tabforme = TABLEAU [1..3,1..3] DE ENTIER

//----------------------------------------------------------------------------------------------------------------
//BUT affiche un petit menu de depart
//ENTREE 
//SORTIE un joli affichage
PROCEDURE affichagedebut()
DEBUT
	Allez aux coordonnees xy(10,10)
	ECRIRE("JEU DU MORPION")
	Allez aux coordonnees xy(8,11)
	ECRIRE a la ligne("appuyez sur entrer")
	
FINPROCEDURE
//----------------------------------------------------------------------------------------------------------------
//BUT afficher la grille de jeu
//ENTREE les noms des joueur
//SORTIE une grille et les noms
PROCEDURE affichegrille(nom1:CHAINE nom2:CHAINE)
var
	i,j:ENTIER
	lettre:CHAINE
DEBUT

	couleur texte(blanc)
	Allez aux coordonnees xy(1,1)
	ECRIRE a la ligne(nom1," joue les croix")
	ECRIRE a la ligne(nom2," joue les ronds")

	POUR i<-1 A 3 FAIRE
		Allez aux coordonnees xy(DECALX-1,DECALY-2+(i*3))//affiche les coordonnées de 1 à 3
		ECRIRE(i)
	FINPOUR

	POUR i<-1 A 3 FAIRE					//affiche les coordonnées de A à C
		Allez aux coordonnees xy(DECALX-2+(i*3),DECALY-1)

		CAS i PARMIS
			1: lettre<-'A'
			2: lettre<-'B'
			3: lettre<-'C'
		FINCASPARMIS

		ECRIRE(lettre)
	FINPOUR
	
	j<-1
	
	POUR i<-1 A LARGEUR FAIRE				//affiche les barres horizontales
		Allez aux coordonnees xy(i+DECALX,j+2+DECALY)
		ECRIRE("-")
		Allez aux coordonnees xy(i+DECALX,j+5+DECALY)
		ECRIRE("-")
	FINPOUR

	i<-1

	POUR j<-1 A LONGUEUR FAIRE				//affiche les barres verticales
		Allez aux coordonnees xy(i+2+DECALX,j+DECALY)
		ECRIRE("|")
		Allez aux coordonnees xy(i+5+DECALX,j+DECALY)
		ECRIRE("|")
	FINPOUR

FINPROCEDURE
//----------------------------------------------------------------------------------------------------------------
//BUT affiche les croix sur la grille
//ENTREE le tableau de croix
//SORTIE le tableau affiché
PROCEDURE affichecroix(tabformes:tabforme)
var
	i:ENTIER
DEBUT
	couleur texte(rouge)
	POUR i<-1 A 9 FAIRE							//affiche les croix de 1 à 9

		CAS i PARMIS
			1:DEBUT
				SI tabformes[1,1]=1 ALORS
				
					Allez aux coordonnees xy(1+DECALX,1+DECALY)
					ECRIRE a la ligne("\/")
					Allez aux coordonnees xy(1+DECALX,2+DECALY)
					ECRIRE("/\")
				FINSI
			FINCAS

			2:DEBUT
				SI tabformes[1,2]=1 ALORS
				
					Allez aux coordonnees xy(4+DECALX,1+DECALY)
					ECRIRE a la ligne("\/")
					Allez aux coordonnees xy(4+DECALX,2+DECALY)
					ECRIRE("/\")
				FINSI
			FINCAS

			3:DEBUT
				SI tabformes[1,3]=1 ALORS
				
					Allez aux coordonnees xy(7+DECALX,1+DECALY)
					ECRIRE a la ligne("\/")
					Allez aux coordonnees xy(7+DECALX,2+DECALY)
					ECRIRE("/\")
				FINSI
			FINCAS

			4:DEBUT
				SI tabformes[2,1]=1 ALORS
				
					Allez aux coordonnees xy(1+DECALX,4+DECALY)
					ECRIRE a la ligne("\/")
					Allez aux coordonnees xy(1+DECALX,5+DECALY)
					ECRIRE("/\")
				FINSI
			FINCAS

			5:DEBUT
				SI tabformes[2,2]=1 ALORS
				
					Allez aux coordonnees xy(4+DECALX,4+DECALY)
					ECRIRE a la ligne("\/")
					Allez aux coordonnees xy(4+DECALX,5+DECALY)
					ECRIRE("/\")
				FINSI
			FINCAS

			6:DEBUT
				SI tabformes[2,3]=1 ALORS
				
					Allez aux coordonnees xy(7+DECALX,4+DECALY)
					ECRIRE a la ligne("\/")
					Allez aux coordonnees xy(7+DECALX,5+DECALY)
					ECRIRE("/\")
				FINSI
			FINCAS

			7:DEBUT
				SI tabformes[3,1]=1 ALORS
				
					Allez aux coordonnees xy(1+DECALX,7+DECALY)
					ECRIRE a la ligne("\/")
					Allez aux coordonnees xy(1+DECALX,8+DECALY)
					ECRIRE("/\")
				FINSI
			FINCAS

			8:DEBUT
				SI tabformes[3,2]=1 ALORS
				
					Allez aux coordonnees xy(4+DECALX,7+DECALY)
					ECRIRE a la ligne("\/")
					Allez aux coordonnees xy(4+DECALX,8+DECALY)
					ECRIRE("/\")
				FINSI
			FINCAS

			9:DEBUT
				SI tabformes[3,3]=1 ALORS
				
					Allez aux coordonnees xy(7+DECALX,7+DECALY)
					ECRIRE a la ligne("\/")
					Allez aux coordonnees xy(7+DECALX,8+DECALY)
					ECRIRE("/\")
				FINSI
			FINCAS
		FINCASPARMIS
	FINPOUR
FINPROCEDURE
//----------------------------------------------------------------------------------------------------------------
//BUT affiche les rond sur la grille
//ENTREE le tableau de ronds
//SORTIE affichage du tableau
PROCEDURE afficherond(tabformes:tabforme)
var
	i:ENTIER
DEBUT
	couleur texte(bleu)

	POUR i<-1 A 9 FAIRE							//affiche les ronds de 1 à 9
		
		CAS i PARMIS
			1:DEBUT
				SI tabformes[1,1]=1 ALORS
				
					Allez aux coordonnees xy(1+DECALX,1+DECALY)
					ECRIRE a la ligne("/\")
					Allez aux coordonnees xy(1+DECALX,2+DECALY)
					ECRIRE("\/")
				FINSI
			FINCAS

			2:DEBUT
				SI tabformes[1,2]=1 ALORS
				
					Allez aux coordonnees xy(4+DECALX,1+DECALY)
					ECRIRE a la ligne("/\")
					Allez aux coordonnees xy(4+DECALX,2+DECALY)
					ECRIRE("\/")
				FINSI
			FINCAS

			3:DEBUT
				SI tabformes[1,3]=1 ALORS
				
					Allez aux coordonnees xy(7+DECALX,1+DECALY)
					ECRIRE a la ligne("/\")
					Allez aux coordonnees xy(7+DECALX,2+DECALY)
					ECRIRE("\/")
				FINSI
			FINCAS

			4:DEBUT
				SI tabformes[2,1]=1 ALORS
				
					Allez aux coordonnees xy(1+DECALX,4+DECALY)
					ECRIRE a la ligne("/\")
					Allez aux coordonnees xy(1+DECALX,5+DECALY)
					ECRIRE("\/")
				FINSI
			FINCAS

			5:DEBUT
				SI tabformes[2,2]=1 ALORS
				
					Allez aux coordonnees xy(4+DECALX,4+DECALY)
					ECRIRE a la ligne("/\")
					Allez aux coordonnees xy(4+DECALX,5+DECALY)
					ECRIRE("\/")
				FINSI
			FINCAS

			6:DEBUT
				SI tabformes[2,3]=1 ALORS
				
					Allez aux coordonnees xy(7+DECALX,4+DECALY)
					ECRIRE a la ligne("/\")
					Allez aux coordonnees xy(7+DECALX,5+DECALY)
					ECRIRE("\/")
				FINSI
			FINCAS

			7:DEBUT
				SI tabformes[3,1]=1 ALORS
				
					Allez aux coordonnees xy(1+DECALX,7+DECALY)
					ECRIRE a la ligne("/\")
					Allez aux coordonnees xy(1+DECALX,8+DECALY)
					ECRIRE("\/")
				FINSI
			FINCAS

			8:DEBUT
				SI tabformes[3,2]=1 ALORS
				
					Allez aux coordonnees xy(4+DECALX,7+DECALY)
					ECRIRE a la ligne("/\")
					Allez aux coordonnees xy(4+DECALX,8+DECALY)
					ECRIRE("\/")
				FINSI
			FINCAS

			9:DEBUT
				SI tabformes[3,3]=1 ALORS
				
					Allez aux coordonnees xy(7+DECALX,7+DECALY)
					ECRIRE a la ligne("/\")
					Allez aux coordonnees xy(7+DECALX,8+DECALY)
					ECRIRE("\/")
				FINSI
			FINCAS
		FINCASPARMIS
	FINPOUR
FINPROCEDURE
//----------------------------------------------------------------------------------------------------------------
//BUT teste si le joueur actuel à gagné
//ENTREE le tableau du joueur actuel
//SORTIE un booleen 
FONCTION testvictoire(tabformes:tabforme):BOOLEEN
DEBUT
	SI (tabformes[1,1]=1) ET (tabformes[2,2]=1) ET (tabformes[3,3]=1) OU   //diagonale1
	   (tabformes[1,3]=1) ET (tabformes[2,2]=1) ET (tabformes[3,1]=1) OU   //diagonale2
	   (tabformes[1,1]=1) ET (tabformes[1,2]=1) ET (tabformes[1,3]=1) OU   //horizontale1
	   (tabformes[2,1]=1) ET (tabformes[2,2]=1) ET (tabformes[2,3]=1) OU   //horizontale2
	   (tabformes[3,1]=1) ET (tabformes[3,2]=1) ET (tabformes[3,3]=1) OU   //horizontale3
	   (tabformes[1,1]=1) ET (tabformes[2,1]=1) ET (tabformes[3,1]=1) OU   //verticale1
	   (tabformes[1,2]=1) ET (tabformes[2,2]=1) ET (tabformes[3,2]=1) OU   //verticale2
	   (tabformes[1,3]=1) ET (tabformes[2,3]=1) ET (tabformes[3,3]=1) ALORS //verticale3
	   
	   testvictoire<-VRAI
	SINON
		testvictoire<-FAUX
	FINSI
FINFONCTION
//----------------------------------------------------------------------------------------------------------------
//BUT:Enregistrer le nom des joueur.
//ENTREE: Deux chaines de caractères.
//SORTIE: Deux chaines de caractères remplies.
PROCEDURE pseudo12(var nom1:CHAINE var nom2:CHAINE)
DEBUT
	REPETER
		ECRIRE a la ligne("JOUEUR 1 ENTREZ VOTRE NOM")
		LIRE a la ligne(nom1)
	JUSQUA (length(nom1)>0) ET (length(nom1)<10)

	REPETER
		ECRIRE a la ligne("JOUEUR 2 ENTREZ VOTRE NOM")
		LIRE a la ligne(nom2)
	JUSQUA (length(nom2)>0) ET (length(nom2)<10)
FINPROCEDURE
//----------------------------------------------------------------------------------------------------------------
//BUT:Choisir un joueur qui jouera en premier au hasard.
//ENTREE:Une chaine de caractère du nom du joueur et du joueur 2.
//SORTIE:Une des deux chaines de caractères précédente.
FONCTION premier(nom1:CHAINE nom2:CHAINE):CHAINE
var
	i:ENTIER
DEBUT
	i<-rETom(2)+1
	SI i=1 ALORS
		premier<-nom1
	SINON
		premier<-nom2
	FINSI

FINFONCTION
//----------------------------------------------------------------------------------------------------------------
//BUT changer le nom du joueur
//ENTREE 3 chaines
//SORTIE une chaine éditée
FONCTION changementjoueur(joueur:CHAINE nom:CHAINE nom2:CHAINE):CHAINE
DEBUT
	SI joueur= nom1 ALORS 
		changementjoueur<-nom2
	SINON 
		changementjoueur<-nom1
FINFONCTION
//----------------------------------------------------------------------------------------------------------------
//BUT réinitialise les tableaux
//ENTREE 3 tableaux
//SORTIE 3 tableaux réinitialisés
PROCEDURE reset(var tabformeC:tabforme var tabformeR:tabforme var tabformeG:tabforme)
var
	i,j:ENTIER

DEBUT

	POUR i<-1 A 3 FAIRE
		POUR j<-1 A 3 FAIRE
			tabformeC[i,j]<-0
			tabformeR[i,j]<-0
			tabformeG[i,j]<-0
		FINPOUR
	FINPOUR
FINPROCEDURE
//----------------------------------------------------------------------------------------------------------------
//BUT gère le tour de jeu du joueur actuel
//ENTREE les tableaux de jeu, les noms des joueurs et le choix X et Y
//SORTIE un tour terminé
PROCEDURE tourjeu(var choixX:ENTIER var choixY:ENTIER var tabformes:tabforme var tabformes2:tabforme var tabformesOK:tabforme 
					joueur:CHAINE nom1:CHAINEnom2:CHAINE mancheactu:ENTIER)
var
	temp:CHAINE
	sortie:BOOLEEN
	total:ENTIER
DEBUT
	sortie<-FAUX

REPETER

	SI joueur=nom1 ALORS 			//donne les croix ou les ronds aux joueurs
		affichecroix(tabformes)
		afficherond(tabformes2)
	SINON
		affichecroix(tabformes2)
		afficherond(tabformes)
	FINSI

	affichegrille(nom1,nom2)
	Allez aux coordonnees xy(7+DECALX,LONGUEUR+DECALY+1)
	ECRIRE("manche : ",mancheactu)
	Allez aux coordonnees xy(7+DECALX,LONGUEUR+DECALY+3)

	ECRIRE a la ligne(joueur," quelle case verticale choisissez-vous ? (A,B ou C)")

	REPETER 							//lis la coordonnée X
		Allez aux coordonnees xy(7+DECALX,LONGUEUR+DECALY+4)

		LIRE a la ligne(temp)
		temp<-lowercase(temp)
	JUSQUA (temp="a") OU (temp="b")OU (temp="c")

	CAS temp PARMIS
		"a": choixX<-1
		"b": choixX<-2
		"c": choixX<-3
	FIN

	Allez aux coordonnees xy(7+DECALX,LONGUEUR+DECALY+5)

	ECRIRE a la ligne (joueur," quelle case horizontale choisissez-vous ? (1,2 ou 3)")

	REPETER 							//lis la coordonnée Y
		Allez aux coordonnees xy(7+DECALX,LONGUEUR+DECALY+6)

		LIRE a la ligne(temp)
	JUSQUA (temp="1") OU (temp="2") OU (temp="3")	

	choixY<-strtoint(temp)

	SI  (tabformes[choixY,choixX]=0) ET (tabformesOK[choixY,choixX]=0) ALORS //test si l'endroit est déjà pris
			tabformes[choixY,choixX]<-1
			tabformesOK[choixY,choixX]<-1
			sortie<-VRAI
	SINON
		Allez aux coordonnees xy(7+DECALX,LONGUEUR+DECALY+5)
		ECRIRE a la ligne(joueur," la case choisis est deja prise ou n"existe pas")
	FINSI

JUSQUA sortie=VRAI

FINROCEDURE
//----------------------------------------------------------------------------------------------------------------
//BUT génère un message au joueur gagnant
//ENTREE une chaine
//SORTIE un affichage du gagnant de la manche
PROCEDURE gagnemanche(joueur:CHAINE)
DEBUT
	
	Allez aux coordonnees xy(10,10)
	ECRIRE a la ligne(joueur, " a gagne la manche.")
FINROCEDURE
//----------------------------------------------------------------------------------------------------------------
//BUT génère un message au joueur gagnant
//ENTREE une chaine
//SORTIE un affichage du gagnant de la partie
PROCEDURE gagnepartie(joueur:CHAINE)
DEBUT
	
	Allez aux coordonnees xy(10,10)
	ECRIRE a la ligne(joueur, " a gagne la partie.")
	
FINROCEDURE
//----------------------------------------------------------------------------------------------------------------
//BUT génère un message aux joueurs
//ENTREE une chaine
//SORTIE un affichage expliquant que les joueur sont ex aequo
PROCEDURE exaequo()
DEBUT
	
	Allez aux coordonnees xy(10,10)
	ECRIRE a la ligne("ex aequo")
	
FINROCEDURE
//----------------------------------------------------------------------------------------------------------------

//------------------------------------------DEBUT PROGRAMME PRINCIPAL---------------------------------------------
var
	choixX,choixY,nbmanchemax,manchegagne,manchegagne1,manchegagne2,mancheactu,touractu :ENTIER
	nom1,nom2,joueur :CHAINE
	tabcroix,tabrond,tabok :tabforme
	sortie:BOOLEEN
	fichier1 :text
	textedepart,texte,texte2,textefin :CHAINE

DEBUT
	
	reset(tabcroix,tabrond,tabok)
	mancheactu<-0
	manchegagne1<-0
	manchegagne2<-0
	
	affichagedebut()
	
	pseudo12(nom1,nom2)
	joueur<-premier(nom1,nom2)//on choisi qui commence à jouer.
	ECRIRE a la ligne("le premier joueur sera : ",joueur)
	ECRIRE a la ligne(nom1," joue les croix")
	ECRIRE a la ligne(nom2," joue les ronds")

	REPETER						//on demande en combien de manche les joueurs veulent jouer

		ECRIRE a la ligne("en combien de manche voulez-vous jouer ? (nombre impaire)")
		LIRE a la ligne(nbmanchemax)

	JUSQUA nbmanchemax mod 2=1

	manchegagne<- (nbmanchemax+1) div 2	//on donne a une variable le nombre de manche maximum à gagner
	textedepart<-("debut du match: "+ HEURE ACTUELLE)

	ASSIGNER(fichier1,"morpion/morpions.txt")
	REECRIRE(fichier1)
	AJOUTER(fichier1)
	ECRIRE a la ligne(fichier1,textedepart)

//------------------------------------------------BOUCLE DE MANCHE-------------------------------------------------

	REPETER		//initialisation							
		
		touractu<-0
		sortie<-FAUX
		mancheactu<-mancheactu+1
		reset(tabcroix,tabrond,tabok)

		affichegrille(nom1,nom2)
		affichecroix(tabcroix)
		afficherond(tabrond)


//------------------------------------------------BOUCLE DE TOURS-------------------------------------------------

		REPETER
			inc(touractu)

			SI joueur=nom1 ALORS
				tourjeu(choixX,choixY,tabcroix,tabrond,tabok,joueur,nom1,nom2,touractu)
			SINON
				tourjeu(choixX,choixY,tabrond,tabcroix,tabok,joueur,nom1,nom2,touractu)
			FINSI

			SI testvictoire(tabcroix)= VRAI ALORS
				sortie<-VRAI
			FINSI

			SI testvictoire(tabrond)= VRAI ALORS
				sortie<-VRAI
			FINSI

			joueur<-changementjoueur(joueur,nom1,nom2)

		JUSQUA (sortie=VRAI) OU (touractu =9)

//---------------------------------------------FIN BOUCLE DE TOURS-------------------------------------------------

		SI sortie=VRAI ALORS

			SI joueur=nom1 ALORS

				manchegagne2<-manchegagne2+1
				gagnemanche(nom2)
				ECRIRE a la ligne(fichier1,nom2," a gagne la manche ", mancheactu," en ",touractu," tours contre ",nom1,".")
			SINON
				manchegagne1<-manchegagne1+1
				gagnemanche(nom1)
				ECRIRE a la ligne(fichier1,nom1," a gagne la manche ", mancheactu," en ",touractu," tours contre ",nom2,".")
			FINSI
		SINON
			exaequo()
			ECRIRE a la ligne(fichier1,nom1," et ",nom2," ont fait match nul lors de la manche ",mancheactu,".")
		FINSI
	JUSQUA (manchegagne1=manchegagne) OU (manchegagne2=manchegagne) OU (mancheactu=nbmanchemax)

	//--------------------------------------------FIN BOUCLE DE MANCHE-----------------------------------------------

	SI mancheactu= nbmanchemax ALORS

		SI manchegagne1>manchegagne2 ALORS
			gagnepartie(nom1)
		SINON SI manchegagne1<manchegagne2 ALORS
			gagnepartie(nom2)
		SINON
			Allez aux coordonnees xy(10,10)
			ECRIRE a la ligne("EX AEQUO PARFAIT ! Retentez votre coup la prochaine fois !")
		FINSI
	FINSI

	textefin<-("fin du match: "+HEURE ACTUELLE)

	ECRIRE a la ligne(fichier1,textefin)
	FERMER(fichier1)

//--------------------------------------------FIN PROGRAMME PRINCIPAL---------------------------------------------
FINALGO}

program morpion;

uses crt,sysutils;

CONST
	LARGEUR=8;
	LONGUEUR=8;
	DECALX=5;
	DECALY=5;

type
	tabforme = array [1..3,1..3] of integer;

//----------------------------------------------------------------------------------------------------------------
//BUT affiche un petit menu de depart
//ENTREE 
//SORTIE un joli affichage
procedure affichagedebut();
BEGIN
	gotoxy(10,10);
	writeln('JEU DU MORPION');
	delay(1000);
	gotoxy(8,11);
	writeln('appuyez sur entrer');
	readln;
	clrscr;
END;
//----------------------------------------------------------------------------------------------------------------
//BUT afficher la grille de jeu
//ENTREE les noms des joueur
//SORTIE une grille et les noms
procedure affichegrille(nom1:string; nom2:string);
var
	i,j:integer;
	lettre:string;
BEGIN

	textcolor(white);
	gotoxy(1,1);
	writeln(nom1,' joue les croix');
	writeln(nom2,' joue les ronds');

	for i:=1 to 3 do
	BEGIN
		gotoxy(DECALX-1,DECALY-2+(i*3));//affiche les coordonnées de 1 à 3
		write(i);
	END;

	for i:=1 to 3 do					//affiche les coordonnées de A à C
	BEGIN
		gotoxy(DECALX-2+(i*3),DECALY-1);

		case i of
		1: lettre:='A';
		2: lettre:='B';
		3: lettre:='C';
		end;

		write(lettre);
	END;
	
	j:=1;
	
	for i:=1 to LARGEUR do				//affiche les barres horizontales
	BEGIN
		gotoxy(i+DECALX,j+2+DECALY);
		write('-');
		gotoxy(i+DECALX,j+5+DECALY);
		write('-');
	END;

	i:=1;

	for j:=1 to LONGUEUR do				//affiche les barres verticales
	BEGIN
		gotoxy(i+2+DECALX,j+DECALY);
		write('|');
		gotoxy(i+5+DECALX,j+DECALY);
		write('|');
	END;

END;
//----------------------------------------------------------------------------------------------------------------
//BUT affiche les croix sur la grille
//ENTREE le tableau de croix
//SORTIE le tableau affiché
procedure affichecroix(tabformes:tabforme);
var
	i:integer;
BEGIN
	textcolor(red);
	for i:=1 to 9 do							//affiche les croix de 1 à 9
	BEGIN
		case i of
			1:BEGIN
				if tabformes[1,1]=1 then
				BEGIN
					gotoxy(1+DECALX,1+DECALY);
					writeln('\/');
					gotoxy(1+DECALX,2+DECALY);
					write('/\');
				END;
			END;

			2:BEGIN
				if tabformes[1,2]=1 then
				BEGIN
					gotoxy(4+DECALX,1+DECALY);
					writeln('\/');
					gotoxy(4+DECALX,2+DECALY);
					write('/\');
				END;
			END;

			3:BEGIN
				if tabformes[1,3]=1 then
				BEGIN
					gotoxy(7+DECALX,1+DECALY);
					writeln('\/');
					gotoxy(7+DECALX,2+DECALY);
					write('/\');
				END;
			END;

			4:BEGIN
				if tabformes[2,1]=1 then
				BEGIN
					gotoxy(1+DECALX,4+DECALY);
					writeln('\/');
					gotoxy(1+DECALX,5+DECALY);
					write('/\');
				END;
			END;

			5:BEGIN
				if tabformes[2,2]=1 then
				BEGIN
					gotoxy(4+DECALX,4+DECALY);
					writeln('\/');
					gotoxy(4+DECALX,5+DECALY);
					write('/\');
				END;
			END;

			6:BEGIN
				if tabformes[2,3]=1 then
				BEGIN
					gotoxy(7+DECALX,4+DECALY);
					writeln('\/');
					gotoxy(7+DECALX,5+DECALY);
					write('/\');
				END;
			END;

			7:BEGIN
				if tabformes[3,1]=1 then
				BEGIN
					gotoxy(1+DECALX,7+DECALY);
					writeln('\/');
					gotoxy(1+DECALX,8+DECALY);
					write('/\');
				END;
			END;

			8:BEGIN
				if tabformes[3,2]=1 then
				BEGIN
					gotoxy(4+DECALX,7+DECALY);
					writeln('\/');
					gotoxy(4+DECALX,8+DECALY);
					write('/\');
				END;
			END;

			9:BEGIN
				if tabformes[3,3]=1 then
				BEGIN
					gotoxy(7+DECALX,7+DECALY);
					writeln('\/');
					gotoxy(7+DECALX,8+DECALY);
					write('/\');
				END;
			END;
		END;
	END;
END;
//----------------------------------------------------------------------------------------------------------------
//BUT affiche les rond sur la grille
//ENTREE le tableau de ronds
//SORTIE affichage du tableau
procedure afficherond(tabformes:tabforme);
var
	i:integer;
BEGIN
	textcolor(blue);

	for i:=1 to 9 do							//affiche les ronds de 1 à 9
	BEGIN
		
		case i of
			1:BEGIN
				if tabformes[1,1]=1 then
				BEGIN
					gotoxy(1+DECALX,1+DECALY);
					writeln('/\');
					gotoxy(1+DECALX,2+DECALY);
					write('\/');
				END;
			END;

			2:BEGIN
				if tabformes[1,2]=1 then
				BEGIN
					gotoxy(4+DECALX,1+DECALY);
					writeln('/\');
					gotoxy(4+DECALX,2+DECALY);
					write('\/');
				END;
			END;

			3:BEGIN
				if tabformes[1,3]=1 then
				BEGIN
					gotoxy(7+DECALX,1+DECALY);
					writeln('/\');
					gotoxy(7+DECALX,2+DECALY);
					write('\/');
				END;
			END;

			4:BEGIN
				if tabformes[2,1]=1 then
				BEGIN
					gotoxy(1+DECALX,4+DECALY);
					writeln('/\');
					gotoxy(1+DECALX,5+DECALY);
					write('\/');
				END;
			END;

			5:BEGIN
				if tabformes[2,2]=1 then
				BEGIN
					gotoxy(4+DECALX,4+DECALY);
					writeln('/\');
					gotoxy(4+DECALX,5+DECALY);
					write('\/');
				END;
			END;

			6:BEGIN
				if tabformes[2,3]=1 then
				BEGIN
					gotoxy(7+DECALX,4+DECALY);
					writeln('/\');
					gotoxy(7+DECALX,5+DECALY);
					write('\/');
				END;
			END;

			7:BEGIN
				if tabformes[3,1]=1 then
				BEGIN
					gotoxy(1+DECALX,7+DECALY);
					writeln('/\');
					gotoxy(1+DECALX,8+DECALY);
					write('\/');
				END;
			END;

			8:BEGIN
				if tabformes[3,2]=1 then
				BEGIN
					gotoxy(4+DECALX,7+DECALY);
					writeln('/\');
					gotoxy(4+DECALX,8+DECALY);
					write('\/');
				END;
			END;

			9:BEGIN
				if tabformes[3,3]=1 then
				BEGIN
					gotoxy(7+DECALX,7+DECALY);
					writeln('/\');
					gotoxy(7+DECALX,8+DECALY);
					write('\/');
				END;
			END;
		END;
	END;
END;
//----------------------------------------------------------------------------------------------------------------
//BUT teste si le joueur actuel à gagné
//ENTREE le tableau du joueur actuel
//SORTIE un booleen 
function testvictoire(tabformes:tabforme):boolean;
BEGIN
	if (tabformes[1,1]=1) and (tabformes[2,2]=1) and (tabformes[3,3]=1) OR   //diagonale1
	   (tabformes[1,3]=1) and (tabformes[2,2]=1) and (tabformes[3,1]=1) OR   //diagonale2
	   (tabformes[1,1]=1) and (tabformes[1,2]=1) and (tabformes[1,3]=1) OR   //horizontale1
	   (tabformes[2,1]=1) and (tabformes[2,2]=1) and (tabformes[2,3]=1) OR   //horizontale2
	   (tabformes[3,1]=1) and (tabformes[3,2]=1) and (tabformes[3,3]=1) OR   //horizontale3
	   (tabformes[1,1]=1) and (tabformes[2,1]=1) and (tabformes[3,1]=1) OR   //verticale1
	   (tabformes[1,2]=1) and (tabformes[2,2]=1) and (tabformes[3,2]=1) OR   //verticale2
	   (tabformes[1,3]=1) and (tabformes[2,3]=1) and (tabformes[3,3]=1) THEN //verticale3
	   

	   testvictoire:=true
	ELSE
		testvictoire:=false;
END;
//----------------------------------------------------------------------------------------------------------------
//BUT:Enregistrer le nom des joueur.
//ENTREE: Deux chaines de caractères.
//SORTIE: Deux chaines de caractères remplies.
PROCEDURE pseudo12(var nom1:string; var nom2:string);
BEGIN
	REPEAT
	BEGIN
		writeln('JOUEUR 1 ENTREZ VOTRE NOM');
		readln(nom1);
	END;
	UNTIL (length(nom1)>0) AND (length(nom1)<10);

	REPEAT
	BEGIN
		writeln('JOUEUR 2 ENTREZ VOTRE NOM');
		readln(nom2);
	END;
	UNTIL (length(nom2)>0) AND (length(nom2)<10);
END;
//----------------------------------------------------------------------------------------------------------------
//BUT:Choisir un joueur qui jouera en premier au hasard.
//ENTREE:Une chaine de caractère du nom du joueur et du joueur 2.
//SORTIE:Une des deux chaines de caractères précédente.
FUNCTION premier(nom1:string; nom2:string):string;
var
	i:integer;
BEGIN
	i:=random(2)+1;
	if i=1 then
		premier:=nom1
	ELSE
		premier:=nom2;

END;
//----------------------------------------------------------------------------------------------------------------
//BUT changer le nom du joueur
//ENTREE 3 chaines
//SORTIE une chaine éditée
function changementjoueur(joueur:string; nom1:string; nom2:string):string;
BEGIN
	IF joueur= nom1 then 
		changementjoueur:=nom2
	ELSE 
		changementjoueur:=nom1;
END;
//----------------------------------------------------------------------------------------------------------------
//BUT réinitialise les tableaux
//ENTREE 3 tableaux
//SORTIE 3 tableaux réinitialisés
procedure reset(var tabformeC:tabforme; var tabformeR:tabforme; var tabformeG:tabforme);
var
	i,j:integer;

BEGIN

	for i:=1 to 3 do
	BEGIN
		for j:=1 to 3 do
		BEGIN
			tabformeC[i,j]:=0;
			tabformeR[i,j]:=0;
			tabformeG[i,j]:=0;
		END;
	END;
END;
//----------------------------------------------------------------------------------------------------------------
//BUT gère le tour de jeu du joueur actuel
//ENTREE les tableaux de jeu, les noms des joueurs et le choix X et Y
//SORTIE un tour terminé
procedure tourjeu(var choixX:integer; var choixY:integer; var tabformes:tabforme; var tabformes2:tabforme; var tabformesOK:tabforme; 
					joueur:string; nom1:string;nom2:string; mancheactu:integer);
var
	temp:string;
	sortie:boolean;
	total:integer;
BEGIN
	sortie:=false;

REPEAT
	clrscr;

	if joueur=nom1 THEN 			//donne les croix ou les ronds aux joueurs
	BEGIN
		affichecroix(tabformes);
		afficherond(tabformes2);
	END
	ELSE
	BEGIN
		affichecroix(tabformes2);
		afficherond(tabformes);
	END;

	affichegrille(nom1,nom2);
	gotoxy(7+DECALX,LONGUEUR+DECALY+1);
	write('manche : ',mancheactu);
	gotoxy(7+DECALX,LONGUEUR+DECALY+3);

	writeln(joueur,' quelle case verticale choisissez-vous ? (A,B ou C)');

	REPEAT 							//lis la coordonnée X
		gotoxy(7+DECALX,LONGUEUR+DECALY+4);

		readln(temp);
		temp:=lowercase(temp);
	UNTIL (temp='a') or (temp='b')or (temp='c');

	case temp of
		'a': choixX:=1;
		'b': choixX:=2;
		'c': choixX:=3;
	end;

	gotoxy(7+DECALX,LONGUEUR+DECALY+5);

	writeln (joueur,' quelle case horizontale choisissez-vous ? (1,2 ou 3)');

	REPEAT 							//lis la coordonnée Y
		gotoxy(7+DECALX,LONGUEUR+DECALY+6);

		readln(temp);
	UNTIL (temp='1') or (temp='2') or (temp='3');	

	choixY:=strtoint(temp);

	if  (tabformes[choixY,choixX]=0) and (tabformesOK[choixY,choixX]=0) then //test si l'endroit est déjà pris
	BEGIN
			tabformes[choixY,choixX]:=1;
			tabformesOK[choixY,choixX]:=1;
			sortie:=true;
	END
	ELSE
	BEGIN
		gotoxy(7+DECALX,LONGUEUR+DECALY+5);
		writeln(joueur,' la case choisis est deja prise ou n''existe pas');
		delay(1500);
	END;

UNTIL sortie=true;

END;
//----------------------------------------------------------------------------------------------------------------
//BUT génère un message au joueur gagnant
//ENTREE une chaine
//SORTIE un affichage du gagnant de la manche
procedure gagnemanche(joueur:string);
BEGIN
	clrscr;
	gotoxy(10,10);
	writeln(joueur, ' a gagne la manche.');
	delay(1500);
END;
//----------------------------------------------------------------------------------------------------------------
//BUT génère un message au joueur gagnant
//ENTREE une chaine
//SORTIE un affichage du gagnant de la partie
procedure gagnepartie(joueur:string);
BEGIN
	clrscr;
	gotoxy(10,10);
	writeln(joueur, ' a gagne la partie.');
	delay(1500);
END;
//----------------------------------------------------------------------------------------------------------------
//BUT génère un message aux joueurs
//ENTREE une chaine
//SORTIE un affichage expliquant que les joueur sont ex aequo
procedure exaequo();
BEGIN
	clrscr;
	gotoxy(10,10);
	writeln('ex aequo');
	delay(1500);
END;
//----------------------------------------------------------------------------------------------------------------

//------------------------------------------------DEBUT PROGRAMME-------------------------------------------------
var
	choixX,choixY,nbmanchemax,manchegagne,manchegagne1,manchegagne2,mancheactu,touractu :integer;
	nom1,nom2,joueur :string;
	tabcroix,tabrond,tabok :tabforme;
	sortie:boolean;
	fichier1 :text;
	textedepart,texte,texte2,textefin :string;

BEGIN
	clrscr;
	randomize;
	reset(tabcroix,tabrond,tabok);
	mancheactu:=0;
	manchegagne1:=0;
	manchegagne2:=0;
	
	affichagedebut();
	
	pseudo12(nom1,nom2);
	joueur:=premier(nom1,nom2);//on choisi qui commence à jouer.
	writeln('le premier joueur sera : ',joueur);
	writeln(nom1,' joue les croix');
	writeln(nom2,' joue les ronds');

	REPEAT						//on demande en combien de manche les joueurs veulent jouer

		writeln('en combien de manche voulez-vous jouer ? (nombre impaire)');
		readln(nbmanchemax);

	UNTIL nbmanchemax mod 2=1;

	manchegagne:= (nbmanchemax+1) div 2;	//on donne a une variable le nombre de manche maximum à gagner
	textedepart:=('debut du match: '+ timetostr(time));

	assign(fichier1,'morpion/morpions.txt');
	rewrite(fichier1);
	append(fichier1);
	writeln(fichier1,textedepart);

//------------------------------------------------BOUCLE DE MANCHE-------------------------------------------------

	REPEAT		//initialisation							
		
		clrscr;
		
		touractu:=0;
		sortie:=false;
		mancheactu:=mancheactu+1;
		reset(tabcroix,tabrond,tabok);

		affichegrille(nom1,nom2);
		affichecroix(tabcroix);
		afficherond(tabrond);


//------------------------------------------------BOUCLE DE TOURS-------------------------------------------------

		REPEAT
			inc(touractu);

			if joueur=nom1 THEN
				tourjeu(choixX,choixY,tabcroix,tabrond,tabok,joueur,nom1,nom2,touractu)
			ELSE
				tourjeu(choixX,choixY,tabrond,tabcroix,tabok,joueur,nom1,nom2,touractu);

			if testvictoire(tabcroix)= true THEN
				sortie:=true;

			if testvictoire(tabrond)= true THEN
				sortie:=true;

			joueur:=changementjoueur(joueur,nom1,nom2);

		UNTIL (sortie=true) or (touractu =9);

//---------------------------------------------FIN BOUCLE DE TOURS-------------------------------------------------

		if sortie=true then
		BEGIN

			if joueur=nom1 THEN
			BEGIN
				manchegagne2:=manchegagne2+1;
				gagnemanche(nom2);
				writeln(fichier1,nom2,' a gagne la manche ', mancheactu,' en ',touractu,' tours contre ',nom1,'.');
			END
			ELSE
			BEGIN
				manchegagne1:=manchegagne1+1;
				gagnemanche(nom1);
				writeln(fichier1,nom1,' a gagne la manche ', mancheactu,' en ',touractu,' tours contre ',nom2,'.');
			END;
		END
		ELSE
		BEGIN
			exaequo();
			writeln(fichier1,nom1,' et ',nom2,' ont fait match nul lors de la manche ',mancheactu,'.');
		END;
	UNTIL (manchegagne1=manchegagne) or (manchegagne2=manchegagne) or (mancheactu=nbmanchemax);

	//--------------------------------------------FIN BOUCLE DE MANCHE-----------------------------------------------

	if mancheactu= nbmanchemax THEN
	BEGIN
		if manchegagne1>manchegagne2 THEN
		BEGIN
			gagnepartie(nom1);
		END	
		else if manchegagne1<manchegagne2 THEN
		BEGIN
			gagnepartie(nom2);
		END
		ELSE
		BEGIN
			clrscr;
			gotoxy(10,10);
			writeln('EX AEQUO PARFAIT ! Retentez votre coup la prochaine fois !');
			delay(1500);
		END;
	END;

	textefin:=('fin du match: '+timetostr(time));

	writeln(fichier1,textefin);
	close(fichier1);

//-------------------------------------------------FIN PROGRAMME--------------------------------------------------
END.