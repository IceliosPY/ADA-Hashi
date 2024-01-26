pragma Ada_2012;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


package body Resolution_Hashi is

   ---------------------------
   -- rechercherUneIleCible --
   ---------------------------

   procedure RechercherUneIleCible
     (G      : in Type_Grille; C : in Type_CaseHashi; O : in Type_Orientation;
      Trouve :    out Boolean; Ile : out Type_CaseHashi)
   is
      Case_Hashi : Type_CaseHashi := C;
   begin

      Trouve := False;
      if not EstIle(ObtenirTypeCase(C)) then
         raise N_EST_PAS_UNE_ILE;
      end if;

      while AUnSuivant(G,Case_Hashi,O) loop

         if EstPont(ObtenirTypeCase(ObtenirSuivant(G,Case_Hashi,O))) then
            Case_Hashi := ObtenirSuivant(G,Case_Hashi,O);

            if ObtenirValeur(ObtenirPont(Case_Hashi)) = 2 then


               Trouve := False;

               exit;
            end if;
            if AUnSuivant(G,Case_Hashi,O) and then Estmer(ObtenirTypeCase(ObtenirSuivant(G,Case_Hashi,O))) then
               Trouve := False;
               exit;
            end if;
         elsif Estile(ObtenirTypeCase(ObtenirSuivant(G,Case_Hashi,O))) then

            if EstIleComplete(ObtenirIle(ObtenirSuivant(G,Case_Hashi,O))) then

               Trouve := False;
               exit;
            else

               Trouve := True;
               Ile :=ObtenirSuivant(G,Case_Hashi,O);
               exit;
            end if;
         else


            Case_Hashi := ObtenirSuivant(G,Case_Hashi,O);
         end if;


      end loop;

   end RechercherUneIleCible;

   ----------------------------------
   -- construireTableauSuccesseurs --
   ----------------------------------

   procedure ConstruireTableauSuccesseurs
     (G : in     Type_Grille; C : Type_CaseHashi; S : out Type_Tab_Successeurs;
      NbPonts :    out Integer; NbNoeuds : out Integer)
   is
      Nombre_Pont : Integer;
      Nombre_Noeud : Integer;
      Trouver : Boolean;
      Mer_Coord: Type_Coordonnee;
   begin
      Mer_Coord := ConstruireCoordonnees(0,0);
      Nombre_Noeud := 0;
      Nombre_Pont := 0;



      RechercherUneIleCible(G,C,NORD,Trouver,S.NORD);

      if Trouver then

         Nombre_Noeud := Nombre_Noeud + 1;
         if Obtenirvaleur(Obtenirile(S.NORD)) = 1 or Obtenirvaleur(Obtenirile(C)) = 1 then
            Nombre_Pont := Nombre_Pont + 1;
         else
            Nombre_Pont := Nombre_Pont + 2;
         end if;
      else
         S.NORD:=Construirecase(Mer_Coord);
      end if;



      RechercherUneIleCible(G,C,SUD,Trouver,S.SUD);
      if Trouver then

         Nombre_Noeud := Nombre_Noeud + 1;
         if Obtenirvaleur(Obtenirile(S.SUD)) = 1 or Obtenirvaleur(Obtenirile(C)) = 1 then
            Nombre_Pont := Nombre_Pont + 1;
         else

            Nombre_Pont := Nombre_Pont + 2;
         end if;
      else
         S.SUD:=Construirecase(Mer_Coord);
      end if;


      RechercherUneIleCible(G,C,EST,Trouver,S.EST);
      if Trouver then


         Nombre_Noeud := Nombre_Noeud + 1;
         if Obtenirvaleur(Obtenirile(S.EST)) = 1 or Obtenirvaleur(Obtenirile(C)) = 1 then
            Nombre_Pont := Nombre_Pont + 1;
         else

            Nombre_Pont := Nombre_Pont + 2;
         end if;
      else
         S.EST:=Construirecase(Mer_Coord);
      end if;


      RechercherUneIleCible(G,C,OUEST,Trouver,S.OUEST);
      if Trouver then

         Nombre_Noeud := Nombre_Noeud + 1;
         if Obtenirvaleur(Obtenirile(S.OUEST)) = 1 or Obtenirvaleur(Obtenirile(C)) = 1 then
            Nombre_Pont := Nombre_Pont + 1;
         else
            Nombre_Pont := Nombre_Pont + 2;
         end if;
      else
         S.OUEST:=Construirecase(Mer_Coord);
      end if;


      Nbponts := Nombre_Pont;
      NbNoeuds := Nombre_Noeud;
   end ConstruireTableauSuccesseurs;

   ------------------------
   -- construireLeChemin --
   ------------------------

   procedure ConstruireLeChemin
     (G     : in out Type_Grille; Source : in out Type_CaseHashi;
      Cible : in out Type_CaseHashi; Pont : in Type_Pont;
      O     : in     Type_Orientation)
   is
   begin

      if ValeurOrientation(O) mod 2 = 0 then

         if ValeurOrientation(O) < 0 then
            for J in 1+ObtenirColonne(Obtenircoordonnee(Source))..ObtenirColonne(Obtenircoordonnee(Cible))-1 loop

               ModifierCase(G,ModifierPont(Obtenircase(G,ConstruireCoordonnees(Obtenirligne(Obtenircoordonnee(Source)),J)),Pont));

            end loop;
         else

            for J in 1+ObtenirColonne(Obtenircoordonnee(Cible))..ObtenirColonne(Obtenircoordonnee(Source))-1 loop


               ModifierCase(G,ModifierPont(Obtenircase(G,ConstruireCoordonnees(Obtenirligne(Obtenircoordonnee(Source)),J)),Pont));

            end loop;

         end if;

      else

         if ValeurOrientation(O) > 0 then

            for I in 1+Obtenirligne(Obtenircoordonnee(Source))..Obtenirligne(Obtenircoordonnee(Cible))-1 loop

               ModifierCase(G,ModifierPont(Obtenircase(G,ConstruireCoordonnees(I,ObtenirColonne(Obtenircoordonnee(Source)))),Pont));


            end loop;
         else

            for I in 1+Obtenirligne(Obtenircoordonnee(Cible))..Obtenirligne(Obtenircoordonnee(Source))-1 loop

               ModifierCase(G,ModifierPont(Obtenircase(G,ConstruireCoordonnees(I,ObtenirColonne(Obtenircoordonnee(Source)))),Pont));

            end loop;
         end if;
      end if;

   end ConstruireLeChemin;

   -------------------
   -- ResoudreHashi --
   -------------------

   procedure ResoudreHashi (G : in out Type_Grille; Trouve : out Boolean) is
      Compteur_Pont : Integer;
      Compteur_Noeud : Integer;
      C : Type_CaseHashi;
      S : Type_Tab_Successeurs;
      Ile : Type_Ile;
      Ile_Principal : Type_Ile;
      Compteur : Integer := 0;
      Grille_Comp : Type_Grille;
      Possible : Boolean;
   begin
      Trouve := False;
      Possible := False;
      Grille_Comp := G;
      while not Estcomplete(G) and Compteur < 200 loop
         for I in 1..Nblignes(G) loop
            for J in 1..NbColonnes(G) loop

               if Estile(ObtenirTypeCase(Obtenircase(G,ConstruireCoordonnees(I,J)))) and then not EstIleComplete(Obtenirile(Obtenircase(G,ConstruireCoordonnees(I,J)))) then
                  C :=Obtenircase(G,ConstruireCoordonnees(I,J));

                  ConstruireTableauSuccesseurs(G,C,S,Compteur_Pont,Compteur_Noeud);









                  if Compteur_Pont = Obtenirvaleur(ObtenirIle(C)) then


                     Ile_Principal := Construireile(Obtenirvaleur(ObtenirIle(C)));





                     -- NORD
                     if EstIle(ObtenirTypeCase(S.NORD)) then

                        Ile := Construireile(Obtenirvaleur(ObtenirIle(S.NORD)));
                        if Obtenirvaleur(Obtenirile(S.NORD)) = 1 or Obtenirvaleur(Obtenirile(C)) = 1 then


                           Ile:=Modifierile(Ile,1);
                           Ile_Principal:=Modifierile(Ile_Principal,1);
                           S.NORD := ModifierIle(S.NORD,Ile);

                           Construirelechemin(G,C,S.NORD,UN,NORD);

                        else


                           Ile:=Modifierile(Ile,2);
                           Ile_Principal:=Modifierile(Ile_Principal,2);
                           S.NORD := ModifierIle(S.NORD,Ile);

                           Construirelechemin(G,C,S.NORD,DEUX,NORD);
                        end if;
                        Modifiercase(G,S.NORD);
                     end if;

                     -- SUD
                     if EstIle(ObtenirTypeCase(S.SUD)) then

                        Ile := Construireile(Obtenirvaleur(ObtenirIle(S.SUD)));
                        if Obtenirvaleur(Obtenirile(S.SUD)) = 1 or Obtenirvaleur(Obtenirile(C)) = 1 then

                           Ile:=Modifierile(Ile,1);
                           Ile_Principal:=Modifierile(Ile_Principal,1);
                           S.SUD := ModifierIle(S.SUD,Ile);
                           Construirelechemin(G,C,S.SUD,UN,SUD);
                        else


                           Ile:=Modifierile(Ile,2);
                           Ile_Principal:=Modifierile(Ile_Principal,2);
                           S.SUD := ModifierIle(S.SUD,Ile);
                           Construirelechemin(G,C,S.SUD,DEUX,SUD);

                        end if;

                        Modifiercase(G,S.SUD);
                     end if;

                     -- EST
                     if EstIle(ObtenirTypeCase(S.EST)) then

                        Ile := Construireile(Obtenirvaleur(ObtenirIle(S.EST)));

                        if Obtenirvaleur(Obtenirile(S.EST)) = 1 or Obtenirvaleur(Obtenirile(C)) = 1 then



                           Ile:=Modifierile(Ile,1);


                           Ile_Principal:=Modifierile(Ile_Principal,1);
                           S.EST := ModifierIle(S.EST,Ile);

                           Construirelechemin(G,C,S.EST,UN,EST);
                        else


                           Ile:=Modifierile(Ile,2);

                           Ile_Principal:=Modifierile(Ile_Principal,2);

                           S.EST := ModifierIle(S.EST,Ile);

                           Construirelechemin(G,C,S.EST,DEUX,EST);
                        end if;
                        Modifiercase(G,S.EST);
                     end if;

                     -- OUEST
                     if EstIle(ObtenirTypeCase(S.OUEST)) then
                        Ile := Construireile(Obtenirvaleur(ObtenirIle(S.OUEST)));
                        if Obtenirvaleur(Obtenirile(S.OUEST)) = 1 or Obtenirvaleur(Obtenirile(C)) = 1 then

                           Ile:=Modifierile(Ile,1);
                           Ile_Principal:=Modifierile(Ile_Principal,1);
                           S.OUEST := ModifierIle(S.OUEST,Ile);
                           Construirelechemin(G,C,S.OUEST,UN,OUEST);
                        else

                           Ile:=Modifierile(Ile,2);
                           Ile_Principal:=Modifierile(Ile_Principal,2);
                           S.OUEST := ModifierIle(S.OUEST,Ile);
                           Construirelechemin(G,C,S.OUEST,DEUX,OUEST);
                        end if;
                        Modifiercase(G,S.OUEST);
                     end if;

                     C :=ModifierIle(C,Ile_Principal);
                     Modifiercase(G,C);

                  elsif Obtenirvaleur(Obtenirile(C))+1 = Compteur_Noeud*2 or (Obtenirvaleur(Obtenirile(C))+1 = Compteur_Pont and Obtenirvaleur(Obtenirile(C)) = Compteur_Noeud and Possible) then

                     Ile_Principal := Construireile(Obtenirvaleur(ObtenirIle(C)));





                     -- NORD
                     if EstIle(ObtenirTypeCase(S.NORD)) then

                        Ile := Construireile(Obtenirvaleur(ObtenirIle(S.NORD)));



                        Ile:=Modifierile(Ile,1);
                        Ile_Principal:=Modifierile(Ile_Principal,1);
                        S.NORD := ModifierIle(S.NORD,Ile);

                        Construirelechemin(G,C,S.NORD,UN,NORD);



                        Modifiercase(G,S.NORD);
                     end if;

                     -- SUD
                     if EstIle(ObtenirTypeCase(S.SUD)) then
                        Ile := Construireile(Obtenirvaleur(ObtenirIle(S.SUD)));


                        Ile:=Modifierile(Ile,1);
                        Ile_Principal:=Modifierile(Ile_Principal,1);
                        S.SUD := ModifierIle(S.SUD,Ile);
                        Construirelechemin(G,C,S.SUD,UN,SUD);
                        Modifiercase(G,S.SUD);

                     end if;

                     -- EST
                     if EstIle(ObtenirTypeCase(S.EST)) then

                        Ile := Construireile(Obtenirvaleur(ObtenirIle(S.EST)));




                        Ile:=Modifierile(Ile,1);


                        Ile_Principal:=Modifierile(Ile_Principal,1);
                        S.EST := ModifierIle(S.EST,Ile);

                        Construirelechemin(G,C,S.EST,UN,EST);

                        Modifiercase(G,S.EST);
                     end if;

                     -- OUEST
                     if EstIle(ObtenirTypeCase(S.OUEST)) then
                        Ile := Construireile(Obtenirvaleur(ObtenirIle(S.OUEST)));

                        Ile:=Modifierile(Ile,1);
                        Ile_Principal:=Modifierile(Ile_Principal,1);
                        S.OUEST := ModifierIle(S.OUEST,Ile);
                        Construirelechemin(G,C,S.OUEST,UN,OUEST);

                        Modifiercase(G,S.OUEST);
                     end if;

                     C :=ModifierIle(C,Ile_Principal);
                     Modifiercase(G,C);


                  end if;

               end if;

            end loop;
         end loop;
         if Grille_Comp = G then
            Possible := True;
         else
            Possible := False;
         end if;
         Grille_Comp := G;
         Compteur := Compteur + 1;
      end loop;
      if EstComplete(G) then
         Trouve := True;
      end if;
   end ResoudreHashi;

   ------------------
   -- Pont_Partout --
   ------------------

   procedure Pont_Partout (G : in out Type_Grille; C : in out Type_CaseHashi; S : in out Type_Tab_Successeurs) is
      Ile : Type_Ile;
   begin
      Ile := Construireile(Obtenirvaleur(ObtenirIle(C)));
      Ile:=Modifierile(Ile,0);
      C :=ModifierIle(C,Ile);

      -- NORD
      if EstIle(ObtenirTypeCase(S.NORD)) then
         if Obtenirvaleur(Obtenirile(S.NORD)) = 1 then
            Ile := Construireile(Obtenirvaleur(ObtenirIle(S.NORD)));
            Ile:=Modifierile(Ile,Obtenirvaleur(Ile)-1);
            S.NORD := ModifierIle(S.NORD,Ile);
            Construirelechemin(G,C,S.NORD,UN,NORD);
         else
            Ile := Construireile(Obtenirvaleur(ObtenirIle(S.NORD)));
            Ile:=Modifierile(Ile,Obtenirvaleur(Ile)-2);
            S.NORD := ModifierIle(S.NORD,Ile);
            Construirelechemin(G,C,S.NORD,DEUX,NORD);
         end if;
      end if;

      -- SUD
      if EstIle(ObtenirTypeCase(S.SUD)) then
         if Obtenirvaleur(Obtenirile(S.SUD)) = 1 then
            Ile := Construireile(Obtenirvaleur(ObtenirIle(S.SUD)));
            Ile:=Modifierile(Ile,Obtenirvaleur(Ile)-1);
            S.SUD := ModifierIle(S.SUD,Ile);
            Construirelechemin(G,C,S.SUD,UN,SUD);
         else
            Ile := Construireile(Obtenirvaleur(ObtenirIle(S.SUD)));
            Ile:=Modifierile(Ile,Obtenirvaleur(Ile)-2);
            S.SUD := ModifierIle(S.SUD,Ile);
            Construirelechemin(G,C,S.SUD,DEUX,SUD);
         end if;
      end if;

      -- EST
      if EstIle(ObtenirTypeCase(S.EST)) then
         if Obtenirvaleur(Obtenirile(S.EST)) = 1 then
            Ile := Construireile(Obtenirvaleur(ObtenirIle(S.EST)));
            Ile:=Modifierile(Ile,Obtenirvaleur(Ile)-1);
            S.SUD := ModifierIle(S.EST,Ile);
            Construirelechemin(G,C,S.EST,UN,EST);
         else
            Ile := Construireile(Obtenirvaleur(ObtenirIle(S.EST)));
            Ile:=Modifierile(Ile,Obtenirvaleur(Ile)-2);
            S.EST := ModifierIle(S.EST,Ile);
            Construirelechemin(G,C,S.EST,DEUX,EST);
         end if;
      end if;

      -- OUEST
      if EstIle(ObtenirTypeCase(S.OUEST)) then
         if Obtenirvaleur(Obtenirile(S.OUEST)) = 1 then
            Ile := Construireile(Obtenirvaleur(ObtenirIle(S.OUEST)));
            Ile:=Modifierile(Ile,Obtenirvaleur(Ile)-1);
            S.SUD := ModifierIle(S.OUEST,Ile);
            Construirelechemin(G,C,S.OUEST,UN,OUEST);
         else
            Ile := Construireile(Obtenirvaleur(ObtenirIle(S.OUEST)));
            Ile:=Modifierile(Ile,Obtenirvaleur(Ile)-2);
            S.OUEST := ModifierIle(S.OUEST,Ile);
            Construirelechemin(G,C,S.OUEST,DEUX,OUEST);
         end if;
      end if;
   end Pont_Partout;

end Resolution_Hashi;
