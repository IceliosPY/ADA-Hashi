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

package LancerProjet is
   LancerProjet      : Gtk_Window;
   BoiteLaunch  : Gtk_Box;
   Boite_Launch  : Gtk_Box;
   ImageLaunch : Gtk_Image;

   Lien_Equipe : String(1..23);
   Lien_Grille : String(1..20) ;
   Lien_Main : String(1..21) ;
   Lien_Tests : String(1..21);
   Lien_Explication : String(1..19);

   ComboBox : Gtk_Combo_Box_Text;
   ButtonValider  : Gtk_Button;




   procedure CreerBoiteProjet;
   procedure CreerRangeeProjet(ButtonValider : in out Gtk_Button );

end LancerProjet;
