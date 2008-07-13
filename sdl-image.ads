with SDL.error;
with SDL.video;
with SDL;
with interfaces.c.strings;

package SDL.image is
  package cs renames interfaces.c.strings;

  function Load (file: cs.chars_ptr) return SDL.video.surface_ptr;
  pragma import (c, Load, "IMG_Load");

  function Load (file: string) return SDL.video.surface_ptr;

  function GetError return cs.chars_ptr renames SDL.error.GetError;
  function GetError return string renames SDL.error.GetError;
  function get_error return cs.chars_ptr renames SDL.error.get_error;
  function get_error return string renames SDL.error.get_error;
end SDL.image;
