/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURI.idl
 */

module mozilla.dxpcom.nsIURID;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIURI;


public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIURI */
/**
 * URIs are essentially structured names for things -- anything. This interface
 * provides accessors to set and query the most basic components of an URI.
 * Subclasses, including nsIURL, impose greater structure on the URI.
 *
 * This interface follows Tim Berners-Lee's URI spec (RFC2396) [1], where the
 * basic URI components are defined as such:
 *  
 *      ftp://username:password@hostname:portnumber/pathname
 *      \ /   \               / \      / \        /\       /
 *       -     ---------------   ------   --------  -------
 *       |            |             |        |         |
 *       |            |             |        |        Path
 *       |            |             |       Port         
 *       |            |            Host      /
 *       |         UserPass                 /
 *     Scheme                              /
 *       \                                /
 *        --------------------------------
 *                       |
 *                    PrePath
 *
 * The definition of the URI components has been extended to allow for
 * internationalized domain names [2] and the more generic IRI structure [3].
 *
 * [1] http://www.ietf.org/rfc/rfc2396.txt
 * [2] http://www.ietf.org/internet-drafts/draft-ietf-idn-idna-06.txt
 * [3] http://www.ietf.org/internet-drafts/draft-masinter-url-i18n-08.txt
 */
/**
 * nsIURI - interface for an uniform resource identifier w/ i18n support.
 *
 * AUTF8String attributes may contain unescaped UTF-8 characters.
 * Consumers should be careful to escape the UTF-8 strings as necessary, but
 * should always try to "display" the UTF-8 version as provided by this
 * interface.
 *
 * AUTF8String attributes may also contain escaped characters.
 * 
 * Unescaping URI segments is unadvised unless there is intimate
 * knowledge of the underlying charset or there is no plan to display (or
 * otherwise enforce a charset on) the resulting URI substring.
 * 
 * @status FROZEN
 */
class nsIURID : public nsISupportsD {

  static const nsIID IID = NS_IURI_IID;


  alias nsIURI InnerType;

  this(nsIURI intr){
    super(intr);
    this.inner = intr;
  }

  nsIURI opCast() {
    return inner;
  }

  void opAssign(nsIURI value) {
    inner = value;
  }

  /************************************************************************
     * The URI is broken down into the following principal components:
     */
/**
     * Returns a string representation of the URI. Setting the spec causes
     * the new spec to be parsed, initializing the URI.
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String spec; */
  char[] Spec(){
    scope auto value = new ACString();
    nsresult __result = inner.GetSpec(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Spec(char[] aSpec){
    scope auto value = new ACString(aSpec);
    nsresult __result = inner.SetSpec(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * The prePath (eg. scheme://user:password@host:port) returns the string
     * before the path.  This is useful for authentication or managing sessions.
     *
     * Some characters may be escaped.
     */
  /* readonly attribute AUTF8String prePath; */
  char[] PrePath(){
    scope auto value = new ACString();
    nsresult __result = inner.GetPrePath(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * The Scheme is the protocol to which this URI refers.  The scheme is
     * restricted to the US-ASCII charset per RFC2396.
     */
  /* attribute ACString scheme; */
  char[] Scheme(){
    scope auto value = new ACString();
    nsresult __result = inner.GetScheme(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Scheme(char[] aScheme){
    scope auto value = new ACString(aScheme);
    nsresult __result = inner.SetScheme(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * The username:password (or username only if value doesn't contain a ':')
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String userPass; */
  char[] UserPass(){
    scope auto value = new ACString();
    nsresult __result = inner.GetUserPass(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void UserPass(char[] aUserPass){
    scope auto value = new ACString(aUserPass);
    nsresult __result = inner.SetUserPass(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * The optional username and password, assuming the preHost consists of
     * username:password.
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String username; */
  char[] Username(){
    scope auto value = new ACString();
    nsresult __result = inner.GetUsername(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Username(char[] aUsername){
    scope auto value = new ACString(aUsername);
    nsresult __result = inner.SetUsername(cast(nsACString*)value);
    CheckException(__result);
  }

  /* attribute AUTF8String password; */
  char[] Password(){
    scope auto value = new ACString();
    nsresult __result = inner.GetPassword(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Password(char[] aPassword){
    scope auto value = new ACString(aPassword);
    nsresult __result = inner.SetPassword(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * The host:port (or simply the host, if port == -1).
     *
     * Characters are NOT escaped.
     */
  /* attribute AUTF8String hostPort; */
  char[] HostPort(){
    scope auto value = new ACString();
    nsresult __result = inner.GetHostPort(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void HostPort(char[] aHostPort){
    scope auto value = new ACString(aHostPort);
    nsresult __result = inner.SetHostPort(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * The host is the internet domain name to which this URI refers.  It could
     * be an IPv4 (or IPv6) address literal.  If supported, it could be a
     * non-ASCII internationalized domain name.
     *
     * Characters are NOT escaped.
     */
  /* attribute AUTF8String host; */
  char[] Host(){
    scope auto value = new ACString();
    nsresult __result = inner.GetHost(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Host(char[] aHost){
    scope auto value = new ACString(aHost);
    nsresult __result = inner.SetHost(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * A port value of -1 corresponds to the protocol's default port (eg. -1
     * implies port 80 for http URIs).
     */
  /* attribute long port; */
  PRInt32 Port(){
    PRInt32 value;
    nsresult __result = inner.GetPort(&value);
    CheckException(__result);
    return value;
  }
  void Port(PRInt32 aPort){
    nsresult __result = inner.SetPort(aPort);
    CheckException(__result);
  }

  /**
     * The path, typically including at least a leading '/' (but may also be
     * empty, depending on the protocol).
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String path; */
  char[] Path(){
    scope auto value = new ACString();
    nsresult __result = inner.GetPath(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Path(char[] aPath){
    scope auto value = new ACString(aPath);
    nsresult __result = inner.SetPath(cast(nsACString*)value);
    CheckException(__result);
  }

  /************************************************************************
     * An URI supports the following methods:
     */
/**
     * URI equivalence test (not a strict string comparison).
     *
     * eg. http://foo.com:80/ == http://foo.com/
     */
  /* boolean equals (in nsIURI other); */
  PRBool Equals(nsIURID other){
    PRBool _retval;
    nsresult __result = inner.Equals(other ? cast(nsIURI)other : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * An optimization to do scheme checks without requiring the users of nsIURI
     * to GetScheme, thereby saving extra allocating and freeing. Returns true if
     * the schemes match (case ignored).
     */
  /* boolean schemeIs (in string scheme); */
  PRBool SchemeIs(char*scheme){
    PRBool _retval;
    nsresult __result = inner.SchemeIs(scheme, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Clones the current URI.  For some protocols, this is more than just an
     * optimization.  For example, under MacOS, the spec of a file URL does not
     * necessarily uniquely identify a file since two volumes could share the
     * same name.
     */
  /* nsIURI clone (); */
  nsIURID  Clone(){
    nsIURI _retval;
    nsresult __result = inner.Clone(&_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
     * This method resolves a relative string into an absolute URI string,
     * using this URI as the base. 
     *
     * NOTE: some implementations may have no concept of a relative URI.
     */
  /* AUTF8String resolve (in AUTF8String relativePath); */
  char[] Resolve(char[] relativePath){
    scope auto _relativePath = new ACString(relativePath);
    scope auto _retval = new ACString;
    nsresult __result = inner.Resolve(cast(nsACString*)_relativePath, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /************************************************************************
     * Additional attributes:
     */
/**
     * The URI spec with an ASCII compatible encoding.  Host portion follows
     * the IDNA draft spec.  Other parts are URL-escaped per the rules of
     * RFC2396.  The result is strictly ASCII.
     */
  /* readonly attribute ACString asciiSpec; */
  char[] AsciiSpec(){
    scope auto value = new ACString();
    nsresult __result = inner.GetAsciiSpec(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * The URI host with an ASCII compatible encoding.  Follows the IDNA
     * draft spec for converting internationalized domain names (UTF-8) to
     * ASCII for compatibility with existing internet infrasture.
     */
  /* readonly attribute ACString asciiHost; */
  char[] AsciiHost(){
    scope auto value = new ACString();
    nsresult __result = inner.GetAsciiHost(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * The charset of the document from which this URI originated.  An empty
     * value implies UTF-8.
     *
     * If this value is something other than UTF-8 then the URI components
     * (e.g., spec, prePath, username, etc.) will all be fully URL-escaped.
     * Otherwise, the URI components may contain unescaped multibyte UTF-8
     * characters.
     */
  /* readonly attribute ACString originCharset; */
  char[] OriginCharset(){
    scope auto value = new ACString();
    nsresult __result = inner.GetOriginCharset(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIURI inner;

}

