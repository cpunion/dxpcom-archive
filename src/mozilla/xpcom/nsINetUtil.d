/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINetUtil.idl
 */

module mozilla.xpcom.nsINetUtil;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsINetUtil */
const char[] NS_INETUTIL_IID_STR = "f0c5dddb-4713-4603-af2d-bf671838996b";

const nsIID NS_INETUTIL_IID= 
  {0xf0c5dddb, 0x4713, 0x4603, 
    [ 0xaf, 0x2d, 0xbf, 0x67, 0x18, 0x38, 0x99, 0x6b ]};

/**
 * nsINetUtil provides various network-related utility methods.
 */
extern(Windows)
interface nsINetUtil : nsISupports {
  static const char[] IID_STR = NS_INETUTIL_IID_STR;
  static const nsIID IID = NS_INETUTIL_IID;

  /**
   * Parse a content-type header and return the content type and
   * charset (if any).
   *
   * @param aTypeHeader the header string to parse
   * @param [out] aCharset the charset parameter specified in the
   *              header, if any.
   * @param [out] aHadCharset whether a charset was explicitly specified.
   * @return the MIME type specified in the header, in lower-case.
   */
  /* AUTF8String parseContentType (in AUTF8String aTypeHeader, out AUTF8String aCharset, out boolean aHadCharset); */
  nsresult ParseContentType(nsACString * aTypeHeader, nsACString * aCharset, PRBool *aHadCharset, nsACString * _retval);

}

