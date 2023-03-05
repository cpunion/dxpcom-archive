/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURL.idl
 */

module mozilla.xpcom.nsIURL;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIURI;


/* starting interface:    nsIURL */
const char[] NS_IURL_IID_STR = "d6116970-8034-11d3-9399-00104ba0fd40";

const nsIID NS_IURL_IID= 
  {0xd6116970, 0x8034, 0x11d3, 
    [ 0x93, 0x99, 0x00, 0x10, 0x4b, 0xa0, 0xfd, 0x40 ]};

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
extern(Windows)
interface nsIURL : nsIURI {
  static const char[] IID_STR = NS_IURL_IID_STR;
  static const nsIID IID = NS_IURL_IID;

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
  nsresult GetFilePath(nsACString * aFilePath);
  nsresult SetFilePath(nsACString * aFilePath);

  /**
     * Returns the parameters specified after the ; in the URL. 
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String param; */
  nsresult GetParam(nsACString * aParam);
  nsresult SetParam(nsACString * aParam);

  /**
     * Returns the query portion (the part after the "?") of the URL.
     * If there isn't one, an empty string is returned.
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String query; */
  nsresult GetQuery(nsACString * aQuery);
  nsresult SetQuery(nsACString * aQuery);

  /**
     * Returns the reference portion (the part after the "#") of the URL.
     * If there isn't one, an empty string is returned.
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String ref; */
  nsresult GetRef(nsACString * aRef);
  nsresult SetRef(nsACString * aRef);

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
  nsresult GetDirectory(nsACString * aDirectory);
  nsresult SetDirectory(nsACString * aDirectory);

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
  nsresult GetFileName(nsACString * aFileName);
  nsresult SetFileName(nsACString * aFileName);

  /*************************************************************************
     * The URL filename is broken down even further:
     */
/**
     * Returns the file basename portion of a filename in a url.
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String fileBaseName; */
  nsresult GetFileBaseName(nsACString * aFileBaseName);
  nsresult SetFileBaseName(nsACString * aFileBaseName);

  /**
     * Returns the file extension portion of a filename in a url.  If a file
     * extension does not exist, the empty string is returned.
     *
     * Some characters may be escaped.
     */
  /* attribute AUTF8String fileExtension; */
  nsresult GetFileExtension(nsACString * aFileExtension);
  nsresult SetFileExtension(nsACString * aFileExtension);

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
  nsresult GetCommonBaseSpec(nsIURI aURIToCompare, nsACString * _retval);

  /**
     * This method takes a uri and returns a substring of this if it can be
     * made relative to the uri passed in.  If no commonality is found, the
     * entire uri spec is returned.  If they are identical, "" is returned.
     * Filename, query, etc are always returned except when uris are identical.
     */
  /* AUTF8String getRelativeSpec (in nsIURI aURIToCompare); */
  nsresult GetRelativeSpec(nsIURI aURIToCompare, nsACString * _retval);

}

