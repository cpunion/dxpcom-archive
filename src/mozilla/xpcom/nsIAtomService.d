/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAtomService.idl
 */

module mozilla.xpcom.nsIAtomService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIAtom;


/* starting interface:    nsIAtomService */
const char[] NS_IATOMSERVICE_IID_STR = "e5d0d92b-ea45-4622-ab48-302baf2094ee";

const nsIID NS_IATOMSERVICE_IID= 
  {0xe5d0d92b, 0xea45, 0x4622, 
    [ 0xab, 0x48, 0x30, 0x2b, 0xaf, 0x20, 0x94, 0xee ]};

extern(Windows)
interface nsIAtomService : nsISupports {
  static const char[] IID_STR = NS_IATOMSERVICE_IID_STR;
  static const nsIID IID = NS_IATOMSERVICE_IID;

  /**
   * Version of NS_NewAtom that doesn't require linking against the
   * XPCOM library.  See nsIAtom.idl.
   */
  /* nsIAtom getAtom (in wstring value); */
  nsresult GetAtom(PRUnichar *value, nsIAtom *_retval);

  /**
   * Version of NS_NewPermanentAtom that doesn't require linking against
   * the XPCOM library.  See nsIAtom.idl.
   */
  /* nsIAtom getPermanentAtom (in wstring value); */
  nsresult GetPermanentAtom(PRUnichar *value, nsIAtom *_retval);

}

