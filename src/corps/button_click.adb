with Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with Glib.String;
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
with Gtk.Window; use Gtk.Window;
with Gtk.Box; use Gtk.Box;
with Gtk.Image; use Gtk.Image;
with Gtk.Fixed; use Gtk.Fixed;
with fenetre1; use fenetre1;
with fenetre2; use fenetre2;
with fenetre4; use fenetre4;
with fenetre3; use fenetre3;
with button_click5; use button_click5;
with button_click4; use button_click4;
with button_click3; use button_click3;
with Gtk.Combo_Box_Text; use Gtk.Combo_Box_Text;
with Interfaces.C_Streams; use Interfaces.C_Streams;
with Gtk.Combo_Box; use Gtk.Combo_Box;
with Gtk.Tree_Model; use Gtk.Tree_Model;
with Glib; use Glib;
with button_click2; use button_click2;
with LancerProjet; use LancerProjet;
with fenetre5; use fenetre5;

package body button_click is
   procedure Boutonretour_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      begin
      WinTests.Hide;
      WinGrille.Hide;
      WinEquipe.hide;
      WinExplication.hide;
      Win.Show_All;
      win.Present;
   end Boutonretour_Cliquer_Handler;

   procedure BoutonValider_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
   begin
      if Lien_Main /= "NOPE"   then
   LancerProjet.LancerProjet.hide;
   fenetre1.CreerBoite(Lien_Main);
   fenetre1.CreerRangee(l1);
   fenetre2.CreerBoiteTests(Lien_Tests);
   fenetre2.CreerRangeeTest(L2);
   fenetre3.CreerBoiteEquipe(Lien_Equipe);
   fenetre3.CreerRangeeEquipe(L3);
   fenetre4.CreerBoiteGrille(Lien_Grille);
   fenetre4.CreerRangeeGrille(L4);
   fenetre5.CreerBoiteExplication(Lien_Explication);
   fenetre5.CreerRangeeExplication(fenetre5.L6);
   win.Show_All;
   win.present;

            L1.ButtonEquipe.On_Clicked(BoutonEquipe_Cliquer_Handler'Access);
            L1.ButtonTest.On_Clicked(BoutonTest_Cliquer_Handler'Access);
            L1.ButtonGrille.On_Clicked(boutonGrille_cliquer_handler'Access);
            L1.ButtonEx.On_Clicked(BoutonEx_cliquer_handler'Access);
            end if;
      end BoutonValider_Cliquer_Handler;


   procedure On_Combo_Box_Changed (ComboBox : access Gtk_Combo_Box_Record'Class) is
      Tropical : UTF8_String := "Tropical";
      Blue : UTF8_String := "Blue";
      Classic : UTF8_String := "Classic";
      DarkMod : UTF8_String := "DarkMod";
      FUTURE : UTF8_String :="EL FUTURE DE PODER";
      Hachis : UTF8_String :="Hachis";
      Choix : UTF8_String := "Choix";

   begin

      if Get_Active_Text(ComboBox) = Tropical then
         Lien_Equipe := "Texture/FondEquipe4.png";
         Lien_Grille := "Texture/FondIle2.png";
         Lien_Main  := "Texture/FondMain4.png";
         Lien_Tests := "Texture/FondTest2.png";
         Lien_Explication := "Texture/FondEx4.png";
      elsif Get_Active_Text(ComboBox) = Blue then
        Lien_Equipe := "Texture/FondEquipe2.png";
        Lien_Grille := "Texture/FondIle1.png";
        Lien_Main  := "Texture/FondMain1.png";
         Lien_Tests := "texture/FondTest1.png";
         Lien_Explication := "Texture/FondEx2.png";
      elsif Get_Active_Text(ComboBox) = Classic then
        Lien_Equipe := "Texture/FondEquipe1.png";
        Lien_Grille := "Texture/FondIle4.png";
        Lien_Main  := "Texture/FondMain2.png";
         Lien_Tests :=  "texture/FondTest4.png";
         Lien_Explication := "Texture/FondEx1.png";
      elsif Get_Active_Text(ComboBox) = DarkMod then
       Lien_Equipe :=  "Texture/FondEquipe3.png";
       Lien_Grille := "Texture/FondIle3.png";
       Lien_Main  := "Texture/FondMain3.png";
         Lien_Tests :=  "texture/FondTest3.png";
         Lien_Explication := "Texture/FondEx3.png";
      elsif Get_Active_Text(ComboBox) = FUTURE then
       Lien_Equipe :=  "Texture/FondEquipe5.png";
       Lien_Grille := "Texture/FondIle5.png";
       Lien_Main  := "Texture/FondMain5.png";
         Lien_Tests :=  "texture/FondTest5.png";
         Lien_Explication := "Texture/FondEx5.png";
       elsif Get_Active_Text(ComboBox) = Hachis then
       Lien_Equipe :=  "Texture/FondEquipe6.png";
       Lien_Grille := "Texture/FondIle6.png";
       Lien_Main  := "Texture/FondMain6.png";
         Lien_Tests :=  "texture/FondTest6.png";
         Lien_Explication := "Texture/FondEx6.png";
      elsif Get_Active_Text(ComboBox) = Choix then
         raise PAS_DE_CHOIX;
      end if;
end On_Combo_Box_Changed;



 procedure BoutonFermer_Cliquer_Handler(Button : access Gtk_Button_Record'Class) is
      begin
      H1.Win.hide;
      H2.Win.hide;
      H3.Win.hide;
      H4.Win.hide;
      H5.Win.hide;
      H6.Win.hide;
      H7.Win.hide;
      H8.Win.hide;
   end BoutonFermer_Cliquer_Handler;

 procedure CreeHashi(H : in out TypeHashi)is


   begin
    Gtk_New (H.win);
    Set_Title (H.Win, "Hashi- S102 - ...");
    Set_Default_Size (H.Win, 400, 400);
    Set_Resizable (H.Win, false);
    -- Créer un conteneur GtkBox
    Gtk_New_Vbox (H.Box);
    Add (H.Win, H.Box);


    -- Créer et ajouter l'image au conteneur Box
    H.img := Gtk_Image_New_From_File (H.lien_image);
    Pack_Start (H.Box, H.img, Expand => True, Fill => True, Padding => 0);

      Gtk_New (H.ButtonFermer, "Fermer le Hashi");
      H.ButtonFermer.Set_Size_Request (25, 25);
      Pack_Start (H.Box, H.ButtonFermer, False, False, 5);
   end CreeHashi;




end button_click;
