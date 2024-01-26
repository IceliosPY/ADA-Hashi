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
with fenetre3; use fenetre3;
with button_click4; use button_click4;
with main;

package body fenetre4 is


   procedure CreerBoiteGrille (Lien_Grille : in out string) is
      FixedGrille : Gtk_Fixed;
   begin

   -- CrÈation de la fenÍtre
   Gtk_New (WinGrille);
   Set_Title (WinGrille, "Hashi- S102 - ...");
   Set_Default_Size (WinGrille, 700, 337);
      Set_Resizable (WinGrille, False);

   -- CrÈer un conteneur GtkFixed
   Gtk_New (FixedGrille);
   Add(WinGrille, FixedGrille);


   -- CrÈer et ajouter l'image au conteneur Fixed
   ImageGrille := Gtk_Image_New_From_File (Lien_Grille); -- Charger l'image
   Put (FixedGrille, ImageGrille, 0, 0); -- Positionner l'image ‡ (0, 0) dans Fixed
   -- CrÈer et ajouter la boÓte principale au conteneur Fixed
   Gtk_New_Vbox (Box_Grille);
   Put (FixedGrille, Box_Grille, 0, 120); -- Positionner Main_Box au mÍme endroit

end CreerBoiteGrille;
   procedure CreerRangeeGrille (L4 : in out Liste_bouton_Grille) is
   begin
      -- Cr√©ation de la premi√®re rang√©e de boutons
      Gtk_New_Hbox (Row_BoxGrille1);
      Pack_Start (Box_Grille, Row_BoxGrille1, False, False, 30);

      -- Cr√©ation et personnalisation des boutons de la premi√®re rang√©e
      Gtk_New (L4.Boutonretour, "Retour");
      L4.Boutonretour.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxGrille1, L4.Boutonretour, False, False, 5);


      -- Cr√©ation de la premi√®re rang√©e de boutons
      Gtk_New_Hbox (Row_BoxGrille2);
      Pack_Start (Box_Grille, Row_BoxGrille2, False, False, 30);

      Gtk_New (L4.Button1, "Grille 1");
      L4.Button1.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxGrille2, L4.Button1, False, False, 5);

      Gtk_New (L4.Button2, "Grille 2");
      L4.Button2.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxGrille2, L4.Button2, False, False, 5);

      Gtk_New (L4.Button3, "Grille 3");
      L4.Button3.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxGrille2, L4.Button3, False, False, 5);

      Gtk_New (L4.Button4, "Grille 4");
      L4.Button4.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxGrille2, L4.Button4, False, False, 5);

      -- Cr√©ation de la premi√®re rang√©e de boutons
      Gtk_New_Hbox (Row_BoxGrille3);
      Pack_Start (Box_Grille, Row_BoxGrille3, False, False, 30);

      Gtk_New (L4.Button5, "Grille 5");
      L4.Button5.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxGrille3, L4.Button5, False, False, 5);

      Gtk_New (L4.Button6, "Grille 6");
      L4.Button6.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxGrille3, L4.Button6, False, False, 5);

      Gtk_New (L4.Button7, "Grille 7");
      L4.Button7.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxGrille3, L4.Button7, False, False, 5);

      Gtk_New (L4.Button8, "Grille 8");
      L4.Button8.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxGrille3, L4.Button8, False, False, 5);


   end CreerRangeeGrille;


end fenetre4;
