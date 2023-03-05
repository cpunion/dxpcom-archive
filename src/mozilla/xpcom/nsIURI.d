/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURI.idl
 */

module mozilla.xpcom.nsIURI;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIURI */
const char[] NS_IURI_IID_STR = "07a22cc0-0ce5-11d3-9331-00104ba0fd40";

const nsIID NS_IURI_IID= 
  {0x07a22cc0, 0x0ce5, 0x11d3, 
    [ 0x93, 0x31, 0x00, 0x10, 0x4b, 0xa0, 0xfd, 0x40 ]};

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
extern(Windows)
interface nsIURI : nsISupports {
  static const char[] IID_STR = NS_IURI_IID_STR;
  static const nsIID IID = NS_IURI_IID;

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
  nsresult GetSpec(nsACString * aSpec);
  nsresult SetSpec(nsACString * aSpec);

  /**
     * The prePath (eg. scheme://user:password@host:port) returns the string
     * before the path.  This is useful for authentication or managing sessions.
     *
     * Some characters may be escaped.
     */
  /* readonly attribute AUTF8String prePath; */
  nsresult GetPrePath(nsACString * aPrePath);

  /**
     * The Scheme is the protocol to which this URI refers.  The scheme is
     * restricted to the US-ASCII charset per RFC2396.
     */
  /* attribute ACString scheme; */
  nsresult GetScheme(nsACString * aScheme);
  nsresult SetScheme(nsACString * aScheme);

  /**
     * The username:password (or username only if value doesn't contain a ':')
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String userPass; */
  nsresult GetUserPass(nsACString * aUserPass);
  nsresult SetUserPass(nsACString * aUserPass);

  /**
     * The optional username and password, assuming the preHost consists of
     * username:password.
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String username; */
  nsresult GetUsername(nsACString * aUsername);
  nsresult SetUsername(nsACString * aUsername);

  /* attribute AUTF8String password; */
  nsresult GetPassword(nsACString * aPassword);
  nsresult SetPassword(nsACString * aPassword);

  /**
     * The host:port (or simply the host, if port == -1).
     *
     * Characters are NOT escaped.
     */
  /* attribute AUTF8String hostPort; */
  nsresult GetHostPort(nsACString * aHostPort);
  nsresult SetHostPort(nsACString * aHostPort);

  /**
     * The host is the internet domain name to which this URI refers.  It could
     * be an IPv4 (or IPv6) address literal.  If supported, it could be a
     * non-ASCII internationalized domain name.
     *
     * Characters are NOT escaped.
     */
  /* attribute AUTF8String host; */
  nsresult GetHost(nsACString * aHost);
  nsresult SetHost(nsACString * aHost);

  /**
     * A port value of -1 corresponds to the protocol's default port (eg. -1
     * implies port 80 for http URIs).
     */
  /* attribute long port; */
  nsresult GetPort(PRInt32 *aPort);
  nsresult SetPort(PRInt32 aPort);

  /**
     * The path, typically including at least a leading '/' (but may also be
     * empty, depending on the protocol).
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String path; */
  nsresult GetPath(nsACString * aPath);
  nsresult SetPath(nsACString * aPath);

  /************************************************************************
     * An URI supports the following methods:
     */
/**
     * URI equivalence test (not a strict string comparison).
     *
     * eg. http://foo.com:80/ == http://foo.com/
     */
  /* boolean equals (in nsIURI other); */
  nsresult Equals(nsIURI other, PRBool *_retval);

  /**
     * An optimization to do scheme checks without requiring the users of nsIURI
     * to GetScheme, thereby saving extra allocating and freeing. Returns true if
     * the schemes match (case ignored).
     */
  /* boolean schemeIs (in string scheme); */
  nsresult SchemeIs(char *scheme, PRBool *_retval);

  /**
     * Clones the current URI.  For some protocols, this is more than just an
     * optimization.  For example, under MacOS, the spec of a file URL does not
     * necessarily uniquely identify a file since two volumes could share the
     * same name.
     */
  /* nsIURI clone (); */
  nsresult Clone(nsIURI *_retval);

  /**
     * This method resolves a relative string into an absolute URI string,
     * using this URI as the base. 
     *
     * NOTE: some implementations may have no concept of a relative URI.
     */
  /* AUTF8String resolve (in AUTF8String relativePath); */
  nsresult Resolve(nsACString * relativePath, nsACString * _retval);

  /************************************************************************
     * Additional attributes:
     */
/**
     * The URI spec with an ASCII compatible encoding.  Host portion follows
     * the IDNA draft spec.  Other parts are URL-escaped per the rules of
     * RFC2396.  The result is strictly ASCII.
     */
  /* readonly attribute ACString asciiSpec; */
  nsresult GetAsciiSpec(nsACString * aAsciiSpec);

  /**
     * The URI host with an ASCII compatible encoding.  Follows the IDNA
     * draft spec for converting internationalized domain names (UTF-8) to
     * ASCII for compatibility with existing internet infrasture.
     */
  /* readonly attribute ACString asciiHost; */
  nsresult GetAsciiHost(nsACString * aAsciiHost);

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
  nsresult GetOriginCharset(nsACString * aOriginCharset);

}

