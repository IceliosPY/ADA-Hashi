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

package body fenetre5 is


   procedure CreerBoiteExplication(Lien_Explication : in out String) is
      ExFixed : Gtk_Fixed;
begin
   -- Création de la fenêtre
     Gtk_New (WinExplication);
   Set_Title (WinExplication, "Hashi- S102 - ...");
   Set_Default_Size (WinExplication, 800, 337);
      Set_Resizable (WinExplication, False);

      -- Définir l'icône de la fenêtre
   -- Créer un conteneur GtkFixed
   Gtk_New (ExFixed);
   Add (WinExplication, ExFixed);

   -- Créer et ajouter l'image au conteneur Fixed
   ImageMain := Gtk_Image_New_From_File (Lien_Explication); -- Charger l'image
   Put (ExFixed, ImageMain, 0, 0); -- Positionner l'image à (0, 0) dans Fixed

   -- Créer et ajouter la boîte principale au conteneur Fixed
   Gtk_New_Vbox (Box_Explication);
      Put (ExFixed, Box_Explication, 0, 140); -- Positionner Main_Box au même endroit
end CreerBoiteExplication;
   procedure CreerRangeeExplication(L6 : in out Liste_bouton_explication) is
   begin
      -- CrÃ©ation de la premiÃ¨re rangÃ©e de boutons
      Gtk_New_Hbox (Ex_box1);
      Pack_Start (Box_Explication, Ex_box1, False, False, 10);

     ImageQrcode := Gtk_Image_New_From_File ("texture/qrcode.png");
    Pack_Start (Ex_box1, ImageQrcode, Expand => True, Fill => True, Padding => 0);

      Gtk_New_Hbox (Ex_box2);
      Pack_Start (Box_Explication, Ex_box2, False, False, 10);
      Gtk_New(Regle);
      Regle.Append(Text => "Choix :");
      Regle.Append(Text => "Regle 1");
      Regle.Append(Text => "Regle 2");
      Regle.Append(Text => "Regle 3");
      Regle.Append(Text => "Regle 4");
      Regle.Append(Text => "Regle 5");
      Regle.Append(Text => "Regle 6");

      Pack_Start (Ex_box2, Regle, False, False, 5);
      gtk_New (Regles);
      Regles.Set_Label("Choisissez une regle");
      Pack_Start (Ex_box2, Regles, True, True, 10);

      Gtk_New_Hbox (Ex_box3);
      Pack_Start (Box_Explication, Ex_box3, False, False, 10);


      Gtk_New (fenetre5.L6.ButtonRetour, "Quitter");
      fenetre5.L6.ButtonRetour.Set_Size_Request (25, 25);
      Pack_Start (Ex_box3, fenetre5.L6.ButtonRetour, False, False, 5);


   end CreerRangeeExplication;

end fenetre5;
