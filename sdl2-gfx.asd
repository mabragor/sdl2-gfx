;;;; sdl2-gfx.asd

(asdf:defsystem #:sdl2-gfx
  :description "Bindings for SDL2_GFX library using c2ffi; literally tailored after CL-SDL2"
  :author "Alexandr Popolitov <popolit@gmail.com>"
  :license "MIT"
  :depends-on (:alexandria
               :cl-autowrap
               :cl-plus-c)
  :pathname "src"
  :serial t
  :components ((:module autowrap-spec
			:pathname "spec"
			:components ((:static-file "SDL2.h")))
	       (:file "package")
	       ;; (:file "library")
	       ;; (:file "autowrap")
               (:file "sdl2-gfx")
	       ;; (:file "gfx-primitives")
	       ;; (:file "rotozoom")
	       ;; (:file "framerate")
	       ;; (:file "image-filter")
	       ;; (:file "font")
	       ))

