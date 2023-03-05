/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURLParser.idl
 */

module mozilla.dxpcom.nsIURLParserD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIURLParser;


public import mozilla.dxpcom.nsIURLParserD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIURLParser */
/**
 * nsIURLParser specifies the interface to an URL parser that attempts to
 * follow the definitions of RFC 2396.
 */
class nsIURLParserD : public nsISupportsD {

  static const nsIID IID = NS_IURLPARSER_IID;


  alias nsIURLParser InnerType;

  this(nsIURLParser intr){
    super(intr);
    this.inner = intr;
  }

  nsIURLParser opCast() {
    return inner;
  }

  void opAssign(nsIURLParser value) {
    inner = value;
  }

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
  void ParseURL(char*spec, PRInt32 specLen, out PRUint32 schemePos, out PRInt32 schemeLen, out PRUint32 authorityPos, out PRInt32 authorityLen, out PRUint32 pathPos, out PRInt32 pathLen){
    nsresult __result = inner.ParseURL(spec, specLen, &schemePos, &schemeLen, &authorityPos, &authorityLen, &pathPos, &pathLen);
    CheckException(__result);
  }

  /**
     * ParseAuthority breaks the authority string up into its 4 components:
     * username, password, hostname, and hostport.
     *
     * auth = <username>:<password>@<hostname>:<port>
     */
  /* void parseAuthority (in string authority, in long authorityLen, out unsigned long usernamePos, out long usernameLen, out unsigned long passwordPos, out long passwordLen, out unsigned long hostnamePos, out long hostnameLen, out long port); */
  void ParseAuthority(char*authority, PRInt32 authorityLen, out PRUint32 usernamePos, out PRInt32 usernameLen, out PRUint32 passwordPos, out PRInt32 passwordLen, out PRUint32 hostnamePos, out PRInt32 hostnameLen, out PRInt32 port){
    nsresult __result = inner.ParseAuthority(authority, authorityLen, &usernamePos, &usernameLen, &passwordPos, &passwordLen, &hostnamePos, &hostnameLen, &port);
    CheckException(__result);
  }

  /**
     * userinfo = <username>:<password>
     */
  /* void parseUserInfo (in string userinfo, in long userinfoLen, out unsigned long usernamePos, out long usernameLen, out unsigned long passwordPos, out long passwordLen); */
  void ParseUserInfo(char*userinfo, PRInt32 userinfoLen, out PRUint32 usernamePos, out PRInt32 usernameLen, out PRUint32 passwordPos, out PRInt32 passwordLen){
    nsresult __result = inner.ParseUserInfo(userinfo, userinfoLen, &usernamePos, &usernameLen, &passwordPos, &passwordLen);
    CheckException(__result);
  }

  /**
     * serverinfo = <hostname>:<port>
     */
  /* void parseServerInfo (in string serverinfo, in long serverinfoLen, out unsigned long hostnamePos, out long hostnameLen, out long port); */
  void ParseServerInfo(char*serverinfo, PRInt32 serverinfoLen, out PRUint32 hostnamePos, out PRInt32 hostnameLen, out PRInt32 port){
    nsresult __result = inner.ParseServerInfo(serverinfo, serverinfoLen, &hostnamePos, &hostnameLen, &port);
    CheckException(__result);
  }

  /**
     * ParsePath breaks the path string up into its 4 major components: a file path,
     * a param string, a query string, and a reference string.
     *
     * path = <filepath>;<param>?<query>#<ref>
     */
  /* void parsePath (in string path, in long pathLen, out unsigned long filepathPos, out long filepathLen, out unsigned long paramPos, out long paramLen, out unsigned long queryPos, out long queryLen, out unsigned long refPos, out long refLen); */
  void ParsePath(char*path, PRInt32 pathLen, out PRUint32 filepathPos, out PRInt32 filepathLen, out PRUint32 paramPos, out PRInt32 paramLen, out PRUint32 queryPos, out PRInt32 queryLen, out PRUint32 refPos, out PRInt32 refLen){
    nsresult __result = inner.ParsePath(path, pathLen, &filepathPos, &filepathLen, &paramPos, &paramLen, &queryPos, &queryLen, &refPos, &refLen);
    CheckException(__result);
  }

  /**
     * ParseFilePath breaks the file path string up into: the directory portion,
     * file base name, and file extension.
     *
     * filepath = <directory><basename>.<extension>
     */
  /* void parseFilePath (in string filepath, in long filepathLen, out unsigned long directoryPos, out long directoryLen, out unsigned long basenamePos, out long basenameLen, out unsigned long extensionPos, out long extensionLen); */
  void ParseFilePath(char*filepath, PRInt32 filepathLen, out PRUint32 directoryPos, out PRInt32 directoryLen, out PRUint32 basenamePos, out PRInt32 basenameLen, out PRUint32 extensionPos, out PRInt32 extensionLen){
    nsresult __result = inner.ParseFilePath(filepath, filepathLen, &directoryPos, &directoryLen, &basenamePos, &basenameLen, &extensionPos, &extensionLen);
    CheckException(__result);
  }

  /**
     * filename = <basename>.<extension>
     */
  /* void parseFileName (in string filename, in long filenameLen, out unsigned long basenamePos, out long basenameLen, out unsigned long extensionPos, out long extensionLen); */
  void ParseFileName(char*filename, PRInt32 filenameLen, out PRUint32 basenamePos, out PRInt32 basenameLen, out PRUint32 extensionPos, out PRInt32 extensionLen){
    nsresult __result = inner.ParseFileName(filename, filenameLen, &basenamePos, &basenameLen, &extensionPos, &extensionLen);
    CheckException(__result);
  }

private:
  nsIURLParser inner;

}

