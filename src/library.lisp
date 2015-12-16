
(in-package #:sdl2-gfx)

(cffi:define-foreign-library libsdl2-gfx
  (:darwin (:or (:framework "SDL2_gfx") (:default "libSDL2_gfx"))) ;; I've no idea if this is correct
  (:unix (:or "libSDL2_gfx-1.0.so.0" "libSDL2_gfx"))
  (:windows "SDL2_gfx.dll") ;; as well as this 
  (t (:default "libSDL2_gfx"))) ;; and this

(cffi:use-foreign-library libsdl2-gfx)
