/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStandardURL.idl
 */

module mozilla.xpcom.nsIStandardURL;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIStandardURL */
const char[] NS_ISTANDARDURL_IID_STR = "8793370a-311f-11d4-9876-00c04fa0cf4a";

const nsIID NS_ISTANDARDURL_IID= 
  {0x8793370a, 0x311f, 0x11d4, 
    [ 0x98, 0x76, 0x00, 0xc0, 0x4f, 0xa0, 0xcf, 0x4a ]};

/**
 * nsIStandardURL defines the interface to an URL with the standard
 * file path format common to protocols like http, ftp, and file.
 * It supports initialization from a relative path and provides
 * some customization on how URLs are normalized.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIStandardURL : nsISupports {
  static const char[] IID_STR = NS_ISTANDARDURL_IID_STR;
  static const nsIID IID = NS_ISTANDARDURL_IID;

  /**
     * blah:foo/bar    => blah://foo/bar
     * blah:/foo/bar   => blah:///foo/bar
     * blah://foo/bar  => blah://foo/bar
     * blah:///foo/bar => blah:///foo/bar
     */
  enum { URLTYPE_STANDARD = 1U };

  /**
     * blah:foo/bar    => blah://foo/bar
     * blah:/foo/bar   => blah://foo/bar
     * blah://foo/bar  => blah://foo/bar
     * blah:///foo/bar => blah://foo/bar
     */
  enum { URLTYPE_AUTHORITY = 2U };

  /**
     * blah:foo/bar    => blah:///foo/bar
     * blah:/foo/bar   => blah:///foo/bar
     * blah://foo/bar  => blah://foo/bar
     * blah:///foo/bar => blah:///foo/bar
     */
  enum { URLTYPE_NO_AUTHORITY = 3U };

  /**
     * Initialize a standard URL.
     *
     * @param aUrlType       - one of the URLTYPE_ flags listed above.
     * @param aDefaultPort   - if the port parsed from the URL string matches
     *                         this port, then the port will be removed from the
     *                         canonical form of the URL.
     * @param aSpec          - URL string.
     * @param aOriginCharset - the charset from which this URI string
     *                         originated.  this corresponds to the charset
     *                         that should be used when communicating this
     *                         URI to an origin server, for example.  if
     *                         null, then provide aBaseURI implements this
     *                         interface, the origin charset of aBaseURI will
     *                         be assumed, otherwise defaulting to UTF-8 (i.e.,
     *                         no charset transformation from aSpec).
     * @param aBaseURI       - if null, aSpec must specify an absolute URI.
     *                         otherwise, aSpec will be resolved relative
     *                         to aBaseURI.
     */
  /* void init (in unsigned long aUrlType, in long aDefaultPort, in AUTF8String aSpec, in string aOriginCharset, in nsIURI aBaseURI); */
  nsresult Init(PRUint32 aUrlType, PRInt32 aDefaultPort, nsACString * aSpec, char *aOriginCharset, nsIURI aBaseURI);

  /**
     * Control whether or not this URL can be modified.  Protocol handlers
     * can set this flag before handing out an URL to ensure that it is not
     * inadvertently modified.
     */
  /* attribute boolean mutable; */
  nsresult GetMutable(PRBool *aMutable);
  nsresult SetMutable(PRBool aMutable);

}

