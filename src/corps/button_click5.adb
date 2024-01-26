with Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with Gdk.Event;
with Gtk.Button;  use Gtk.Button;
with Gtk.Label;       use Gtk.Label;
with Gtk.Widget;
with Run_Tests_Coordonnees;
with Run_Tests_Orientation;
with Run_Tests_Iles;
with Run_Tests_Ponts;
with Run_Tests_Grille;
with run_Tests_TypeCase;
with Run_Tests_CaseHashi;
with Run_Tests_Coordonnees;
with Affichage; use Affichage;
with Grille; use Grille;
with Remplir_Grille_Hashi; use Remplir_Grille_Hashi;
with Resolution_Hashi; use Resolution_Hashi;
with main;
with Gtk.Window; use Gtk.Window;
with Gtk.Box; use Gtk.Box;
with Gtk.Image; use Gtk.Image;
with Gtk.Fixed; use Gtk.Fixed;
with fenetre1; use fenetre1;
with fenetre2; use fenetre2;
with fenetre3; use fenetre3;
with fenetre4; use fenetre4;
with button_click; use button_click;
with fenetre5; use fenetre5;
with Glib; use Glib;

package body button_click5 is


  procedure BoutonEx_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
begin
      winGrille.Hide;
      win.hide;
      WinTests.hide;

      WinExplication.Show_All;
      WinExplication.Present;
      L6.ButtonRetour.On_Clicked(Boutonretour_Cliquer_Handler'Access);
      fenetre5.Regle.On_Changed(SiComboBoxChangee'Access);
   end BoutonEx_Cliquer_Handler;


   procedure SiComboBoxChangee (Regle : access Gtk_Combo_Box_Record'Class) is
      Regle1 : UTF8_String := "Regle 1";
      Regle2 : UTF8_String := "Regle 2";
      Regle3 : UTF8_String := "Regle 3";
      Regle4 : UTF8_String := "Regle 4";
      Regle5 : UTF8_String := "Regle 5";
      Regle6 : UTF8_String := "Regle 6";

   begin

      if Get_Active_Text(Regle) = Regle1 then
         Regles.Set_Label("Regle 1 : un pont ne peux pas etre triple");

       elsif Get_Active_Text(Regle) = Regle2 then
         Regles.Set_Label("Regle 2 : Une ile va de 1 a 8 pas plus");
       elsif Get_Active_Text(Regle) = Regle3 then
         Regles.Set_Label("Regle 3 : une ile a forcement UN pont ");
       elsif Get_Active_Text(Regle) = Regle4 then
         Regles.Set_Label("Regle 4 : une ile n a n ponts ");
         elsif Get_Active_Text(Regle) = Regle5 then
         Regles.Set_Label("les ponts ne sont pas diagonaux ");
       elsif Get_Active_Text(Regle) = Regle6 then
         Regles.Set_Label(" il y a forcement une ile par colonne ");
      end if;
end SiComboBoxChangee;

end button_click5;
