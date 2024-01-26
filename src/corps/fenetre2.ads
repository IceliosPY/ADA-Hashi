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


package fenetre2 is

   WinTests       : Gtk_Window;
   Main_Box       : Gtk_Box;
   Fond           : Gtk_Image;
   Fixed          : Gtk_Fixed;
   Row_BoxTest1  : Gtk_Box;
   Row_BoxTest2  : Gtk_Box;
   Row_BoxTest3  : Gtk_Box;
   Row_BoxTest4  : Gtk_Box;

     type Liste_bouton_tests is record
   ButtonTest1   : Gtk_Button;
   ButtonTest2   : Gtk_Button;
   ButtonTest3   : Gtk_Button;
   ButtonTest4   : Gtk_Button;
   ButtonTest5   : Gtk_Button;
   ButtonTest6   : Gtk_Button;
   ButtonTest7   : Gtk_Button;
   ButtonTests : Gtk_Button;
   Boutonretour : Gtk_Button;
   end record;
   L2 : Liste_bouton_tests;
   Mon_Label : Gtk_Label;


   procedure CreerBoiteTests(Lien_Main : in out string);
   procedure CreerRangeeTest(L2 : in out Liste_bouton_tests);
end fenetre2;
