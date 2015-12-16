;;;; package.lisp

(push :sdl2-gfx *features*)

(defpackage #:sdl2-gfx-ffi)
(defpackage #:sdl2-gfx-ffi.accessors)
(defpackage #:sdl2-gfx-ffi.functions)

(defpackage #:sdl2-gfx
  (:use #:cl #:autowrap.minimal #:plus-c #:sdl2-gfx-ffi.accessors #:sdl2-gfx-ffi.functions)
  (:import-from :cffi
                #:mem-ref #:with-foreign-objects #:with-foreign-object
                #:foreign-alloc #:foreign-free #:null-pointer-p)
  (:export
   ;; API
   ;; gfx-primitives
   ;; rotozoom
   ;; framerate
   ;; image-filter
   ;; font
   ))
   
