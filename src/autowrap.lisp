
(cl:in-package :sdl2-gfx-ffi)

(autowrap:c-include
 '(sdl2-gfx autowrap-spec "SDL2_gfx.h")
  :accessor-package :sdl2-gfx-ffi.accessors
  :function-package :sdl2-gfx-ffi.functions
  :spec-path '(sdl2-gfx autowrap-spec)
  :exclude-sources ("/usr/local/lib/clang/([^/]*)/include/(?!stddef.h)"
                    "/usr/include/"
                    "/usr/include/arm-linux-gnueabihf")
  :include-sources ("stdint.h"
                    "bits/types.h"
                    "sys/types.h"
                    "SDL2_gfx")
  :exclude-definitions ("SDL_LogMessageV"
                        "SDL_vsnprintf"
                        "_inline$"
                        "^_mm_")
  ;; :symbol-exceptions (("SDL_Log" . "SDL-LOGGER")
  ;;                     ("SDL_log" . "SDL-LOGN")
  ;;                     ("SDL_RWops" . "SDL-RWOPS")
  ;;                     ("SDL_GLContext" . "SDL-GLCONTEXT")
  ;;                     ("SDL_GLattr" . "SDL-GLATTR")
  ;;                     ("SDL_GLprofile" . "SDL-GLPROFILE")
  ;;                     ("SDL_GLcontextFlag" . "SDL-GLCONTEXT-FLAG")
  ;;                     ("SDL_TRUE" . "TRUE")
  ;;                     ("SDL_FALSE" . "FALSE"))
  :no-accessors cl:t
  :release-p cl:t)
