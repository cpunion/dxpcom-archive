/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICookie2.idl
 */

module mozilla.xpcom.nsICookie2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsICookie;


/* starting interface:    nsICookie2 */
const char[] NS_ICOOKIE2_IID_STR = "d3493503-7854-46ed-8284-8af54a847efb";

const nsIID NS_ICOOKIE2_IID= 
  {0xd3493503, 0x7854, 0x46ed, 
    [ 0x82, 0x84, 0x8a, 0xf5, 0x4a, 0x84, 0x7e, 0xfb ]};

/** 
 * Main cookie object interface for use by consumers:
 * extends nsICookie, a frozen interface for external
 * access of cookie objects
 */
extern(Windows)
interface nsICookie2 : nsICookie {
  static const char[] IID_STR = NS_ICOOKIE2_IID_STR;
  static const nsIID IID = NS_ICOOKIE2_IID;

  /**
     * the host (possibly fully qualified) of the cookie,
     * without a leading dot to represent if it is a
     * domain cookie.
     */
  /* readonly attribute AUTF8String rawHost; */
  nsresult GetRawHost(nsACString * aRawHost);

  /**
     * true if the cookie is a session cookie
     * (note: if true, the expiry time is undefined).
     */
  /* readonly attribute boolean isSession; */
  nsresult GetIsSession(PRBool *aIsSession);

  /**
     * the actual expiry time of the cookie
     * (where 0 does not represent a session cookie).
     *
     * not to be confused with |expires|, an
     * attribute on nsICookie.
     */
  /* readonly attribute PRInt64 expiry; */
  nsresult GetExpiry(PRInt64 *aExpiry);

}

