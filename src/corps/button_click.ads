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
with Grille; use Grille;
with Gtk.Window; use Gtk.Window;
with Gtk.Box; use Gtk.Box;
with Gtk.Image; use Gtk.Image;
with Gtk.Combo_Box; use Gtk.Combo_Box;

package button_click is
   PAS_DE_CHOIX : exception;
   Hashi : Gtk_Window;
   BoxHashi : Gtk_Box;
   ImageHashi : Gtk_Image;
  type String_Access is access String;
   ImagePath : String_Access;
   Mon_Label : Gtk_Label;

   type TypeHashi is record
      Lien_Image : string (1..19);
      Win      : Gtk_Window;
      Box  : Gtk_Box;
      IMG : Gtk_Image;
      ButtonFermer  : Gtk_Button;
   end record;
   H1 : TypeHashi;
   H2 : TypeHashi;
   H3 : TypeHashi;
   H4 : TypeHashi;
   H5 : TypeHashi;
   H6 : TypeHashi;
   H7 : TypeHashi;
   H8 : TypeHashi;

   procedure BoutonFermer_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure Boutonretour_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure BoutonValider_Cliquer_Handler(Button : access Gtk_Button_Record'Class);
   procedure On_Combo_Box_Changed (ComboBox : access Gtk_Combo_Box_Record'Class);
   procedure CreeHashi(H : in out TypeHashi);


end button_click;
