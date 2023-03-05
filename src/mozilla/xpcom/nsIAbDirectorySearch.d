/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbDirectorySearch.idl
 */

module mozilla.xpcom.nsIAbDirectorySearch;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAbDirectorySearch */
const char[] NS_IABDIRECTORYSEARCH_IID_STR = "abf26047-37e3-44fd-a28a-6d37a1b9ccb3";

const nsIID NS_IABDIRECTORYSEARCH_IID= 
  {0xabf26047, 0x37e3, 0x44fd, 
    [ 0xa2, 0x8a, 0x6d, 0x37, 0xa1, 0xb9, 0xcc, 0xb3 ]};

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
extern(Windows)
interface nsIAbDirectorySearch : nsISupports {
  static const char[] IID_STR = NS_IABDIRECTORYSEARCH_IID_STR;
  static const nsIID IID = NS_IABDIRECTORYSEARCH_IID;

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
  nsresult StartSearch();

  /**
     * Stops a search on the directory.
     *
     */
  /* void stopSearch (); */
  nsresult StopSearch();

}

