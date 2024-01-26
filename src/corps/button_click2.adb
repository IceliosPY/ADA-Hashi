with Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with Gtk.Button;  use Gtk.Button;
with Gtk.Label;       use Gtk.Label;
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
with button_click; use button_click;
with fenetre2; use fenetre2;
with fenetre1; use fenetre1;
with button_click; use button_click;
with button_click2; use button_click2;
with fenetre4; use fenetre4;
with fenetre3; use fenetre3;

package body button_click2 is


   procedure Clear_Screen is
      c1 : Integer := 300;
      c2 : Integer := 0;
   begin
      while c2 < c1 loop
         new_line;
         c2 := c2 +1;
      end loop;
      c2 := 0;
   end Clear_Screen;
   procedure test (g : in out Type_Grille; m : in String) is
      Trouve : Boolean;
   begin
      New_Line;
      Put_Line ("******************************************");
      Put_Line (m);
      Put_Line ("******************************************");
      New_Line;
      AfficherGrille (g);
      ResoudreHashi (g, Trouve);
      AfficherResultat(G,Trouve);
      New_Line;
      AfficherGrille (g);
   end test;



   procedure BoutonTests_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      verification : Integer := 0;
      File : File_Type;
   begin
      Clear_Screen;
      Run_Tests_Orientation;
      Run_Tests_CaseHashi;
      run_Tests_TypeCase;
      Run_Tests_Grille;
      Run_Tests_Ponts;
      Run_Tests_Iles;
      Run_Tests_Coordonnees;
      Ada.Text_IO.Create (File, Ada.Text_IO.Out_File, "test.txt");
      Ada.Text_IO.Put_Line (File, "tout les tests sont ok");
      Ada.Text_IO.Close (File);
   end BoutonTests_Cliquer_Handler;

     procedure BoutonTest_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
   desaffichage : Integer := 0;
begin
      win.Hide;
      WinGrille.Hide;
      WinEquipe.hide;
      WinTests.Show_All;
      WinTests.Present;
      L2.Boutonretour.On_Clicked(Boutonretour_Cliquer_Handler'Access);
      L2.ButtonTests.On_Clicked(BoutonTests_Cliquer_Handler'Access);
      L2.ButtonTest1.On_Clicked(BoutonTest1_Cliquer_Handler'Access);
      L2.ButtonTest2.On_Clicked(BoutonTest2_Cliquer_Handler'Access);
      L2.ButtonTest3.On_Clicked(BoutonTest3_Cliquer_Handler'Access);
      L2.ButtonTest4.On_Clicked(BoutonTest4_Cliquer_Handler'Access);
      L2.ButtonTest5.On_Clicked(BoutonTest5_Cliquer_Handler'Access);
      L2.ButtonTest6.On_Clicked(BoutonTest6_Cliquer_Handler'Access);
      L2.ButtonTest7.On_Clicked(BoutonTest7_Cliquer_Handler'Access);
   end BoutonTest_Cliquer_Handler;

   procedure BoutonTest1_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      desaffichage : Integer := 0;
   begin
      Clear_Screen;
      Run_Tests_Orientation;
   end BoutonTest1_Cliquer_Handler;



   procedure BoutonTest2_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      desaffichage : Integer := 0;
   begin
      Clear_Screen;
      Run_Tests_CaseHashi;
   end BoutonTest2_Cliquer_Handler;



   procedure BoutonTest3_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      desaffichage : Integer := 0;
   begin
      Clear_Screen;
      run_Tests_TypeCase;
   end BoutonTest3_Cliquer_Handler;

   procedure BoutonTest4_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      desaffichage : Integer := 0;
   begin
       Clear_Screen;
       Run_Tests_Grille;
   end BoutonTest4_Cliquer_Handler;

    procedure BoutonTest5_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      desaffichage : Integer := 0;
   begin
       Clear_Screen;
       Run_Tests_Ponts;
   end BoutonTest5_Cliquer_Handler;

   procedure BoutonTest6_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      desaffichage : Integer := 0;
   begin
       Clear_Screen;
       Run_Tests_Coordonnees;
   end BoutonTest6_Cliquer_Handler;

   procedure BoutonTest7_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      desaffichage : Integer := 0;
   begin
       Clear_Screen;
       Run_Tests_Iles;
   end BoutonTest7_Cliquer_Handler;





end button_click2;


