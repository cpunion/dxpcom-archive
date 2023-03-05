/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleTreeCache.idl
 */

module mozilla.dxpcom.nsIAccessibleTreeCacheD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleTreeCache;


public import mozilla.dxpcom.nsIAccessibleTreeCacheD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsITreeColumns;
public import mozilla.dxpcom.nsITreeColumnsD;

public import mozilla.xpcom.nsIAccessible;

public import mozilla.dxpcom.nsIAccessibleD;


/* starting wrapper class:    nsIAccessibleTreeCache */
/**
 * A cross-platform interface that supports cache for tree item 
 *
 * @status UNDER_REVIEW
 */
class nsIAccessibleTreeCacheD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLETREECACHE_IID;


  alias nsIAccessibleTreeCache InnerType;

  this(nsIAccessibleTreeCache intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleTreeCache opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleTreeCache value) {
    inner = value;
  }

  /**
   * Get tree item from cache according to row and column, create if doesn't exist in cache
   * "aColumn" can be nsnull
   */
  /* [noscript] nsIAccessible getCachedTreeitemAccessible (in PRInt32 aRow, in nsITreeColumn aColumn); */
  nsIAccessibleD  GetCachedTreeitemAccessible(PRInt32 aRow, nsITreeColumnD aColumn){
    nsIAccessible _retval;
    nsresult __result = inner.GetCachedTreeitemAccessible(aRow, aColumn ? cast(nsITreeColumn)aColumn : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

private:
  nsIAccessibleTreeCache inner;

}

