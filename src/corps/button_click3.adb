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

package body button_click3 is


  procedure BoutonEquipe_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
begin
      winGrille.Hide;
      win.hide;
      WinTests.hide;
      WinEquipe.Show_All;
      WinEquipe.Present;
      L3.Buttoneaster.Show;
      L3.Buttoneaster.Hide;
      L3.Boutonretour.On_Clicked(Boutonretour_Cliquer_Handler'Access);
      L3.ButtonEquipe1.On_Clicked(BoutonEquipe1_Cliquer_Handler'Access);
      L3.ButtonEquipe2.On_Clicked(BoutonEquipe2_Cliquer_Handler'Access);
      L3.ButtonEquipe3.On_Clicked(BoutonEquipe3_Cliquer_Handler'Access);
      L3.ButtonEquipe4.On_Clicked(BoutonEquipe4_Cliquer_Handler'Access);
      L3.ButtonEquipe5.On_Clicked(BoutonEquipe5_Cliquer_Handler'Access);
      L3.Buttoneaster.On_Clicked(Boutoneaster_Cliquer_Handler'Access);
   end BoutonEquipe_Cliquer_Handler;

   procedure BoutonEquipe1_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
    begin
      My_Label.Set_Label("PUTAIN CA MARCHE");
      if valeur = 4 then
         valeur := valeur + 1;
      else
         valeur := 0;
      end if;
      if valeur = 5 then
         L3.Buttoneaster.Show;
         end if;
    end BoutonEquipe1_Cliquer_Handler;

 procedure BoutonEquipe2_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
    begin
      My_Label.Set_Label("Les gars je rentre de la douche c est galere la");
      if valeur = 1 then
         valeur := valeur + 1;
      else
         valeur := 0;
      end if;
   end BoutonEquipe2_Cliquer_Handler;

    procedure BoutonEquipe3_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
    begin
      My_Label.Set_Label("Pour 23 balles cetait rentable en vrai");
     if valeur = 0 then
         valeur := valeur + 1;
     end if;
   end BoutonEquipe3_Cliquer_Handler;

    procedure BoutonEquipe4_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
    begin
      My_Label.Set_Label("Ca marche pas");
      if valeur = 3 then
         valeur := valeur + 1;
      else
         valeur := 0;
      end if;
   end BoutonEquipe4_Cliquer_Handler;

    procedure BoutonEquipe5_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
    begin
      My_Label.Set_Label("Logique ca a pas de jambe");
      if valeur = 2 then
         valeur := valeur + 1;
      else
         valeur := 0;
      end if;
    end BoutonEquipe5_Cliquer_Handler;


   procedure Boutoneaster_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
    begin
      My_Label.Set_Label("Je sais pas.");
      L3.Buttoneaster.Hide;
      valeur := 0;
   end Boutoneaster_Cliquer_Handler;

end button_click3;


