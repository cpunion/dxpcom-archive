/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURL.idl
 */

module mozilla.dxpcom.nsIURLD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIURL;


public import mozilla.dxpcom.nsIURLD;

public import mozilla.xpcom.nsIURI;
public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIURL */
/**
 * The nsIURL interface provides convenience methods that further
 * break down the path portion of nsIURI:
 *
 * http://directory/fileBaseName.fileExtension?query
 * http://directory/fileBaseName.fileExtension#ref
 * http://directory/fileBaseName.fileExtension;param
 *       \          \                       /
 *        \          -----------------------
 *         \                   |          /
 *          \               fileName     /
 *           ----------------------------
 *                       |
 *                   filePath
 *
 * @status FROZEN
 */
class nsIURLD : public nsIURID {

  static const nsIID IID = NS_IURL_IID;


  alias nsIURL InnerType;

  this(nsIURL intr){
    super(intr);
    this.inner = intr;
  }

  nsIURL opCast() {
    return inner;
  }

  void opAssign(nsIURL value) {
    inner = value;
  }

  /*************************************************************************
     * The URL path is broken down into the following principal components:
     */
/**
     * Returns a path including the directory and file portions of a
     * URL.  For example, the filePath of "http://foo/bar.html#baz" is
     * "/foo/bar.html".
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String filePath; */
  char[] FilePath(){
    scope auto value = new ACString();
    nsresult __result = inner.GetFilePath(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void FilePath(char[] aFilePath){
    scope auto value = new ACString(aFilePath);
    nsresult __result = inner.SetFilePath(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Returns the parameters specified after the ; in the URL. 
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String param; */
  char[] Param(){
    scope auto value = new ACString();
    nsresult __result = inner.GetParam(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Param(char[] aParam){
    scope auto value = new ACString(aParam);
    nsresult __result = inner.SetParam(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Returns the query portion (the part after the "?") of the URL.
     * If there isn't one, an empty string is returned.
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String query; */
  char[] Query(){
    scope auto value = new ACString();
    nsresult __result = inner.GetQuery(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Query(char[] aQuery){
    scope auto value = new ACString(aQuery);
    nsresult __result = inner.SetQuery(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Returns the reference portion (the part after the "#") of the URL.
     * If there isn't one, an empty string is returned.
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String ref; */
  char[] Ref(){
    scope auto value = new ACString();
    nsresult __result = inner.GetRef(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Ref(char[] aRef){
    scope auto value = new ACString(aRef);
    nsresult __result = inner.SetRef(cast(nsACString*)value);
    CheckException(__result);
  }

  /*************************************************************************
     * The URL filepath is broken down into the following sub-components:
     */
/**
     * Returns the directory portion of a URL. 
     * If the URL denotes a path to a directory and not a file,
     * e.g. http://foo/bar/, then the Directory attribute accesses
     * the complete /foo/bar/ portion, and the FileName is the 
     * empty string. If the trailing slash is omitted, then the
     * Directory is /foo/ and the file is bar (i.e. this is a 
     * syntactic, not a semantic breakdown of the Path).
     * And hence dont rely on this for something to be a definitely 
     * be a file. But you can get just the leading directory portion 
     * for sure.
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String directory; */
  char[] Directory(){
    scope auto value = new ACString();
    nsresult __result = inner.GetDirectory(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Directory(char[] aDirectory){
    scope auto value = new ACString(aDirectory);
    nsresult __result = inner.SetDirectory(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Returns the file name portion of a URL.
     * If the URL denotes a path to a directory and not a file,
     * e.g. http://foo/bar/, then the Directory attribute accesses
     * the complete /foo/bar/ portion, and the FileName is the 
     * empty string. Note that this is purely based on searching 
     * for the last trailing slash. And hence dont rely on this to 
     * be a definite file. 
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String fileName; */
  char[] FileName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetFileName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void FileName(char[] aFileName){
    scope auto value = new ACString(aFileName);
    nsresult __result = inner.SetFileName(cast(nsACString*)value);
    CheckException(__result);
  }

  /*************************************************************************
     * The URL filename is broken down even further:
     */
/**
     * Returns the file basename portion of a filename in a url.
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String fileBaseName; */
  char[] FileBaseName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetFileBaseName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void FileBaseName(char[] aFileBaseName){
    scope auto value = new ACString(aFileBaseName);
    nsresult __result = inner.SetFileBaseName(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Returns the file extension portion of a filename in a url.  If a file
     * extension does not exist, the empty string is returned.
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String fileExtension; */
  char[] FileExtension(){
    scope auto value = new ACString();
    nsresult __result = inner.GetFileExtension(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void FileExtension(char[] aFileExtension){
    scope auto value = new ACString(aFileExtension);
    nsresult __result = inner.SetFileExtension(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * This method takes a uri and compares the two.  The common uri portion
     * is returned as a string.  The minimum common uri portion is the 
     * protocol, and any of these if present:  login, password, host and port
     * If no commonality is found, "" is returned.  If they are identical, the
     * whole path with file/ref/etc. is returned.  For file uris, it is
     * expected that the common spec would be at least "file:///" since '/' is
     * a shared common root.
     *
     * Examples:
     *    this.spec               aURIToCompare.spec        result
     * 1) http://mozilla.org/     http://www.mozilla.org/   ""
     * 2) http://foo.com/bar/     ftp://foo.com/bar/        ""
     * 3) http://foo.com:8080/    http://foo.com/bar/       ""
     * 4) ftp://user@foo.com/     ftp://user:pw@foo.com/    ""
     * 5) ftp://foo.com/bar/      ftp://foo.com/bar         ftp://foo.com/
     * 6) ftp://foo.com/bar/      ftp://foo.com/bar/b.html  ftp://foo.com/bar/
     * 7) http://foo.com/a.htm#i  http://foo.com/b.htm      http://foo.com/
     * 8) ftp://foo.com/c.htm#i   ftp://foo.com/c.htm       ftp://foo.com/c.htm
     * 9) file:///a/b/c.html      file:///d/e/c.html        file:///
     */
  /* AUTF8String getCommonBaseSpec (in nsIURI aURIToCompare); */
  char[] GetCommonBaseSpec(nsIURID aURIToCompare){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetCommonBaseSpec(aURIToCompare ? cast(nsIURI)aURIToCompare : null, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * This method takes a uri and returns a substring of this if it can be
     * made relative to the uri passed in.  If no commonality is found, the
     * entire uri spec is returned.  If they are identical, "" is returned.
     * Filename, query, etc are always returned except when uris are identical.
     */
  /* AUTF8String getRelativeSpec (in nsIURI aURIToCompare); */
  char[] GetRelativeSpec(nsIURID aURIToCompare){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetRelativeSpec(aURIToCompare ? cast(nsIURI)aURIToCompare : null, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIURL inner;

}

