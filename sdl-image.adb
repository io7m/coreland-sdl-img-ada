package body SDL.image is

  function Load (file: string) return SDL.video.surface_ptr_t is
  begin
    return Load (cs.new_string (file));
  end Load;

end SDL.image;
