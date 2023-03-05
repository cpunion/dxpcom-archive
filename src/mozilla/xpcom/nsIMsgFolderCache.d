/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFolderCache.idl
 */

module mozilla.xpcom.nsIMsgFolderCache;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIMsgFolderCacheElement; /* forward declaration */


/* starting interface:    nsIMsgFolderCache */
const char[] NS_IMSGFOLDERCACHE_IID_STR = "a340a8c8-3587-4d7a-a2af-ed06b923d5ac";

const nsIID NS_IMSGFOLDERCACHE_IID= 
  {0xa340a8c8, 0x3587, 0x4d7a, 
    [ 0xa2, 0xaf, 0xed, 0x06, 0xb9, 0x23, 0xd5, 0xac ]};

extern(Windows)
interface nsIMsgFolderCache : nsISupports {
  static const char[] IID_STR = NS_IMSGFOLDERCACHE_IID_STR;
  static const nsIID IID = NS_IMSGFOLDERCACHE_IID;

  /* void Init (in nsIFileSpec fileSpec); */
  nsresult Init(nsIFileSpec fileSpec);

  /* nsIMsgFolderCacheElement GetCacheElement (in string key, in boolean createIfMissing); */
  nsresult GetCacheElement(char *key, PRBool createIfMissing, nsIMsgFolderCacheElement *_retval);

  /* void clear (); */
  nsresult Clear();

  /* void close (); */
  nsresult Close();

  /* void commit (in boolean compress); */
  nsresult Commit(PRBool compress);

  /* void removeElement (in string key); */
  nsresult RemoveElement(char *key);

}

