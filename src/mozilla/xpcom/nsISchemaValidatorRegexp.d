/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISchemaValidatorRegexp.idl
 */

module mozilla.xpcom.nsISchemaValidatorRegexp;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISchemaValidatorRegexp */
const char[] NS_ISCHEMAVALIDATORREGEXP_IID_STR = "26d69f7e-f7cf-423d-afb9-43d8a9ebf3ba";

const nsIID NS_ISCHEMAVALIDATORREGEXP_IID= 
  {0x26d69f7e, 0xf7cf, 0x423d, 
    [ 0xaf, 0xb9, 0x43, 0xd8, 0xa9, 0xeb, 0xf3, 0xba ]};

extern(Windows)
interface nsISchemaValidatorRegexp : nsISupports {
  static const char[] IID_STR = NS_ISCHEMAVALIDATORREGEXP_IID_STR;
  static const nsIID IID = NS_ISCHEMAVALIDATORREGEXP_IID;

  /* boolean runRegexp (in DOMString aString, in DOMString aRegexpString, in string aModifierString); */
  nsresult RunRegexp(nsAString * aString, nsAString * aRegexpString, char *aModifierString, PRBool *_retval);

}

