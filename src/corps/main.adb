with Affichage; use Affichage;
with Glib.Object;
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
with fenetre1; use fenetre1;
with fenetre2; use fenetre2;
with button_click3; use button_click3;
with fenetre4; use fenetre4;
with button_click4; use button_click4;
with fenetre3; use fenetre3;
with LancerProjet; use LancerProjet;




procedure Main is
begin
   Gtk.Main.Init;
   CreerBoiteProjet;
   CreerRangeeProjet(ButtonValider);
   Show_All(LancerProjet.LancerProjet);
   LancerProjet.LancerProjet.Present;

   H1.Lien_Image :="Texture/Grille1.gif";
   CreeHashi(H1);
   H1.Win.Hide;

   H2.Lien_Image :="Texture/Grille2.gif";
   CreeHashi(H2);
   H2.Win.Hide;

   H3.Lien_Image :="Texture/Grille3.gif";
   CreeHashi(H3);
   H3.Win.Hide;

   H4.Lien_Image :="Texture/Grille4.gif";
   CreeHashi(H4);
   H4.Win.Hide;

   H5.Lien_Image :="Texture/Grille5.gif";
   CreeHashi(H5);
   H5.Win.Hide;

   H6.Lien_Image :="Texture/Grille6.gif";
   CreeHashi(H6);
   H6.Win.Hide;

   H7.Lien_Image :="Texture/Grille7.gif";
   CreeHashi(H7);
   H7.Win.Hide;

   H8.Lien_Image :="Texture/Grille8.gif";
   CreeHashi(H8);
   H8.Win.Hide;


   LancerProjet.ComboBox.On_Changed(On_Combo_Box_Changed'Access);
   ButtonValider.On_Clicked(BoutonValider_Cliquer_Handler'Access);

   Gtk.Main.Main;
end Main;
