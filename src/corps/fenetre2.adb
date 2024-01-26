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
with fenetre2; use fenetre2;
with fenetre1; use fenetre1;
with LancerProjet; use LancerProjet;


package body fenetre2 is



   procedure CreerBoiteTests(Lien_Main : in out string ) is
   Fixed : Gtk_Fixed;
begin
   -- Cachez la fenêtre principale

   -- Initialisation de la fenêtre de test
   Gtk_New (WinTests);
   Set_Title (WinTests, "Hashi- S102 - Tests");
   Set_Default_Size (WinTests, 700, 337);
   Set_Resizable (WinTests, False);

   -- Créer un conteneur GtkFixed
   Gtk_New (Fixed);
   Add (WinTests, Fixed);

   -- Créer et ajouter l'image au conteneur Fixed
   Fond := Gtk_Image_New_From_File (Lien_Tests); -- Charger l'image
   Put (Fixed, Fond, 0, 0); -- Positionner l'image à (0, 0) dans Fixed

   -- Créer et ajouter la boîte principale au conteneur Fixed
   Gtk_New_Vbox (Main_Box);
   Put (Fixed, Main_Box, 0, 130); -- Positionner Main_Box au même endroit

   -- Afficher la fenêtre de test

end CreerBoiteTests;
   procedure CreerRangeeTest (L2 : in out Liste_bouton_tests) is
   begin
      Gtk_New_Hbox (Row_BoxTest1);
      Pack_Start (Main_Box, Row_BoxTest1, False, False, 50);

      -- CrÃ©ation et personnalisation des boutons de la premiÃ¨re rangÃ©e
      Gtk_New (L2.ButtonTests, "Tests");
      L2.ButtonTests.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxTest1, L2.ButtonTests, False, False, 5);

      Gtk_New (L2.Boutonretour, "Retour");
      L2.Boutonretour.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxTest1, L2.Boutonretour, False, False, 5);

      Gtk_New_Hbox (Row_BoxTest2);
      Pack_Start (Main_Box, Row_BoxTest2, False, False, 0);

      -- CrÃ©ation et personnalisation des boutons de la premiÃ¨re rangÃ©e
      Gtk_New (L2.ButtonTest1, "Orien");
      L2.ButtonTest1.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxTest2, L2.ButtonTest1, False, False, 5);

      Gtk_New (L2.ButtonTest2, "Case");
      L2.ButtonTest2.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxTest2, L2.ButtonTest2, False, False, 5);

      Gtk_New (L2.ButtonTest3, "TC");
      L2.ButtonTest3.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxTest2, L2.ButtonTest3, False, False, 5);

      Gtk_New (L2.ButtonTest4, "Grille");
      L2.ButtonTest4.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxTest2, L2.ButtonTest4, False, False, 5);

       Gtk_New (L2.ButtonTest5, "Pont");
      L2.ButtonTest5.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxTest2, L2.ButtonTest5, False, False, 5);

      Gtk_New_Hbox (Row_BoxTest3);
      Pack_Start (Main_Box, Row_BoxTest3, False, False, 30);

      Gtk_New (L2.ButtonTest6, "Coord");
      L2.ButtonTest6.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxTest3, L2.ButtonTest6, False, False, 5);

      Gtk_New (L2.ButtonTest7, "Ile");
      L2.ButtonTest7.Set_Size_Request (25, 25);
      Pack_Start (Row_BoxTest3, L2.ButtonTest7, False, False, 5);

   end CreerRangeeTest;


end fenetre2;
