#include "ctxt.h"
#include "install.h"

struct install_item insthier[] = {
  {INST_MKDIR, 0, 0, ctxt_bindir, 0, 0, 0755},
  {INST_MKDIR, 0, 0, ctxt_incdir, 0, 0, 0755},
  {INST_MKDIR, 0, 0, ctxt_dlibdir, 0, 0, 0755},
  {INST_MKDIR, 0, 0, ctxt_slibdir, 0, 0, 0755},
  {INST_MKDIR, 0, 0, ctxt_repos, 0, 0, 0755},
  {INST_COPY, "sdl-ada-conf.c", 0, ctxt_repos, 0, 0, 0644},
  {INST_COPY, "sdl-img-ada-conf.c", 0, ctxt_repos, 0, 0, 0644},
  {INST_COPY, "sdl-image.ads", 0, ctxt_repos, 0, 0, 0644},
  {INST_COPY, "sdl-image.ads", 0, ctxt_incdir, 0, 0, 0644},
  {INST_COPY, "sdl-image.adb", 0, ctxt_repos, 0, 0, 0644},
  {INST_COPY, "sdl-image.adb", 0, ctxt_incdir, 0, 0, 0644},
  {INST_COPY, "sdl-image.ali", 0, ctxt_repos, 0, 0, 0644},
  {INST_COPY, "sdl-image.ali", 0, ctxt_dlibdir, 0, 0, 0444},
  {INST_COPY, "sdl-image.ali", 0, ctxt_slibdir, 0, 0, 0444},
  {INST_COPY, "sdl-img-ada-conf.ld", 0, ctxt_repos, 0, 0, 0644},
  {INST_COPY, "sdl-img-ada-conf", 0, ctxt_bindir, 0, 0, 0755},
};
unsigned long insthier_len = sizeof(insthier) / sizeof(struct install_item);
