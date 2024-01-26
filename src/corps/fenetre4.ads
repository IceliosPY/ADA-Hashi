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

package fenetre4 is
   WinGrille       : Gtk_Window;
   Box_Grille  : Gtk_Box;
   Row_BoxGrille1  : Gtk_Box;
   Row_BoxGrille2  : Gtk_Box;
   Row_BoxGrille3  : Gtk_Box;
   ImageGrille : Gtk_Image;


   type Liste_bouton_Grille is record
   ButtonTest   : Gtk_Button;
   ButtonEquipe  : Gtk_Button;
   Button1   : Gtk_Button;
   Button2   : Gtk_Button;
   Button3   : Gtk_Button;
   Button4   : Gtk_Button;
   Button5   : Gtk_Button;
   Button6   : Gtk_Button;
   Button7   : Gtk_Button;
   Button8   : Gtk_Button;
   Boutonretour : Gtk_Button;
   end record;

   L4 : Liste_bouton_Grille;

   procedure CreerBoiteGrille(Lien_Grille : in out string);
   procedure CreerRangeeGrille(L4 : in out Liste_bouton_Grille);

end fenetre4;
