pragma Ada_2012;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
package body Ile is


   -------------------
   -- ConstruireIle --
   -------------------

   function ConstruireIle (V : in Integer) return Type_Ile is
      Ile : Type_Ile;
   begin

      if V <= 0 or V > VALEUR_MAX then

         raise VALEUR_ILE_INVALIDE;
      end if;
      Ile.V := V;
      return Ile;
   end ConstruireIle;

   -------------------
   -- ObtenirValeur --
   -------------------

   function ObtenirValeur (I : in Type_Ile) return Integer is
   begin
      return I.V;
   end ObtenirValeur;

   --------------------
   -- estIleComplete --
   --------------------

   function EstIleComplete (I : in Type_Ile) return Boolean is
   begin

      return I.V = 0;
   end EstIleComplete;

   -----------------
   -- modifierIle --
   -----------------

   function ModifierIle (I : in Type_Ile; P : in Integer) return Type_Ile is
      Ile : Type_Ile;
   begin
      if P < 1 or P > 2 then
         raise VALEUR_PONT_INVALIDE;
      elsif I.V - P < 0 then

         raise PONT_IMPOSSIBLE;
      end if;
      Ile.V := I.V - P;
      return Ile;
   end ModifierIle;

end Ile;
