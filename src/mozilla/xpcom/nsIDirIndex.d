/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDirIndex.idl
 */

module mozilla.xpcom.nsIDirIndex;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIDirIndex */
const char[] NS_IDIRINDEX_IID_STR = "23bbabd0-1dd2-11b2-86b7-aad68ae7d7e0";

const nsIID NS_IDIRINDEX_IID= 
  {0x23bbabd0, 0x1dd2, 0x11b2, 
    [ 0x86, 0xb7, 0xaa, 0xd6, 0x8a, 0xe7, 0xd7, 0xe0 ]};

/** A class holding information about a directory index.
 * These have no reference back to their original source -
 * changing these attributes won't affect the directory
 */
extern(Windows)
interface nsIDirIndex : nsISupports {
  static const char[] IID_STR = NS_IDIRINDEX_IID_STR;
  static const nsIID IID = NS_IDIRINDEX_IID;

  /**
     * Entry's type is unknown
     */
  enum { TYPE_UNKNOWN = 0U };

  /**
     * Entry is a directory
     */
  enum { TYPE_DIRECTORY = 1U };

  /**
     * Entry is a file
     */
  enum { TYPE_FILE = 2U };

  /**
     * Entry is a symlink
     */
  enum { TYPE_SYMLINK = 3U };

  /**
     * The type of the entry - one of the constants above
     */
  /* attribute unsigned long type; */
  nsresult GetType(PRUint32 *aType);
  nsresult SetType(PRUint32 aType);

  /**
     * The content type - may be null if it is unknown.
     * Unspecified for directories
     */
  /* attribute string contentType; */
  nsresult GetContentType(char * *aContentType);
  nsresult SetContentType(char * aContentType);

  /**
     * The fully qualified filename, expressed as a uri
     *
     * This is encoded with the encoding specified in
     * the nsIDirIndexParser, and is also escaped.
     */
  /* attribute string location; */
  nsresult GetLocation(char * *aLocation);
  nsresult SetLocation(char * aLocation);

  /**
     * A description for the filename, which should be
     * displayed by a viewer
     */
  /* attribute wstring description; */
  nsresult GetDescription(PRUnichar * *aDescription);
  nsresult SetDescription(PRUnichar * aDescription);

  /**
     * File size, with -1 meaning "unknown"
     */
  /* attribute long long size; */
  nsresult GetSize(PRInt64 *aSize);
  nsresult SetSize(PRInt64 aSize);

  /**
     * Last-modified time in seconds-since-epoch.
     * -1 means unknown - this is valid, because there were no
     * ftp servers in 1969
     */
  /* attribute PRTime lastModified; */
  nsresult GetLastModified(PRTime *aLastModified);
  nsresult SetLastModified(PRTime aLastModified);

}

