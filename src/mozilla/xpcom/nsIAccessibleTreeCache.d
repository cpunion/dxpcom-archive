/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleTreeCache.idl
 */

module mozilla.xpcom.nsIAccessibleTreeCache;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsITreeColumns;

public import mozilla.xpcom.nsIAccessible; /* forward declaration */


/* starting interface:    nsIAccessibleTreeCache */
const char[] NS_IACCESSIBLETREECACHE_IID_STR = "cc742da2-9c25-4d04-96cd-da407d676c6d";

const nsIID NS_IACCESSIBLETREECACHE_IID= 
  {0xcc742da2, 0x9c25, 0x4d04, 
    [ 0x96, 0xcd, 0xda, 0x40, 0x7d, 0x67, 0x6c, 0x6d ]};

/**
 * A cross-platform interface that supports cache for tree item 
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIAccessibleTreeCache : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLETREECACHE_IID_STR;
  static const nsIID IID = NS_IACCESSIBLETREECACHE_IID;

  /**
   * Get tree item from cache according to row and column, create if doesn't exist in cache
   * "aColumn" can be nsnull
   */
  /* [noscript] nsIAccessible getCachedTreeitemAccessible (in PRInt32 aRow, in nsITreeColumn aColumn); */
  nsresult GetCachedTreeitemAccessible(PRInt32 aRow, nsITreeColumn aColumn, nsIAccessible *_retval);

}

