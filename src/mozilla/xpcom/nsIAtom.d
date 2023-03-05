/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAtom.idl
 */

module mozilla.xpcom.nsIAtom;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAtom */
const char[] NS_IATOM_IID_STR = "3d1b15b0-93b4-11d1-895b-006008911b81";

const nsIID NS_IATOM_IID= 
  {0x3d1b15b0, 0x93b4, 0x11d1, 
    [ 0x89, 0x5b, 0x00, 0x60, 0x08, 0x91, 0x1b, 0x81 ]};

extern(Windows)
interface nsIAtom : nsISupports {
  static const char[] IID_STR = NS_IATOM_IID_STR;
  static const nsIID IID = NS_IATOM_IID;

  /**
   * Get the Unicode or UTF8 value for the string
   */
  /* AString toString (); */
  nsresult ToString(nsAString * _retval);

  /* AUTF8String toUTF8String (); */
  nsresult ToUTF8String(nsACString * _retval);

  /**
   * Return a pointer to a zero terminated UTF8 string.
   */
  /* [noscript] void getUTF8String ([shared, retval] out string aResult); */
  nsresult GetUTF8String(char **aResult);

  /**
   * Compare the atom to a specific string value
   * Note that this will NEVER return/throw an error condition.
   */
  /* boolean equals (in AString aString); */
  nsresult Equals(nsAString * aString, PRBool *_retval);

  /* boolean equalsUTF8 (in AUTF8String aString); */
  nsresult EqualsUTF8(nsACString * aString, PRBool *_retval);

}

