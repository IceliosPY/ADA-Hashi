pragma Ada_2012;
-- E/S
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Affichage;           use Affichage;
-- TAD
with Grille;      use Grille;
with Ile;         use Ile;
with Pont;        use Pont;
with Orientation; use Orientation;
with CaseHashi;   use CaseHashi;
with TypeCase;    use TypeCase;

package body A_Tester_Grille is

   function ConstruireGrilleTest return Type_Grille is
      G  : Type_Grille;
      Co : Type_Coordonnee;
      C  : Type_CaseHashi;
      I  : Type_Ile;
   begin
      G := ConstruireGrille (5, 5);
      -- 1ère ile
      Co := ConstruireCoordonnees (1, 3);
      C  := ConstruireCase (Co);
      I  := ConstruireIle (2);
      C  := ModifierIle (C, I);
      ModifierCase (G, C);
      -- 2nde ile
      Co := ConstruireCoordonnees (3, 1);
      C  := ConstruireCase (Co);
      I  := ConstruireIle (1);
      C  := ModifierIle (C, I);
      ModifierCase (G, C);
      -- 3ème ile
      Co := ConstruireCoordonnees (3, 3);
      C  := ConstruireCase (Co);
      I  := ConstruireIle (7);
      C  := ModifierIle (C, I);
      ModifierCase (G, C);
      -- 4ème ile
      Co := ConstruireCoordonnees (3, 5);
      C  := ConstruireCase (Co);
      I  := ConstruireIle (2);
      C  := ModifierIle (C, I);
      ModifierCase (G, C);
      -- 5ème ile
      Co := ConstruireCoordonnees (5, 3);
      C  := ConstruireCase (Co);
      I  := ConstruireIle (2);
      C  := ModifierIle (C, I);
      ModifierCase (G, C);
      -- grille complète
      return (G);
   end ConstruireGrilleTest;

   ---------------------
   -- Test_Grille_P01 --
   ---------------------

   function Test_Grille_P01 return Boolean is
      G : Type_Grille;
   begin
      G := ConstruireGrille (3, 5);
      return NbLignes (G) = 3;
   end Test_Grille_P01;

   ---------------------
   -- Test_Grille_P02 --
   ---------------------

   function Test_Grille_P02 return Boolean is
      G : Type_Grille;
   begin
      G := ConstruireGrille (3, 5);
      return NbColonnes (G) = 5;
   end Test_Grille_P02;

   ---------------------
   -- Test_Grille_P03 --
   ---------------------

   function Test_Grille_P03 return Boolean is
      G : Type_Grille;
   begin
      G := ConstruireGrille (3, 5);
      return EstGrilleVide (G);
   end Test_Grille_P03;

   ---------------------
   -- Test_Grille_P04 --
   ---------------------

   function Test_Grille_P04 return Boolean is
      G : Type_Grille;
   begin
      G := ConstruireGrille (3, 5);
      return not EstComplete (G);
   end Test_Grille_P04;

   ----------------------
   -- Test_Grille_P05 --
   ----------------------

   function Test_Grille_P05 return Boolean is
      G : Type_Grille;
   begin
      G := ConstruireGrille (3, 5);
      return NbIle (G) = 0;
   end Test_Grille_P05;

   ---------------------
   -- Test_Grille_P06 --
   ---------------------

   function Test_Grille_P06 return Boolean is
      G : Type_Grille;
   begin
      G := ConstruireGrille (3, 5);
      return NbIleCompletes (G) = 0;
   end Test_Grille_P06;

   ---------------------
   -- Test_Grille_P07 --
   ---------------------

   function Test_Grille_P07 return Boolean is
      G  : Type_Grille;
      Co : Type_Coordonnee;
   begin
      G  := ConstruireGrille (3, 5);
      Co := ConstruireCoordonnees (2, 2);
      return EstMer (ObtenirTypeCase ((ObtenirCase (G, Co))));
   end Test_Grille_P07;

   ---------------------
   -- Test_Grille_P08a --
   ---------------------

   function Test_Grille_P08a return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
   begin
      G  := ConstruireGrille (3, 3);
      Co := ConstruireCoordonnees (2, 2);
      C  := ConstruireCase (Co);
      ModifierCase (G, C);
      return AUnSuivant (G, C, NORD);
   end Test_Grille_P08a;

   ---------------------
   -- Test_Grille_P08b --
   ---------------------

   function Test_Grille_P08b return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
   begin
      G  := ConstruireGrille (3, 3);
      Co := ConstruireCoordonnees (2, 2);
      C  := ConstruireCase (Co);
      ModifierCase (G, C);
      return AUnSuivant (G, C, SUD);
   end Test_Grille_P08b;

   ---------------------
   -- Test_Grille_P08c --
   ---------------------

   function Test_Grille_P08c return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
   begin
      G  := ConstruireGrille (3, 3);
      Co := ConstruireCoordonnees (2, 2);
      C  := ConstruireCase (Co);
      ModifierCase (G, C);
      return AUnSuivant (G, C, EST);
   end Test_Grille_P08c;

   ---------------------
   -- Test_Grille_P08d --
   ---------------------

   function Test_Grille_P08d return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
   begin
      G  := ConstruireGrille (3, 3);
      Co := ConstruireCoordonnees (2, 2);
      C  := ConstruireCase (Co);
      ModifierCase (G, C);
      return AUnSuivant (G, C, OUEST);
   end Test_Grille_P08d;

   ----------------------
   -- Test_Grille_P09a --
   ----------------------

   function Test_Grille_P09a return Boolean is
      G   : Type_Grille;
      C   : Type_CaseHashi;
      S   : Type_CaseHashi;
      Co  : Type_Coordonnee;
      Cos : Type_Coordonnee;
   begin
      G   := ConstruireGrille (3, 3);
      Co  := ConstruireCoordonnees (2, 2);
      C   := ObtenirCase (G, Co);
      S   := ObtenirSuivant (G, C, NORD);
      Cos := ObtenirCoordonnee (S);
      return ObtenirLigne (Cos) = 1 and ObtenirColonne (Cos) = 2;
      --       ObtenirLigne (Cos) = ObtenirLigne (Co) and
      --       ObtenirColonne (Cos) = ObtenirColonne (Co) - 1;
   end Test_Grille_P09a;

   ----------------------
   -- Test_Grille_P09b --
   ----------------------

   function Test_Grille_P09b return Boolean is
      G   : Type_Grille;
      C   : Type_CaseHashi;
      S   : Type_CaseHashi;
      Co  : Type_Coordonnee;
      Cos : Type_Coordonnee;
   begin
      G   := ConstruireGrille (3, 3);
      Co  := ConstruireCoordonnees (2, 2);
      C   := ConstruireCase (Co);
      S   := ObtenirSuivant (G, C, SUD);
      Cos := ObtenirCoordonnee (S);

      return ObtenirLigne (Cos) = 3 and ObtenirColonne (Cos) = 2;
      --        ObtenirLigne (Cos) = ObtenirLigne (Co) and
      --        ObtenirColonne (Cos) = ObtenirColonne (Co) + 1;
   end Test_Grille_P09b;

   ----------------------
   -- Test_Grille_P09c --
   ----------------------

   function Test_Grille_P09c return Boolean is
      G   : Type_Grille;
      C   : Type_CaseHashi;
      S   : Type_CaseHashi;
      Co  : Type_Coordonnee;
      Cos : Type_Coordonnee;
   begin

      G   := ConstruireGrille (3, 3);
      Co  := ConstruireCoordonnees (2, 2);
      C   := ConstruireCase (Co);
      S   := ObtenirSuivant (G, C, EST);
      Cos := ObtenirCoordonnee (S);

      return ObtenirLigne (Cos) = 2 and ObtenirColonne (Cos) = 3;
      --        ObtenirLigne (Cos) = ObtenirLigne (Co) + 1 and
      --        ObtenirColonne (Cos) = ObtenirColonne (Co) ;
   end Test_Grille_P09c;

   ----------------------
   -- Test_Grille_P09d --
   ----------------------

   function Test_Grille_P09d return Boolean is
      G   : Type_Grille;
      C   : Type_CaseHashi;
      S   : Type_CaseHashi;
      Co  : Type_Coordonnee;
      Cos : Type_Coordonnee;
   begin
      G   := ConstruireGrille (3, 3);
      Co  := ConstruireCoordonnees (2, 2);
      C   := ConstruireCase (Co);
      S   := ObtenirSuivant (G, C, OUEST);
      Cos := ObtenirCoordonnee (S);
      return ObtenirLigne (Cos) = 2 and ObtenirColonne (Cos) = 1;
      --        ObtenirLigne (Cos) = ObtenirLigne (Co) - 1 and
      --        ObtenirColonne (Cos) = ObtenirColonne (Co) ;
   end Test_Grille_P09d;

   ---------------------
   -- Test_Grille_P10 --
   ---------------------

   function Test_Grille_P10 return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
   begin

      G  := ConstruireGrille (3, 3);
      Co := ConstruireCoordonnees (2, 2);
      C  := ConstruireCase (Co);
      ModifierCase (G, C);
      return NbLignes (G) = 3;
   end Test_Grille_P10;

   ---------------------
   -- Test_Grille_P11 --
   ---------------------

   function Test_Grille_P11 return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
   begin
      G  := ConstruireGrille (3, 3);
      Co := ConstruireCoordonnees (2, 2);
      C  := ConstruireCase (Co);
      ModifierCase (G, C);
      return NbColonnes (G) = 3;
   end Test_Grille_P11;

   ----------------------
   -- Test_Grille_P12a --
   ----------------------

   function Test_Grille_P12a return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
   begin
      G  := ConstruireGrille (3, 3);
      Co := ConstruireCoordonnees (2, 2);
      C  := ConstruireCase (Co);
      ModifierCase (G, C);
      return EstGrilleVide (G);
   end Test_Grille_P12a;

   ----------------------
   -- Test_Grille_P12b --
   ----------------------

   function Test_Grille_P12b return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
      I  : Type_Ile;
   begin
      G  := ConstruireGrille (3, 3);
      Co := ConstruireCoordonnees (2, 2);
      C  := ConstruireCase (Co);
      I  := ConstruireIle (5);
      C  := ModifierIle (C, I);
      ModifierCase (G, C);
      return not EstGrilleVide (G);
   end Test_Grille_P12b;

   ---------------------
   -- Test_Grille_P13 --
   ---------------------


   function Test_Grille_P13 return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
      I  : Type_Ile;
   begin
      G  := ConstruireGrille (3, 3);
      Co := ConstruireCoordonnees (2, 2);
      C  := ConstruireCase (Co);
      I  := ConstruireIle (1);
      I  := ModifierIle(I,1);
      C  := ModifierIle (C, I);
      ModifierCase (G, C);
      return EstComplete (G);
   end Test_Grille_P13;

   ---------------------
   -- Test_Grille_P14 --
   ---------------------

   function Test_Grille_P14 return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
      I1 : Type_Ile;
      I2 : Type_Ile;
      Nb : Integer;
   begin
      -- construction de la grille
      G := ConstruireGrille (3, 3);
      -- construction de la 1ere ile
      Co := ConstruireCoordonnees (1, 2);
      C  := ConstruireCase (Co);
      I1 := ConstruireIle (2);
      C  := ModifierIle (C, I1);
      ModifierCase (G, C);
      Nb := NbIle (G);
      -- construction de la 2nd ile
      Co := ConstruireCoordonnees (2, 1);
      C  := ConstruireCase (Co);
      I2 := ConstruireIle (1);
      C  := ModifierIle (C, I2);
      ModifierCase (G, C);

      return NbIle (G) = Nb + 1;
   end Test_Grille_P14;

   ----------------------
   -- Test_Grille_P15a --
   ----------------------

   function Test_Grille_P15a return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
      I1 : Type_Ile;
      I2 : Type_Ile;
      Nb : Integer;
   begin

      -- construction de la grille
      G := ConstruireGrille (3, 3);
      -- construction de la 1ere ile
      Co := ConstruireCoordonnees (1, 2);
      C  := ConstruireCase (Co);
      I1 := ConstruireIle (1);
      I1  := ModifierIle(I1,1);
      C  := ModifierIle (C, I1);

      ModifierCase (G, C);

      Nb := NbIleCompletes (G);

      -- construction de la 2nd ile

      Co := ConstruireCoordonnees (2, 1);
      C  := ConstruireCase (Co);
      I2  := ConstruireIle (1);
      --I2  := ModifierIle(I2,1);
      -- Dans la derni�re archive I2 = 1
      C  := ModifierIle (C, I2);

      ModifierCase (G, C);

      return NbIleCompletes (G) = Nb;
   end Test_Grille_P15a;

   ----------------------
   -- Test_Grille_P15b --
   ----------------------

   function Test_Grille_P15b return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
      I1 : Type_Ile;
      I2 : Type_Ile;
      Nb : Integer;
   begin

      -- construction de la grille
      G := ConstruireGrille (3, 3);
      -- construction de la 1ere ile
      Co := ConstruireCoordonnees (1, 2);
      C  := ConstruireCase (Co);
      I1 := ConstruireIle (1);
      I1 := ModifierIle(I1,1);
      C  := ModifierIle (C, I1);
      ModifierCase (G, C);
      Nb := NbIleCompletes (G);
      -- construction de la 2nd ile
      Co := ConstruireCoordonnees (2, 1);
      C  := ConstruireCase (Co);
      I2 := ConstruireIle (1);
      I2 := ModifierIle(I2,1);
      C  := ModifierIle (C, I2);
      ModifierCase (G, C);

      return NbIleCompletes (G) = Nb + 1;
   end Test_Grille_P15b;

   ---------------------
   -- Test_Grille_P16 --
   ---------------------

   function Test_Grille_P16 return Boolean is
      G   : Type_Grille;
      C1  : Type_CaseHashi;
      C2  : Type_CaseHashi;
      Co1 : Type_Coordonnee;
      Co2 : Type_Coordonnee;
      I1  : Type_Ile;
      I2  : Type_Ile;
      Nb  : Integer;
   begin
      -- construction de la grille
      G := ConstruireGrille (3, 3);
      -- construction de la 1ere ile
      Co1 := ConstruireCoordonnees (1, 2);
      C1  := ConstruireCase (Co1);
      I1  := ConstruireIle (1);
      C1  := ModifierIle (C1, I1);
      ModifierCase (G, C1);
      Nb := NbIleCompletes (G);
      -- construction de la 2nd ile
      Co2 := ConstruireCoordonnees (2, 1);
      C2  := ConstruireCase (Co2);
      I2  := ConstruireIle (1);
      I2  := ModifierIle(I2,1);
      C2  := ModifierIle (C2, I2);
      ModifierCase (G, C2);
      return
        ObtenirCase (G, Co1) = C1 and ObtenirCase (G, Co2) = C2 and
        EstMer
          (ObtenirTypeCase (ObtenirCase (G, ConstruireCoordonnees (1, 1))));
   end Test_Grille_P16;

   ----------------------
   -- Test_Grille_P17 --
   ----------------------

   function Test_Grille_P17 return Boolean is
      G   : Type_Grille;
      Co1 : Type_Coordonnee;
      Co7 : Type_Coordonnee;
      C1  : Type_CaseHashi;
      C7  : Type_CaseHashi;
   begin
      -- construction de la grille
      G   := ConstruireGrilleTest;
      Co1 := ConstruireCoordonnees (3, 1);
      C1  := ObtenirCase (G, Co1);
      Co7 := ConstruireCoordonnees (3, 3);
      C7  := ObtenirCase (G, Co7);

      return
        AUnSuivant (G, C1, NORD) and AUnSuivant (G, C1, SUD) and
        AUnSuivant (G, C1, EST) and not AUnSuivant (G, C1, OUEST) and
        AUnSuivant (G, C7, NORD) and AUnSuivant (G, C7, SUD) and
        AUnSuivant (G, C7, EST) and AUnSuivant (G, C7, OUEST);
   end Test_Grille_P17;

   ----------------------
   -- Test_Grille_P18 --
   ----------------------

   function Test_Grille_P18 return Boolean is
      G      : Type_Grille;
      C1     : Type_CaseHashi;
      C7     : Type_CaseHashi;
      Co1    : Type_Coordonnee;
      Co7    : Type_Coordonnee;
      SuccC1 : Type_CaseHashi;
      Succc7 : Type_CaseHashi;
   begin
      -- construction de la grille
      G := ConstruireGrilleTest;
      -- ile 7
      Co7    := ConstruireCoordonnees (3, 3);
      C7     := ObtenirCase (G, Co7);
      Succc7 := ObtenirSuivant (G, C7, OUEST);
      -- île 1
      Co1    := ConstruireCoordonnees (3, 1);
      C1     := ObtenirCase (G, Co1);
      SuccC1 := ObtenirSuivant (G, C1, EST);
      return
        --C7 = SuccSuccC1 and C1 = SuccSuccC7;

        C1 = ObtenirSuivant (G, Succc7, OUEST) and
        C7 = ObtenirSuivant (G, SuccC1, EST);
   end Test_Grille_P18;

   ---------------------------
   -- Test_ile_Exception_1a --
   ---------------------------

   function Test_Ile_Exception_1a return Boolean is
      G : Type_Grille;
   begin
      G := ConstruireGrille (1, 101);
      return False;
   exception
      when TAILLE_INVALIDE =>
         return True;
      when others =>
         return False;
   end Test_Ile_Exception_1a;

   ---------------------------
   -- Test_ile_Exception_1b --
   ---------------------------

   function Test_Ile_Exception_1b return Boolean is
      G : Type_Grille;
   begin
      G := ConstruireGrille (TAILLE_MAX + 1, 10);
      return False;
   exception
      when TAILLE_INVALIDE =>
         return True;
      when others =>
         return False;
   end Test_Ile_Exception_1b;

   ---------------------------
   -- Test_ile_Exception_1c --
   ---------------------------

   function Test_Ile_Exception_1c return Boolean is
      G : Type_Grille;
   begin
      G := ConstruireGrille (101, 1);
      return False;
   exception
      when TAILLE_INVALIDE =>
         return True;
      when others =>
         return False;
   end Test_Ile_Exception_1c;

   ---------------------------
   -- Test_ile_Exception_1d --
   ---------------------------

   function Test_Ile_Exception_1d return Boolean is
      G : Type_Grille;
   begin
      G := ConstruireGrille (10, TAILLE_MAX + 1);
      return False;
   exception
      when TAILLE_INVALIDE =>
         return True;
      when others =>
         return False;
   end Test_Ile_Exception_1d;

   ---------------------------
   -- Test_ile_Exception_2a --
   ---------------------------

   function Test_Ile_Exception_2a return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
   begin
      G  := ConstruireGrilleTest;
      Co := ConstruireCoordonnees (1, 3);
      C  := ObtenirCase (G, Co);
      C  := ObtenirSuivant (G, C, NORD);
      return False;
   exception
      when PAS_DE_SUIVANT =>
         return True;
      when others =>
         return False;
   end Test_Ile_Exception_2a;

   ---------------------------
   -- Test_ile_Exception_2b --
   ---------------------------

   function Test_Ile_Exception_2b return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
   begin
      G  := ConstruireGrilleTest;
      Co := ConstruireCoordonnees (5, 3);
      C  := ObtenirCase (G, Co);
      C  := ObtenirSuivant (G, C, SUD);
      return False;
   exception
      when PAS_DE_SUIVANT =>
         return True;
      when others =>
         return False;
   end Test_Ile_Exception_2b;

   ---------------------------
   -- Test_ile_Exception_2c --
   ---------------------------

   function Test_Ile_Exception_2c return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
   begin
      G  := ConstruireGrilleTest;
      Co := ConstruireCoordonnees (3, 5);
      C  := ObtenirCase (G, Co);
      C  := ObtenirSuivant (G, C, EST);
      return False;
   exception
      when PAS_DE_SUIVANT =>
         return True;
      when others =>
         return False;
   end Test_Ile_Exception_2c;

   ---------------------------
   -- Test_ile_Exception_2a --
   ---------------------------

   function Test_Ile_Exception_2d return Boolean is
      G  : Type_Grille;
      C  : Type_CaseHashi;
      Co : Type_Coordonnee;
   begin
      G  := ConstruireGrilleTest;
      Co := ConstruireCoordonnees (3, 1);
      C  := ObtenirCase (G, Co);
      C  := ObtenirSuivant (G, C, OUEST);
      return False;
   exception
      when PAS_DE_SUIVANT =>
         return True;
      when others =>
         return False;
   end Test_Ile_Exception_2d;

end A_Tester_Grille;
