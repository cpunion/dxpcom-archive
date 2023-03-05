/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbDirectorySearch.idl
 */

module mozilla.dxpcom.nsIAbDirectorySearchD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbDirectorySearch;


public import mozilla.dxpcom.nsIAbDirectorySearchD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIAbDirectorySearch */
/**
 * Searching of cards on a directory.
 *
 * The search data is defined in the query
 * section of the directory URI, for example
 *
 * moz-abldapdirectory://ldap1.holland/dc=sun,dc=com?<query>
 *
 * If no search data is defined then the methods
 * will return immediately with no error. 
 */
class nsIAbDirectorySearchD : public nsISupportsD {

  static const nsIID IID = NS_IABDIRECTORYSEARCH_IID;


  alias nsIAbDirectorySearch InnerType;

  this(nsIAbDirectorySearch intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbDirectorySearch opCast() {
    return inner;
  }

  void opAssign(nsIAbDirectorySearch value) {
    inner = value;
  }

  /**
     * Starts a search on the directory.
     *
     * If a search is already being performed
     * it is stopped.
     *
     * The results from a search, cards, will
     * returned by informing the address book
     * session that a new card has been added
     * to the directory.
     *
     * The nsIAbDirectoryQuery implementation
     * of the directory component (or a proxy)
     * may be used as an implementation for
     * this specialization of query.
     *
     * This method is semantically equivalent
     * to the nsIAbDirectory.getChildCards
     * method when there is search criteria
     * defined in the directory uri.
     *
     */
  /* void startSearch (); */
  void StartSearch(){
    nsresult __result = inner.StartSearch();
    CheckException(__result);
  }

  /**
     * Stops a search on the directory.
     *
     */
  /* void stopSearch (); */
  void StopSearch(){
    nsresult __result = inner.StopSearch();
    CheckException(__result);
  }

private:
  nsIAbDirectorySearch inner;

}

