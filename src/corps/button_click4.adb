with Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with Gtk.Button;  use Gtk.Button;
with Gtk.Label;       use Gtk.Label;
with Run_Tests_Coordonnees;
with Run_Tests_Orientation;
with Run_Tests_Iles;
with Run_Tests_Ponts;
with Run_Tests_Grille;
with run_Tests_TypeCase;
with Run_Tests_CaseHashi;
with Run_Tests_Coordonnees;
with Affichage; use Affichage;
with Grille; use Grille;
with Remplir_Grille_Hashi; use Remplir_Grille_Hashi;
with Resolution_Hashi; use Resolution_Hashi;
with main;
with Gtk.Window; use Gtk.Window;
with Gtk.Box; use Gtk.Box;
with Gtk.Image; use Gtk.Image;
with Gtk.Fixed; use Gtk.Fixed;
with fenetre1; use fenetre1;
with fenetre2; use fenetre2;
with fenetre4; use fenetre4;
with fenetre3; use fenetre3;
with button_click3; use button_click3;
with button_click; use button_click;

package body button_click4 is


     procedure boutonGrille_cliquer_handler(Button : access Gtk_Button_Record'Class) is
      begin
      Win.Hide;
      WinTests.hide;
      WinEquipe.hide;
      WinGrille.Show_All;
      winGrille.Present;
      L4.Boutonretour.On_Clicked(Boutonretour_Cliquer_Handler'Access);
      L4.Button1.On_Clicked(Bouton1_Cliquer_Handler'Access);
      L4.Button2.On_Clicked(Bouton2_Cliquer_Handler'Access);
      L4.Button3.On_Clicked(Bouton3_Cliquer_Handler'Access);
      L4.Button4.On_Clicked(Bouton4_Cliquer_Handler'Access);
      L4.Button5.On_Clicked(Bouton5_Cliquer_Handler'Access);
      L4.Button6.On_Clicked(Bouton6_Cliquer_Handler'Access);
      L4.Button7.On_Clicked(Bouton7_Cliquer_Handler'Access);
      L4.Button8.On_Clicked(Bouton8_Cliquer_Handler'Access);
      end boutonGrille_cliquer_handler;

   procedure Clear_Screen is
      c1 : Integer := 300;
      c2 : Integer := 0;
   begin
      while c2 < c1 loop
         new_line;
         c2 := c2 +1;
      end loop;
      c2 := 0;
   end Clear_Screen;
   procedure test (g : in out Type_Grille; m : in String) is
      Trouve : Boolean;
   begin
      New_Line;
      Put_Line ("******************************************");
      Put_Line (m);
      Put_Line ("******************************************");
      New_Line;
      AfficherGrille (g);
      ResoudreHashi (g, Trouve);
      AfficherResultat(G,Trouve);
      New_Line;
      AfficherGrille (g);
   end test;


    procedure Bouton1_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
   File : File_Type;
   TRACE : Boolean := False;
   V1    : Type_Grille;


   begin
      Clear_Screen;
   -- Utilisez simplement le paramètre g ici pour appeler AfficherGrille
      V1 := Construire_Grille_V1;

   --------------------------------------
   -- On teste les grilles une par une
   --------------------------------------

      -- On les teste une par une

      Test (V1, "***  Hashi très très facile - grille 1 ***");
      Ada.Text_IO.Create (File, Ada.Text_IO.Out_File, "Resultat/grille 1.txt");
      Ada.Text_IO.Put_Line (File, "     1    2    3    4    5  ");
      Ada.Text_IO.Put_Line (File, " 1   .    .    0    .    .  ");
      Ada.Text_IO.Put_Line (File, " 2   .    .   ===   .    .  ");
      Ada.Text_IO.Put_Line (File, " 3   0   ---   0   ===   0  ");
      Ada.Text_IO.Put_Line (File, " 4   .    .   ===   .    .  ");
      Ada.Text_IO.Put_Line (File, " 5   .    .    0    .    .  ");
      Ada.Text_IO.Close (File);
      H1.Win.Show_All;
      H1.ButtonFermer.On_Clicked(BoutonFermer_Cliquer_Handler'Access);
   end Bouton1_Cliquer_Handler;


   procedure Bouton2_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
   File : File_Type;
   TRACE : Boolean := False;
   V2    : Type_Grille;

   begin
      Clear_Screen;
   -- Utilisez simplement le paramètre g ici pour appeler AfficherGrille
      V2 := Construire_Grille_V2;

   --------------------------------------
   -- On teste les grilles une par une
   --------------------------------------

   -- On les teste une par une
      Test (V2, "***  Hashi très facile      - grille 2 ***");
      H2.Win.Show_All;
      H2.ButtonFermer.On_Clicked(BoutonFermer_Cliquer_Handler'Access);
      Ada.Text_IO.Create (File, Ada.Text_IO.Out_File, "Resultat/grille 2.txt");
      Ada.Text_IO.Put_Line (File, "     1    2    3    4    5    6    7  ");
      Ada.Text_IO.Put_Line (File, " 1   .    0   ---  ---   0   ---   0  ");
      Ada.Text_IO.Put_Line (File, " 2   .    .    .    .   ---   .   --- ");
      Ada.Text_IO.Put_Line (File, " 3   0   ---  ---   0   ---   .   --- ");
      Ada.Text_IO.Put_Line (File, " 4  ---   .    .   ===  ---   .   --- ");
      Ada.Text_IO.Put_Line (File, " 5  ---   .    .   ===   0    .   --- ");
      Ada.Text_IO.Put_Line (File, " 6  ---   .    .   ===   .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 7   0   ===  ===   0   ===  ===   0  ");
      Ada.Text_IO.Put_Line (File, " 8  ---   .    .   ===   .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 9  ---   0   ---   0   ---  ---   0  ");
      Ada.Text_IO.Put_Line (File, "10  ---   .    .    .    .    .    .  ");
      Ada.Text_IO.Put_Line (File, "11   0   ---   0   ---  ---   0    .  ");
      Ada.Text_IO.Close (File);
   end Bouton2_Cliquer_Handler;

   procedure Bouton3_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is

   File : File_Type;
   TRACE : Boolean := False;
   V3    : Type_Grille;


   begin
      Clear_Screen;
   -- Utilisez simplement le paramètre g ici pour appeler AfficherGrille
      V3 := Construire_Grille_V3;

   --------------------------------------
   -- On teste les grilles une par une
   --------------------------------------

   -- On les teste une par une
      Test (V3, "***  Hashi facile           - grille 3 ***");
      Ada.Text_IO.Create (File, Ada.Text_IO.Out_File, "Resultat/grille 3.txt");
      Ada.Text_IO.Put_Line (File, "     1    2    3    4    5    6    7    8    9   10   11   12   13   14   15   16   17   18   19 ");
      Ada.Text_IO.Put_Line (File, " 1   .    .    0   ---  ---  ---   0   ---  ---  ---   0   ---  ---  ---   0   ---  ---  ---   0  ");
      Ada.Text_IO.Put_Line (File, " 2   .    .    .    .    .    .    .    .    .    .    .    .    .    .    .    .    .    .   === ");
      Ada.Text_IO.Put_Line (File, " 3   0   ===  ===  ===   0   ===  ===  ===   0   ===  ===  ===  ===  ===  ===  ===   0    .   === ");
      Ada.Text_IO.Put_Line (File, " 4  ---   .    .    .   ===   .    .    .   ===   .    .    .    .    .    .    .   ===   .   === ");
      Ada.Text_IO.Put_Line (File, " 5  ---   .    .    .   ===   .    .    .   ===   .    .    .    0    .    .    .   ===   .    0  ");
      Ada.Text_IO.Put_Line (File, " 6  ---   .    .    .   ===   .    .    .   ===   .    .    .   ---   .    .    .   ===   .   === ");
      Ada.Text_IO.Put_Line (File, " 7   0   ---  ---  ---   0    .    .    .   ===   .    .    .   ---   .    .    .   ===   .   === ");
      Ada.Text_IO.Put_Line (File, " 8  ---   .    .    .   ===   .    .    .   ===   .    .    .   ---   .    .    .   ===   .   === ");
      Ada.Text_IO.Put_Line (File, " 9  ---   .    .    .   ===   .    .    .    0    .    .    .   ---   .    .    .    0    .   === ");
      Ada.Text_IO.Put_Line (File, "10  ---   .    .    .   ===   .    .    .   ---   .    .    .   ---   .    .    .   ===   .   === ");
      Ada.Text_IO.Put_Line (File, "11  ---   .    .    .   ===   .    .    .   ---   .    .    .    0    .    .    .   ===   .    0  ");
      Ada.Text_IO.Put_Line (File, "12  ---   .    .    .   ===   .    .    .   ---   .    .    .   ---   .    .    .   ===   .   --- ");
      Ada.Text_IO.Put_Line (File, "13   0   ===  ===  ===   0    .    .    .   ---   .    .    .   ---   .    .    .   ===   .   --- ");
      Ada.Text_IO.Put_Line (File, "14  ---   .    .    .    .    .    .    .   ---   .    .    .   ---   .    .    .   ===   .   --- ");
      Ada.Text_IO.Put_Line (File, "15  ---   .    0   ===  ===  ===  ===  ===   0    .    .    .    0   ===  ===  ===   0    .   --- ");
      Ada.Text_IO.Put_Line (File, "16  ---   .    .    .    .    .    .    .   ---   .    .    .    .    .    .    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, "17  ---   .    .    .    .    .    .    .   ---   .    .    .    .    .    .    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, "18  ---   .    .    .    .    .    .    .   ---   .    .    .    .    .    .    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, "19   0   ===  ===  ===   0   ===  ===  ===   0   ---  ---  ---  ---  ---   0   ---  ---  ---   0  ");
      ada.Text_IO.Close(File);
      H3.Win.Show_All;
      H3.ButtonFermer.On_Clicked(BoutonFermer_Cliquer_Handler'Access);
   end Bouton3_Cliquer_Handler;


    procedure Bouton4_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
   File : File_Type;
   TRACE : Boolean := False;
   V4    : Type_Grille;

   begin
      Clear_Screen;
   -- Utilisez simplement le paramètre g ici pour appeler AfficherGrille
      V4 := Construire_Grille_V4;

   --------------------------------------
   -- On teste les grilles une par une
   --------------------------------------

   -- On les teste une par une
      Test (V4, "***  Hashi moins facile     - grille 4 ***");
      H4.Win.Show_All;
      H4.ButtonFermer.On_Clicked(BoutonFermer_Cliquer_Handler'Access);
      Ada.Text_IO.Create (File, Ada.Text_IO.Out_File, "Resultat/grille 4.txt");
      Ada.Text_IO.Put_Line (File, "     1    2    3    4    5    6    7    8    9   10   11   12   13 ");
      Ada.Text_IO.Put_Line (File, " 1   0   ---  ---  ---   0   ---  ---  ---  ---  ---   0    .    .  ");
      Ada.Text_IO.Put_Line (File, " 3  ---   .    0   ===  ===  ===  ===  ===   0   ---  ---  ---   0   ");
      Ada.Text_IO.Put_Line (File, " 4  ---   .    .    .    .    .    .    .   ===   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 5   0   ---  ---  ---  ---  ---   0    .   ===   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 6  ---   .    .    .    .    .   ===   .   ===   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 7  ---   .    .    .    0    .   ===   .    0   ===  ===  ===   0 ");
      Ada.Text_IO.Put_Line (File, " 8  ---   .    .    .   ---   .   ===   .   ---   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 9  ---   .    .    .   ---   .    0    .   ---   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, "10  ---   .    .    .   ---   .   ---   .   ---   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, "11   0   ---  ---  ---   0    .   ---   .    0    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, "12   .    .    .    .    .    .   ---   .    .    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 13   .    .    0   ---  ---  ---   0   ---  ---  ---  ---  ---   0 ");
      Ada.Text_IO.Close (File);
   end Bouton4_Cliquer_Handler;



     procedure Bouton5_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      File : File_Type;
   TRACE : Boolean := False;
   V5    : Type_Grille;


   begin
      Clear_Screen;
   -- Utilisez simplement le paramètre g ici pour appeler AfficherGrille
      V5 := Construire_Grille_V5;

   --------------------------------------
   -- On teste les grilles une par une
   --------------------------------------

   -- On les teste une par une
      Test (V5, "***  Hashi moyen            - grille 5 ***");
      H5.Win.Show_All;
      H5.ButtonFermer.On_Clicked(BoutonFermer_Cliquer_Handler'Access);
      Ada.Text_IO.Create (File, Ada.Text_IO.Out_File, "Resultat/grille 5.txt");
      Ada.Text_IO.Put_Line (File, "     1    2    3    4    5    6    7    8    9   10   11  ");
      Ada.Text_IO.Put_Line (File, " 1   .    .    0   ---  ---  ---   0    .    .    .    0  ");
      Ada.Text_IO.Put_Line (File, " 2   .    .   ---   .    .    .   ---   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 3   0    .   ---   .    0   ===   0   ===  ===  ===   0  ");
      Ada.Text_IO.Put_Line (File, " 4  ===   .   ---   .   ===   .   ---   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 5  ===   .    0    .   ===   .   ---   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 6  ===   .   ---   .   ===   .   ---   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 7   0    .   ---   .    0   ---   0    .    0    .   --- ");
      Ada.Text_IO.Put_Line (File, " 8  ---   .   ---   .   ---   .    .    .   ===   .   --- ");
      Ada.Text_IO.Put_Line (File, " 9  ---   .    0    .   ---   .    .    .   ===   .    0  ");
      Ada.Text_IO.Put_Line (File, "10  ---   .    .    .   ---   .    .    .   ===   .    .  ");
      Ada.Text_IO.Put_Line (File, "11   0   ---  ---  ---   0   ---  ---  ---   0    .    .  ");
      ada.Text_IO.Close(File);
   end Bouton5_Cliquer_Handler;



   procedure Bouton6_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      File : File_Type;
   TRACE : Boolean := False;
   V6    : Type_Grille;


   begin
      Clear_Screen;
   -- Utilisez simplement le paramètre g ici pour appeler AfficherGrille
      V6 := Construire_Grille_V6;

   --------------------------------------
   -- On teste les grilles une par une
   --------------------------------------

   -- On les teste une par une
      Test (V6, "***  Hashi dur              - grille 6 ***");
      H6.Win.Show_All;
      H6.ButtonFermer.On_Clicked(BoutonFermer_Cliquer_Handler'Access);
      Ada.Text_IO.Create (File, Ada.Text_IO.Out_File, "Resultat/grille 6.txt");
      Ada.Text_IO.Put_Line (File, "    1    2    3    4    5    6    7    8    9   10   11   12   13 ");
      Ada.Text_IO.Put_Line (File, " 1   0   ---  ---  ---  ---  ---   0   ---  ---  ---   0    .    .  ");
      Ada.Text_IO.Put_Line (File, " 2  ===   .    .    .    .    .    .    .    .    .    .    .    .  ");
      Ada.Text_IO.Put_Line (File, " 3  ===   .    .    .    0   ===  ===  ===   0   ===  ===  ===   0  ");
      Ada.Text_IO.Put_Line (File, " 4  ===   .    .    .   ---   .    .    .   ===   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 5   0    .    .    .    0   ---  ---  ---   0   ---  ---  ---   0  ");
      Ada.Text_IO.Put_Line (File, " 6  ---   .    .    .   ---   .    .    .   ---   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 7  ---   .    .    .   ---   .    0    .   ---   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 8  ---   .    .    .   ---   .   ---   .   ---   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 9   0   ---  ---  ---   0    .   ---   .    0    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, "10   .    .    .    .    .    .   ---   .    .    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, "11   .    .    0   ---  ---  ---   0   ---  ---  ---  ---  ---   0  ");
      ada.Text_IO.Close(File);
   end Bouton6_Cliquer_Handler;

     procedure Bouton7_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      File : File_Type;
   TRACE : Boolean := False;
   V7    : Type_Grille;


   begin
      Clear_Screen;
   -- Utilisez simplement le paramètre g ici pour appeler AfficherGrille
      V7 := Construire_Grille_V7;

   --------------------------------------
   -- On teste les grilles une par une
   --------------------------------------

   -- On les teste une par une
      Test (V7, "***  Hashi très dur         - grille 7 ***");
      H7.Win.Show_All;
      H7.ButtonFermer.On_Clicked(BoutonFermer_Cliquer_Handler'Access);
      Ada.Text_IO.Create (File, Ada.Text_IO.Out_File, "Resultat/grille 7.txt");
      Ada.Text_IO.Put_Line (File, "       1    2    3    4    5    6    7    8    9   10   11   12   13 ");
      Ada.Text_IO.Put_Line (File, " 1   0   ---  ---  ---  ---  ---   0    .    .    .    0    .    .  ");
      Ada.Text_IO.Put_Line (File, " 2  ---   .    .    .    .    .   ---   .    .    .   ---   .    .  ");
      Ada.Text_IO.Put_Line (File, " 3  ---   .    .    .    .    .   ---   .    .    .   ---   .    0  ");
      Ada.Text_IO.Put_Line (File, " 4  ---   .    .    .    .    .   ---   .    .    .   ---   .   --- ");
      Ada.Text_IO.Put_Line (File, " 5  ---   .    0   ---  ---  ---   0   ---  ---  ---   0    .   --- ");
      Ada.Text_IO.Put_Line (File, " 6  ---   .    .    .    .    .   ---   .    .    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 7   0   ===  ===  ===   0    .   ---   .    0   ---  ---  ---   0  ");
      Ada.Text_IO.Put_Line (File, " 8  ---   .    .    .    .    .   ---   .    .    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 9  ---   .    0   ===  ===  ===   0   ---  ---  ---   0    .   --- ");
      Ada.Text_IO.Put_Line (File, "10  ---   .   ---   .    .    .   ===   .    .    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, "11   0    .   ---   .    .    .   ===   .    .    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, "12   .    .   ---   .    .    .   ===   .    .    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, "13   .    .    0   ---  ---  ---   0   ---  ---  ---  ---  ---   0  ");
      ada.Text_IO.Close(File);
   end Bouton7_Cliquer_Handler;

   procedure Bouton8_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is

   TRACE : Boolean := False;
      V8    : Type_Grille;
      File : File_Type;


   begin
      Clear_Screen;
   -- Utilisez simplement le paramètre g ici pour appeler AfficherGrille
      V8 := Construire_Grille_V8;

   --------------------------------------
   -- On teste les grilles une par une
   --------------------------------------

   -- On les teste une par une

      Test(V8, "***  Hashi super dur        - grille 8 ***");
      H8.Win.Show_All;
      H8.ButtonFermer.On_Clicked(BoutonFermer_Cliquer_Handler'Access);
      Ada.Text_IO.Create (File, Ada.Text_IO.Out_File, "Resultat/grille 8.txt");
      Ada.Text_IO.Put_Line (File, "    1    2    3    4    5    6    7    8    9   10   11   12   13 ");
      Ada.Text_IO.Put_Line (File, " 1   0    .    .    .    0   ---  ---  ---  ---  ---   0    .    .  ");
      Ada.Text_IO.Put_Line (File, " 2  ---   .    .    .   ---   .    .    .    .    .    .    .    .  ");
      Ada.Text_IO.Put_Line (File, " 3  ---   .    .    .   ---   .    0   ---  ---  ---  ---  ---   0  ");
      Ada.Text_IO.Put_Line (File, " 4  ---   .    .    .   ---   .    .    .    .    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 5   0   ---  ---  ---   0   ---  ---  ---   0    .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 6  ===   .    .    .   ---   .    .    .   ---   .    .    .   --- ");
      Ada.Text_IO.Put_Line (File, " 7  ===   .    0    .   ---   .    .    .    0   ===  ===  ===   0  ");
      Ada.Text_IO.Put_Line (File, " 8  ===   .   ---   .   ---   .    .    .    .    .    .    .    .  ");
      Ada.Text_IO.Put_Line (File, " 9   0    .   ---   .    0   ---  ---  ---  ---  ---   0    .    .  ");
      Ada.Text_IO.Put_Line (File, "10   .    .   ---   .    .    .    .    .    .    .    .    .    .  ");
      Ada.Text_IO.Put_Line (File, "11   .    .    0   ---  ---  ---   0   ===  ===  ===  ===  ===   0  ");
      ada.Text_IO.Close(File);
   end Bouton8_Cliquer_Handler;



end button_click4;
