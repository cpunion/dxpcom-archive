/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStandardURL.idl
 */

module mozilla.dxpcom.nsIStandardURLD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStandardURL;


public import mozilla.dxpcom.nsIStandardURLD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIStandardURL */
/**
 * nsIStandardURL defines the interface to an URL with the standard
 * file path format common to protocols like http, ftp, and file.
 * It supports initialization from a relative path and provides
 * some customization on how URLs are normalized.
 *
 * @status UNDER_REVIEW
 */
class nsIStandardURLD : public nsISupportsD {

  static const nsIID IID = NS_ISTANDARDURL_IID;


  alias nsIStandardURL InnerType;

  this(nsIStandardURL intr){
    super(intr);
    this.inner = intr;
  }

  nsIStandardURL opCast() {
    return inner;
  }

  void opAssign(nsIStandardURL value) {
    inner = value;
  }

  /**
     * blah:foo/bar    => blah://foo/bar
     * blah:/foo/bar   => blah:///foo/bar
     * blah://foo/bar  => blah://foo/bar
     * blah:///foo/bar => blah:///foo/bar
     */
  enum { URLTYPE_STANDARD = 1U }

  /**
     * blah:foo/bar    => blah://foo/bar
     * blah:/foo/bar   => blah://foo/bar
     * blah://foo/bar  => blah://foo/bar
     * blah:///foo/bar => blah://foo/bar
     */
  enum { URLTYPE_AUTHORITY = 2U }

  /**
     * blah:foo/bar    => blah:///foo/bar
     * blah:/foo/bar   => blah:///foo/bar
     * blah://foo/bar  => blah://foo/bar
     * blah:///foo/bar => blah:///foo/bar
     */
  enum { URLTYPE_NO_AUTHORITY = 3U }

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
  void Init(PRUint32 aUrlType, PRInt32 aDefaultPort, char[] aSpec, char*aOriginCharset, nsIURID aBaseURI){
    scope auto _aSpec = new ACString(aSpec);
    nsresult __result = inner.Init(aUrlType, aDefaultPort, cast(nsACString*)_aSpec, aOriginCharset, aBaseURI ? cast(nsIURI)aBaseURI : null);
    CheckException(__result);
  }

  /**
     * Control whether or not this URL can be modified.  Protocol handlers
     * can set this flag before handing out an URL to ensure that it is not
     * inadvertently modified.
     */
  /* attribute boolean mutable; */
  PRBool Mutable(){
    PRBool value;
    nsresult __result = inner.GetMutable(&value);
    CheckException(__result);
    return value;
  }
  void Mutable(PRBool aMutable){
    nsresult __result = inner.SetMutable(aMutable);
    CheckException(__result);
  }

private:
  nsIStandardURL inner;

}

