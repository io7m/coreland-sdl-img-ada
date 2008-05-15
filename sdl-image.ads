with SDL.video;
with SDL;
with interfaces.c.strings;

package SDL.image is
  package cs renames interfaces.c.strings;

  function Load (file: cs.chars_ptr) return SDL.video.surface_ptr;
  pragma import (c, Load, "IMG_Load");

  function Load (file: string) return SDL.video.surface_ptr;
end SDL.image;
