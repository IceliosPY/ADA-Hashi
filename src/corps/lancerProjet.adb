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

package body LancerProjet is


   procedure CreerBoiteProjet is
      LaunchFixed : Gtk_Fixed;
begin
   -- Création de la fenêtre
      Gtk_New (LancerProjet);
   Set_Title (Lancerprojet, "Hashi- S102 - ...");
   Set_Default_Size (LancerProjet, 200, 200);
      Set_Resizable (LancerProjet, False);

      -- Définir l'icône de la fenêtre
   -- Créer un conteneur GtkFixed
   Gtk_New (LaunchFixed);
   Add (LancerProjet, LaunchFixed);


   Gtk_New_Vbox (BoiteLaunch);
      Put (LaunchFixed, BoiteLaunch, 0, 120); -- Positionner Main_Box au même endroit

          ImageLaunch := Gtk_Image_New_From_File ("texture/animationgrille1.gif");
    Pack_Start (BoiteLaunch, ImageLaunch, Expand => True, Fill => True, Padding => 0);

end CreerBoiteProjet;
   procedure CreerRangeeProjet (ButtonValider : in out Gtk_Button ) is
   begin

      -- CrÃ©ation de la premiÃ¨re rangÃ©e de boutons
      Gtk_New_Hbox (Boite_Launch);
      Pack_Start (BoiteLaunch, Boite_Launch, False, False, 30);

      Gtk_New(ComboBox);
      ComboBox.Append(Text => "Tropical");
      ComboBox.Append(Text => "Blue");
      ComboBox.Append(Text => "DarkMod");
      ComboBox.Append(Text => "Classic");
      ComboBox.Append(Text => "EL FUTURE DE PODER");
      ComboBox.Append(Text => "Hachis");


       Pack_Start (Boite_Launch, ComboBox, False, False, 5);
       Gtk_New (ButtonValider, "Valider");
       ButtonValider.Set_Size_Request (50, 25);
       Pack_Start (Boite_Launch, ButtonValider, False, False, 5);
   end CreerRangeeProjet;

end LancerProjet;
