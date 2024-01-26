with Affichage; use Affichage;
with Run_Tests_Coordonnees;
with Run_Tests_Orientation;
with Run_Tests_Iles;
with Run_Tests_Ponts;
with Run_Tests_Grille;
with run_Tests_TypeCase;
with Run_Tests_CaseHashi;
with tests_Resolution_Hashi;
with Resolution_Hashi;
with Grille; use Grille;
with Ada.Text_IO; use Ada.Text_IO;
with Gtk.Main;
with Gtk.Window; use Gtk.Window;
with Gtk.Button; use Gtk.Button;
with gtk.Builder; use gtk.Builder;
with Gdk.Event;       use Gdk.Event;
with Gtk.Label; use Gtk.Label;
with Gtk.Widget; use Gtk.Widget;
with Gtk.Image;  use Gtk.Image;
with Gtk.Container; use Gtk.Container;
with button_click;    use button_click;
with Gtk.Box; use Gtk.Box; use Gtk.Box;
with Ada.Command_Line;
with Remplir_Grille_Hashi; use Remplir_Grille_Hashi;
with button_click; use button_click;
with button_click2; use button_click2;
with Glib; use Glib;
with Gtk.Builder; use Gtk.Builder;
with Gtk.Fixed; use Gtk.Fixed;
with fenetre1; use fenetre1;

package body fenetre3 is



   procedure CreerBoiteEquipe(Lien_Equipe : in out string) is
   Fixed : Gtk_Fixed;
   begin
   -- Initialisation de Gtk
   Gtk.Main.Init;

   -- CrÈation de la fenÍtre
   Gtk_New (WinEquipe);
   Set_Title (WinEquipe, "Hashi- S102 - ...");
   Set_Default_Size (WinEquipe, 700, 337);
      Set_Resizable (WinEquipe, False);

   -- CrÈer un conteneur GtkFixed
   Gtk_New (Fixed);
   Add (WinEquipe, Fixed);

   -- CrÈer et ajouter l'image au conteneur Fixed
   Image := Gtk_Image_New_From_File (Lien_Equipe); -- Charger l'image
   Put (Fixed, Image, 0, 0); -- Positionner l'image ‡ (0, 0) dans Fixed

   -- CrÈer et ajouter la boÓte principale au conteneur Fixed
   Gtk_New_Vbox (Main_Box);
      Put (Fixed, Main_Box, 0, 120); -- Positionner Main_Box au mÍme endroit

   end CreerBoiteEquipe;

   procedure CreerRangeeEquipe (L3 : in out Liste_bouton_Equipe)is
   begin
      -- Cr√©ation de la premi√®re rang√©e de boutons
      Gtk_New_Hbox (Row_Box1);
      Pack_Start (Main_Box, Row_Box1, False, False, 30);

      -- Cr√©ation et personnalisation des boutons de la premi√®re rang√©e
      Gtk_New (L3.ButtonEquipe1, "Enzo");
      L3.ButtonEquipe1.Set_Size_Request (25, 25);
      Pack_Start (Row_Box1, L3.ButtonEquipe1, False, False, 5);

      Gtk_New (L3.ButtonEquipe2, "Sacha");
      L3.ButtonEquipe2.Set_Size_Request (25, 25);
      Pack_Start (Row_Box1, L3.ButtonEquipe2, False, False, 5);

      Gtk_New (L3.ButtonEquipe3, "Loic");
      L3.ButtonEquipe3.Set_Size_Request (25, 25);
      Pack_Start (Row_Box1,L3.ButtonEquipe3, False, False, 5);

      Gtk_New (L3.ButtonEquipe4, "Olivier");
      L3.ButtonEquipe4.Set_Size_Request (25, 25);
      Pack_Start (Row_Box1, L3.ButtonEquipe4, False, False, 5);

      Gtk_New (L3.ButtonEquipe5, "Levi");
      L3.ButtonEquipe5.Set_Size_Request (25, 25);
      Pack_Start (Row_Box1, L3.ButtonEquipe5, False, False, 5);

      -- Cr√©ation de la premi√®re rang√©e de boutons
      Gtk_New_Hbox (Row_Box2);
      Pack_Start (Main_Box, Row_Box2, False, False, 30);

      Gtk_New (My_Label);
      My_Label.Set_Label ("Cliquez sur un membre de l'equipe");
      Pack_Start (Row_Box2, My_Label, True, True, 0);

      Gtk_New_Hbox (Row_Box3);
      Pack_Start (Main_Box, Row_Box3, False, False, 30);

      Gtk_New (L3.Boutonretour, "Retour");
      L3.Boutonretour.Set_Size_Request (25, 25);
      Pack_Start (Row_Box3, L3.Boutonretour, False, False, 5);

      Gtk_New (L3.Buttoneaster);
      Image := Gtk_Image_New_From_File ("texture/viallet.png");
      L3.Buttoneaster.Add(image);
      L3.Buttoneaster.Hide;
      Pack_Start (Row_Box3, L3.Buttoneaster, False, False, 5);
   end CreerRangeeEquipe;


end fenetre3;
