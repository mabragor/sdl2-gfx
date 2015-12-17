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
  (:import-from :sdl2
		;; conditions
		#:sdl-error #:sdl-rc-error #:sdl-continue #:sdl-quit
		;; low-level utility functions
		#:sdl-collect #:sdl-cancel-collect #:sdl-true-p
		;; ... and utility macro
		#:check-rc #:check-non-zero #:check-true #:check-null
  (:export
   ;; API
   ;; gfx-primitives
   ;; rotozoom
   ;; framerate
   ;; image-filter
   ;; font
   ))
   
