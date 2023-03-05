/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURLParser.idl
 */

module mozilla.xpcom.nsIURLParser;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIURLParser */
const char[] NS_IURLPARSER_IID_STR = "7281076d-cf37-464a-815e-698235802604";

const nsIID NS_IURLPARSER_IID= 
  {0x7281076d, 0xcf37, 0x464a, 
    [ 0x81, 0x5e, 0x69, 0x82, 0x35, 0x80, 0x26, 0x04 ]};

/**
 * nsIURLParser specifies the interface to an URL parser that attempts to
 * follow the definitions of RFC 2396.
 */
extern(Windows)
interface nsIURLParser : nsISupports {
  static const char[] IID_STR = NS_IURLPARSER_IID_STR;
  static const nsIID IID = NS_IURLPARSER_IID;

  /**
     * The string to parse in the following methods may be given as a null
     * terminated string, in which case the length argument should be -1.
     *
     * Out parameters of the following methods are all optional (ie. the caller
     * may pass-in a NULL value if the corresponding results are not needed).
     * Signed out parameters may hold a value of -1 if the corresponding result
     * is not part of the string being parsed.
     *
     * The parsing routines attempt to be as forgiving as possible.
     */
/**
     * ParseSpec breaks the URL string up into its 3 major components: a scheme,
     * an authority section (hostname, etc.), and a path.
     *
     * spec = <scheme>://<authority><path>
     */
  /* void parseURL (in string spec, in long specLen, out unsigned long schemePos, out long schemeLen, out unsigned long authorityPos, out long authorityLen, out unsigned long pathPos, out long pathLen); */
  nsresult ParseURL(char *spec, PRInt32 specLen, PRUint32 *schemePos, PRInt32 *schemeLen, PRUint32 *authorityPos, PRInt32 *authorityLen, PRUint32 *pathPos, PRInt32 *pathLen);

  /**
     * ParseAuthority breaks the authority string up into its 4 components:
     * username, password, hostname, and hostport.
     *
     * auth = <username>:<password>@<hostname>:<port>
     */
  /* void parseAuthority (in string authority, in long authorityLen, out unsigned long usernamePos, out long usernameLen, out unsigned long passwordPos, out long passwordLen, out unsigned long hostnamePos, out long hostnameLen, out long port); */
  nsresult ParseAuthority(char *authority, PRInt32 authorityLen, PRUint32 *usernamePos, PRInt32 *usernameLen, PRUint32 *passwordPos, PRInt32 *passwordLen, PRUint32 *hostnamePos, PRInt32 *hostnameLen, PRInt32 *port);

  /**
     * userinfo = <username>:<password>
     */
  /* void parseUserInfo (in string userinfo, in long userinfoLen, out unsigned long usernamePos, out long usernameLen, out unsigned long passwordPos, out long passwordLen); */
  nsresult ParseUserInfo(char *userinfo, PRInt32 userinfoLen, PRUint32 *usernamePos, PRInt32 *usernameLen, PRUint32 *passwordPos, PRInt32 *passwordLen);

  /**
     * serverinfo = <hostname>:<port>
     */
  /* void parseServerInfo (in string serverinfo, in long serverinfoLen, out unsigned long hostnamePos, out long hostnameLen, out long port); */
  nsresult ParseServerInfo(char *serverinfo, PRInt32 serverinfoLen, PRUint32 *hostnamePos, PRInt32 *hostnameLen, PRInt32 *port);

  /**
     * ParsePath breaks the path string up into its 4 major components: a file path,
     * a param string, a query string, and a reference string.
     *
     * path = <filepath>;<param>?<query>#<ref>
     */
  /* void parsePath (in string path, in long pathLen, out unsigned long filepathPos, out long filepathLen, out unsigned long paramPos, out long paramLen, out unsigned long queryPos, out long queryLen, out unsigned long refPos, out long refLen); */
  nsresult ParsePath(char *path, PRInt32 pathLen, PRUint32 *filepathPos, PRInt32 *filepathLen, PRUint32 *paramPos, PRInt32 *paramLen, PRUint32 *queryPos, PRInt32 *queryLen, PRUint32 *refPos, PRInt32 *refLen);

  /**
     * ParseFilePath breaks the file path string up into: the directory portion,
     * file base name, and file extension.
     *
     * filepath = <directory><basename>.<extension>
     */
  /* void parseFilePath (in string filepath, in long filepathLen, out unsigned long directoryPos, out long directoryLen, out unsigned long basenamePos, out long basenameLen, out unsigned long extensionPos, out long extensionLen); */
  nsresult ParseFilePath(char *filepath, PRInt32 filepathLen, PRUint32 *directoryPos, PRInt32 *directoryLen, PRUint32 *basenamePos, PRInt32 *basenameLen, PRUint32 *extensionPos, PRInt32 *extensionLen);

  /**
     * filename = <basename>.<extension>
     */
  /* void parseFileName (in string filename, in long filenameLen, out unsigned long basenamePos, out long basenameLen, out unsigned long extensionPos, out long extensionLen); */
  nsresult ParseFileName(char *filename, PRInt32 filenameLen, PRUint32 *basenamePos, PRInt32 *basenameLen, PRUint32 *extensionPos, PRInt32 *extensionLen);

}

