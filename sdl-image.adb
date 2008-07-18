package body SDL.image is

  function Load (file: string) return SDL.video.surface_ptr_t is
  begin
    return Load (cs.new_string (file));
  end Load;

  function LoadTyped_RW (src: SDL.rwops.rwops_ptr_t; free: boolean; typestr: string)
    return SDL.video.surface_ptr_t is
  begin
    if free then
      return LoadTyped_RW (src, 1, cs.new_string (typestr));
    else
      return LoadTyped_RW (src, 0, cs.new_string (typestr));
    end if;
  end LoadTyped_RW;

  function Load_RW (src: SDL.rwops.rwops_ptr_t; free: boolean)
    return SDL.video.surface_ptr_t is
  begin
    if free then
      return Load_RW (src, 1);
    else
      return Load_RW (src, 0);
    end if;
  end Load_RW;

end SDL.image;
