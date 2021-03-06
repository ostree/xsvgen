(***********************************************************************)
(*                                                                     *)
(*                  XML Schema Validator Generator                     *)
(*                                                                     *)
(*           Manuel Maarek (SafeRiver)                                 *)
(*                                                                     *)
(*  Copyright 2012, ANSSI and SafeRiver.                               *)
(*                                                                     *)
(***********************************************************************)

(* $Id: xml_re.mli 1692 2012-05-31 09:47:17Z maarek $ *)

(** {1 XML charsets}

    Functions testing if the characters of string data are of a given
    XML charsets. The functions implement the regular expressions
    corresponding to the XML charsets.

    The implementation of this module contains OCaml regular
    expressions. These expressions are generated fomr the UTF-8 XML
    charsets contained in the file [meta/meta_xml_re.ml]. The
    implementation of this module is generated by the command [make -f
    meta.mk re/xml_re.ml].  *)

(** Return the string data following the characters of a given string
    data matching {b S} as defined in XML 1.0 and XML 1.1. *)
val next_S : Stringdata.t -> Stringdata.t option

(** Test if a given string data matches the first character of a {b
    EncName} as defined in XML 1.0 and XML 1.1. *)
val test_EncNameStartChar : Stringdata.t -> bool

(** Return the string data following the characters of a given string
    data matching {b EncName} as defined in XML 1.0 and XML 1.1. *)
val next_EncNameChar : Stringdata.t -> Stringdata.t option

(** Test if a given string data matches the first character of a {b
    Name} as defined in XML 1.0 and XML 1.1 with character [':']
    removed as specified by NSXML 1.0. *)
val test_NameStartChar_NS_mDisc : Stringdata.t -> bool

(** Return the string data following the characters of a given string
    data matching {b Name} as defined in XML 1.0 and XML 1.1 with
    character [':'] removed as specified by NSXML 1.0. *)
val next_NameChar_NS_mDisc : Stringdata.t -> Stringdata.t option

(** Test whether a given string data matches {b Name} as defined in
    XML 1.0 and XML 1.1 with character [':'] removed as specified by
    NSXML 1.0. *)
val test_Name_NS_mDisc : Stringdata.t -> bool

(** Match the character set {b CharData} from XML 1.0. *)
val next_CharData_mDisc_1_0 : Stringdata.t -> Stringdata.t option

(** Match the character set {b CharData} from XML 1.1. *)
val next_CharData_mDisc_1_1 : Stringdata.t -> Stringdata.t option

(** Match the character set {b CharData} from XML 1.0 without
    character ['\]'] to identify ["\]\]>"]. *)
val next_CharData_mDisc_no_square_closing_bracket_1_0 :
  Stringdata.t -> Stringdata.t option

(** Match the character set {b CharData} from XML 1.1 without
    character ['\]'] to identify ["\]\]>"]. *)
val next_CharData_mDisc_no_square_closing_bracket_1_1 :
  Stringdata.t -> Stringdata.t option

(** Match the character set {b Char} from XML 1.0 without
    character ['\]'] to identify ["\]\]>"]. *)
val next_Char_mDisc_no_square_closing_bracket_1_0 :
  Stringdata.t -> Stringdata.t option

(** Match the character set {b Char} from XML 1.1 without
    character ['\]'] to identify ["\]\]>"]. *)
val next_Char_mDisc_no_square_closing_bracket_1_1 :
  Stringdata.t -> Stringdata.t option

(** Match the character set {b Char} from XML 1.0 without
    character ['-'] to identify ["--"]. *)
val next_Char_mDisc_no_hyphen_minus_1_0 : Stringdata.t -> Stringdata.t option

(** Match the character set {b Char} from XML 1.1 without
    character ['-'] to identify ["--"]. *)
val next_Char_mDisc_no_hyphen_minus_1_1 : Stringdata.t -> Stringdata.t option

(** Match the character set {b Char} from XML 1.0 without
    character ['?'] to identify ["?>"]. *)
val next_Char_mDisc_no_question_mark_1_0 :
  Stringdata.t -> Stringdata.t option

(** Match the character set {b Char} from XML 1.1 without
    character ['?'] to identify ["?>"]. *)
val next_Char_mDisc_no_question_mark_1_1 :
  Stringdata.t -> Stringdata.t option

(** Match the character set {b AttValue} from XML 1.0 surrounded by
    single quotes. *)
val next_AttValue_singlequote_mDisc_1_0 : Stringdata.t -> Stringdata.t option

(** Match the character set {b AttValue} from XML 1.1 surrounded by
    single quotes. *)
val next_AttValue_singlequote_mDisc_1_1 : Stringdata.t -> Stringdata.t option

(** Match the character set {b AttValue} from XML 1.0 surrounded by
    double quotes. *)
val next_AttValue_doublequote_mDisc_1_0 : Stringdata.t -> Stringdata.t option

(** Match the character set {b AttValue} from XML 1.1 surrounded by
    double quotes. *)
val next_AttValue_doublequote_mDisc_1_1 : Stringdata.t -> Stringdata.t option

(** Test whether a given string data is a potential XML language for
    attribute {b xml:lang}, as defined in the XSD non primitive type
    {b language}. *)
val test_language : Stringdata.t -> bool


(** Test whether a given string data is a well formed URI (sequence of
    {b Char} characters from XML 1.0 or the {b string} XSD primitive
    type). *)
val test_uri : Stringdata.t -> bool
