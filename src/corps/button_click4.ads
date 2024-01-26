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

package button_click4 is


   c : Integer;
   Mon_Label : Gtk_Label;
   procedure boutonGrille_cliquer_handler(Button : access Gtk_Button_Record'Class);
   procedure Bouton1_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure Bouton2_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure Bouton3_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure Bouton4_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure Bouton5_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure Bouton6_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure Bouton7_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure Bouton8_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
end button_click4;
