(lang dune 2.9)
(name cf)

(generate_opam_files true)

(source (github mirage/ocaml-cf))
(license ISC)
(authors "David Sheets" "Thomas Gazagnaire")
(maintainers "Thomas Gazagnaire")
(documentation "https://mirage.github.io/ocaml-cf/")

(package
 (name cf)
 (synopsis "OCaml bindings to macOS CoreFoundation")
 (description "These bindings use [ctypes](https://github.com/ocamllabs/ocaml-ctypes)
for type-safe stub generation.")
 (depends
  base-bytes
  (ctypes (>= "0.4.0"))
  ctypes-foreign))

(package
 (name cf-lwt)
 (synopsis "Lwt interface to macOS CoreFoundation")
 (description "An Lwt interface to the macOS CoreFoundation library, using the
`cf` library for the low-level bindings.")
 (depends
  (cf (= :version))
  (alcotest :with-test)
  (lwt (>= "3.2.0"))))
