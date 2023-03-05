/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMacUtils.idl
 */

module mozilla.xpcom.nsIMacUtils;


import mozilla.xpcom.nsrootidl;

import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMacUtils */
const char[] NS_IMACUTILS_IID_STR = "f6fc107c-5cba-4c5c-a35e-b69d580d1db6";

const nsIID NS_IMACUTILS_IID= 
  {0xf6fc107c, 0x5cba, 0x4c5c, 
    [ 0xa3, 0x5e, 0xb6, 0x9d, 0x58, 0x0d, 0x1d, 0xb6 ]};

/**
 * nsIMacUtils: Generic globally-available Mac-specific utilities.
 */
extern(Windows)
interface nsIMacUtils : nsISupports {
  static const char[] IID_STR = NS_IMACUTILS_IID_STR;
  static const nsIID IID = NS_IMACUTILS_IID;

  /**
   * True when the main executable is a fat file supporting at least
   * ppc and x86 (universal binary).
   */
  /* readonly attribute boolean isUniversalBinary; */
  nsresult GetIsUniversalBinary(PRBool *aIsUniversalBinary);

  /**
   * True when running under binary translation (Rosetta).
   */
  /* readonly attribute boolean isTranslated; */
  nsresult GetIsTranslated(PRBool *aIsTranslated);

}

