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

package fenetre3 is
   WinEquipe       : Gtk_Window;
   Main_Box  : Gtk_Box;
   Row_Box1  : Gtk_Box;
   Row_Box2  : Gtk_Box;
   Row_Box3  : Gtk_Box;
   Image : Gtk_Image;
   My_Label  : Gtk_Label;


   type Liste_bouton_Equipe is record
   ButtonTest   : Gtk_Button;
   ButtonEquipe1   : Gtk_Button;
   ButtonEquipe2   : Gtk_Button;
   ButtonEquipe3   : Gtk_Button;
   ButtonEquipe4   : Gtk_Button;
   ButtonEquipe5   : Gtk_Button;
   Buttoneaster : Gtk_Button;
   Boutonretour : Gtk_Button;
   end record;

   L3 : Liste_bouton_Equipe;

   procedure CreerBoiteEquipe(Lien_Equipe : in out string);
   procedure CreerRangeeEquipe(L3 : in out Liste_bouton_Equipe);

end fenetre3;
