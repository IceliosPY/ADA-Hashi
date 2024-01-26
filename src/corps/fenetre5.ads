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
with Gtk.List_Store; use Gtk.List_Store;
with Gtk.Cell_Renderer; use Gtk.Cell_Renderer;
with Gtk.Tree_Model; use Gtk.Tree_Model;
with Gtk.Combo_Box; use Gtk.Combo_Box;
with Gtk.Combo_Box_Text; use Gtk.Combo_Box_Text;
with fenetre1; use fenetre1;

package fenetre5 is
   WinExplication      : Gtk_Window;
   Box_Explication  : Gtk_Box;
   Ex_box1  : Gtk_Box;
   Ex_box2 : Gtk_Box;
   Ex_box3 : Gtk_Box;
   ImageMain : Gtk_Image;
   ImageQrcode : Gtk_Image;
   Regle : Gtk_Combo_Box_Text;
   Regles : Gtk_Label;

   type Liste_bouton_explication is record
      ButtonRetour  : Gtk_Button;
      sert_a_rien : Integer;
      end record;
   L6 : Liste_bouton_explication;

   procedure CreerBoiteExplication(Lien_Explication : in out string);
   procedure CreerRangeeExplication(L6 : in out Liste_bouton_explication);

end fenetre5;
