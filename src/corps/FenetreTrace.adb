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
with gdk.Pixbuf; use gdk.Pixbuf;
with fenetre4; use fenetre4;

with Gtk.Combo_Box;  use Gtk.Combo_Box;
with System.Dim.Mks.Other_Prefixes; use System.Dim.Mks.Other_Prefixes;

package body fenetreTrace is


   procedure CreerBoite(Lien_Main : in out String) is
      Fixed : Gtk_Fixed;
begin
   -- Création de la fenêtre
      Gtk_New (Win);
   Set_Title (Win, "Hashi- S102 - ...");
   Set_Default_Size (Win, 700, 337);
      Set_Resizable (Win, False);

      -- Définir l'icône de la fenêtre
   -- Créer un conteneur GtkFixed
   Gtk_New (Fixed);
   Add (Win, Fixed);

   -- Créer et ajouter l'image au conteneur Fixed
   ImageMain := Gtk_Image_New_From_File (Lien_Main); -- Charger l'image
   Put (Fixed, ImageMain, 0, 0); -- Positionner l'image à (0, 0) dans Fixed

   -- Créer et ajouter la boîte principale au conteneur Fixed
   Gtk_New_Vbox (Main_Box);
      Put (Fixed, Main_Box, 0, 120); -- Positionner Main_Box au même endroit


end CreerBoite;
   procedure CreerRangee(L1 : in out Liste_bouton) is
   begin
      -- CrÃ©ation de la premiÃ¨re rangÃ©e de boutons
      Gtk_New_Hbox (Row_Box1);
      Pack_Start (Main_Box, Row_Box1, False, False, 30);

      -- CrÃ©ation et personnalisation des boutons de la premiÃ¨re rangÃ©e
      Gtk_New (L1.ButtonTest, "Tests");
      L1.ButtonTest.Set_Size_Request (25, 25);
      Pack_Start (Row_Box1, L1.ButtonTest, False, False, 5);

       Gtk_New (L1.ButtonEquipe, "Equipe");
      L1.ButtonEquipe.Set_Size_Request (25, 25);
      Pack_Start (Row_Box1, L1.ButtonEquipe, False, False, 5);

      Gtk_New (L1.ButtonGrille, "Grilles");
      L1.ButtonGrille.Set_Size_Request (25, 25);
      Pack_Start (Row_Box1, L1.ButtonGrille, False, False, 5);

   end CreerRangee;

end fenetreTrace;
