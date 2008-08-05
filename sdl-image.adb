package body SDL.image is

  function Load (file: string) return SDL.video.surface_ptr_t is
    ch_array : aliased c.char_array := c.to_c (file);
  begin
    return Load (cs.to_chars_ptr (ch_array'unchecked_access));
  end Load;

  function LoadTyped_RW
   (src     : SDL.rwops.rwops_ptr_t;
    free    : boolean;
    typestr : string) return SDL.video.surface_ptr_t
  is
    ch_array : aliased c.char_array := c.to_c (typestr);
  begin
    if free then
      return LoadTyped_RW (src, 1, cs.to_chars_ptr (ch_array'unchecked_access));
    else
      return LoadTyped_RW (src, 0, cs.to_chars_ptr (ch_array'unchecked_access));
    end if;
  end LoadTyped_RW;

  function Load_RW
   (src  : SDL.rwops.rwops_ptr_t;
    free : boolean) return SDL.video.surface_ptr_t is
  begin
    if free then
      return Load_RW (src, 1);
    else
      return Load_RW (src, 0);
    end if;
  end Load_RW;

end SDL.image;
