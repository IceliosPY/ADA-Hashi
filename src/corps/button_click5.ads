with Gtk.Button;  use Gtk.Button;
with Gtk.Label;       use Gtk.Label;
with Run_Tests_Coordonnees;
with Run_Tests_Orientation;
with Run_Tests_Iles;
with Run_Tests_Ponts;
with Run_Tests_Grille;
with run_Tests_TypeCase;
with Run_Tests_CaseHashi;
with Grille; use Grille;
with Gtk.Box; use Gtk.Box;
with Gtk.Image; use Gtk.Image;
with Gtk.Window; use Gtk.Window;
with Gtk.Combo_Box; use Gtk.Combo_Box;

package button_click5 is


   procedure BoutonEx_cliquer_handler(Button : access Gtk_Button_Record'Class);
   procedure SiComboBoxChangee (Regle : access Gtk_Combo_Box_Record'Class);
end button_click5;
