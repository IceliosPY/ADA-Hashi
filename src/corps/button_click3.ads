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

package button_click3 is
   valeur : Integer := 0;
   Mon_Label : Gtk_Label;
   procedure BoutonEquipe_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
  procedure BoutonEquipe1_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonEquipe2_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonEquipe3_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonEquipe4_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonEquipe5_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure Boutoneaster_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
end button_click3;
