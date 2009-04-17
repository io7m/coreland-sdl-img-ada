with SDL.Error;
with SDL.RWops;
with SDL.Video;
with SDL;
with Interfaces.C.Strings;

package SDL.Image is
  package CS renames Interfaces.C.Strings;

  function Load (File : CS.chars_ptr) return Video.Surface_Access_t;
  pragma Import (C, Load, "IMG_Load");

  function LoadTyped_RW
   (Source      : RWops.RWops_Access_t;
    Free        : C.int;
    Type_String : CS.chars_ptr) return Video.Surface_Access_t;

  function load_typed_RW
   (Source      : RWops.RWops_Access_t;
    Free        : C.int;
    Type_String : CS.chars_ptr) return Video.Surface_Access_t renames LoadTyped_RW;
  pragma Import (C, LoadTyped_RW, "IMG_LoadTyped_RW");

  function Load_RW
   (Source : RWops.RWops_Access_t;
    Free   : C.int) return Video.Surface_Access_t;
  pragma Import (C, Load_RW, "IMG_Load_RW");

  function Load (File : String) return Video.Surface_Access_t;
  function LoadTyped_RW
   (Source      : RWops.RWops_Access_t;
    Free        : Boolean;
    Type_String : String) return Video.Surface_Access_t;

  function load_typed_rw
   (Source      : RWops.RWops_Access_t;
    Free        : Boolean;
    Type_String : String) return Video.Surface_Access_t renames LoadTyped_RW;

  function Load_RW
   (Source : RWops.RWops_Access_t;
    Free   : Boolean) return Video.Surface_Access_t;

  function GetError return CS.chars_ptr renames Error.GetError;
  function GetError return String renames Error.GetError;
  function Get_Error return CS.chars_ptr renames Error.Get_Error;
  function Get_Error return String renames Error.Get_Error;

end SDL.Image;
