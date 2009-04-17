package body SDL.Image is

  function Load (File : String) return Video.Surface_Access_t is
    Ch_Array : aliased C.char_array := C.To_C (File);
  begin
    return Load (CS.To_Chars_Ptr (Ch_Array'Unchecked_Access));
  end Load;

  function LoadTyped_RW
   (Source      : RWops.RWops_Access_t;
    Free        : Boolean;
    Type_String : String) return Video.Surface_Access_t
  is
    Ch_Array : aliased C.char_array := C.To_C (Type_String);
  begin
    if Free then
      return LoadTyped_RW (Source, 1, CS.To_Chars_Ptr (Ch_Array'Unchecked_Access));
    else
      return LoadTyped_RW (Source, 0, CS.To_Chars_Ptr (Ch_Array'Unchecked_Access));
    end if;
  end LoadTyped_RW;

  function Load_RW
   (Source : RWops.RWops_Access_t;
    Free   : Boolean) return Video.Surface_Access_t is
  begin
    if Free then
      return Load_RW (Source, 1);
    else
      return Load_RW (Source, 0);
    end if;
  end Load_RW;

end SDL.Image;
