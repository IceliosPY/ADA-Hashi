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

package button_click2 is
   procedure BoutonTests_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonTest_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonTest1_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonTest2_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonTest3_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonTest4_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonTest5_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonTest6_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonTest7_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
end button_click2;
