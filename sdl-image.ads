with SDL.error;
with SDL.rwops;
with SDL.video;
with SDL;
with interfaces.c.strings;

package SDL.image is
  package cs renames interfaces.c.strings;

  function Load (file: cs.chars_ptr) return SDL.video.surface_ptr_t;
  pragma import (c, Load, "IMG_Load");

  function LoadTyped_RW (src: SDL.rwops.rwops_ptr_t; free: c.int; typestr: cs.chars_ptr)
    return SDL.video.surface_ptr_t;
  function load_typed_RW (src: SDL.rwops.rwops_ptr_t; free: c.int; typestr: cs.chars_ptr)
    return SDL.video.surface_ptr_t renames LoadTyped_RW;
  pragma import (c, LoadTyped_RW, "IMG_LoadTyped_RW");

  function Load_RW (src: SDL.rwops.rwops_ptr_t; free: c.int)
    return SDL.video.surface_ptr_t;
  pragma import (c, Load_RW, "IMG_Load_RW");

  function Load (file: string) return SDL.video.surface_ptr_t;
  function LoadTyped_RW (src: SDL.rwops.rwops_ptr_t; free: boolean; typestr: string)
    return SDL.video.surface_ptr_t;
  function load_typed_rw (src: SDL.rwops.rwops_ptr_t; free: boolean; typestr: string)
    return SDL.video.surface_ptr_t renames LoadTyped_RW;
  function Load_RW (src: SDL.rwops.rwops_ptr_t; free: boolean)
    return SDL.video.surface_ptr_t;

  function GetError return cs.chars_ptr renames SDL.error.GetError;
  function GetError return string renames SDL.error.GetError;
  function get_error return cs.chars_ptr renames SDL.error.get_error;
  function get_error return string renames SDL.error.get_error;
end SDL.image;
