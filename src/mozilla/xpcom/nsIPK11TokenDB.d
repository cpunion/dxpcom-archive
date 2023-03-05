/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPK11TokenDB.idl
 */

module mozilla.xpcom.nsIPK11TokenDB;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPK11Token; /* forward declaration */

public import mozilla.xpcom.nsIEnumerator; /* forward declaration */


/* starting interface:    nsIPK11TokenDB */
const char[] NS_IPK11TOKENDB_IID_STR = "4ee28c82-1dd2-11b2-aabf-bb4017abe395";

const nsIID NS_IPK11TOKENDB_IID= 
  {0x4ee28c82, 0x1dd2, 0x11b2, 
    [ 0xaa, 0xbf, 0xbb, 0x40, 0x17, 0xab, 0xe3, 0x95 ]};

/**
 * The PK11 Token Database provides access to the PK11 modules
 * that are installed, and the tokens that are available.
 * Interfaces: nsIPK11TokenDB
 * Threading: ??
 */
/**
 * nsIPK11TokenDB - Manages PK11 Tokens
 */
extern(Windows)
interface nsIPK11TokenDB : nsISupports {
  static const char[] IID_STR = NS_IPK11TOKENDB_IID_STR;
  static const nsIID IID = NS_IPK11TOKENDB_IID;

  /* nsIPK11Token getInternalKeyToken (); */
  nsresult GetInternalKeyToken(nsIPK11Token *_retval);

  /* nsIPK11Token findTokenByName (in wstring tokenName); */
  nsresult FindTokenByName(PRUnichar *tokenName, nsIPK11Token *_retval);

  /* nsIEnumerator listTokens (); */
  nsresult ListTokens(nsIEnumerator *_retval);

}

