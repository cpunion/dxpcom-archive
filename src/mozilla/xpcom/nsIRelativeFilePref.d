/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRelativeFilePref.idl
 */

module mozilla.xpcom.nsIRelativeFilePref;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILocalFile; /* forward declaration */


/* starting interface:    nsIRelativeFilePref */
const char[] NS_IRELATIVEFILEPREF_IID_STR = "2f977d4e-5485-11d4-87e2-0010a4e75ef2";

const nsIID NS_IRELATIVEFILEPREF_IID= 
  {0x2f977d4e, 0x5485, 0x11d4, 
    [ 0x87, 0xe2, 0x00, 0x10, 0xa4, 0xe7, 0x5e, 0xf2 ]};

/**
 * The nsIRelativeFilePref interface is a wrapper for an nsILocalFile and
 * and a directory service key. When used as a pref value, it stores a
 * relative path to the file from the location pointed to by the directory
 * service key. The path has the same syntax across all platforms.
 *
 * @see nsIPrefBranch::getComplexValue
 * @see nsIPrefBranch::setComplexValue
 * 
 */
extern(Windows)
interface nsIRelativeFilePref : nsISupports {
  static const char[] IID_STR = NS_IRELATIVEFILEPREF_IID_STR;
  static const nsIID IID = NS_IRELATIVEFILEPREF_IID;

  /**
   * file
   *
   * The file whose location is stored or retrieved.
   */
  /* attribute nsILocalFile file; */
  nsresult GetFile(nsILocalFile  *aFile);
  nsresult SetFile(nsILocalFile  aFile);

  /**
   * relativeToKey
   *
   * A directory service key for the directory
   * from which the file path is relative.
   */
  /* attribute ACString relativeToKey; */
  nsresult GetRelativeToKey(nsACString * aRelativeToKey);
  nsresult SetRelativeToKey(nsACString * aRelativeToKey);

}

