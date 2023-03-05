/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIGlobalHistory.idl
 */

module mozilla.xpcom.nsIGlobalHistory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIGlobalHistory */
const char[] NS_IGLOBALHISTORY_IID_STR = "9491c383-e3c4-11d2-bdbe-0050040a9b44";

const nsIID NS_IGLOBALHISTORY_IID= 
  {0x9491c383, 0xe3c4, 0x11d2, 
    [ 0xbd, 0xbe, 0x00, 0x50, 0x04, 0x0a, 0x9b, 0x44 ]};

extern(Windows)
interface nsIGlobalHistory : nsISupports {
  static const char[] IID_STR = NS_IGLOBALHISTORY_IID_STR;
  static const nsIID IID = NS_IGLOBALHISTORY_IID;

  /**
     * addPage
     * Add a page to the history
     *
     * @param aURL the url to the page
     */
  /* void addPage (in string aURL); */
  nsresult AddPage(char *aURL);

  /**
     * isVisited
     * Checks to see if the given page is in history
     *
     * @return true if a page has been passed into addPage().
     * @param aURL the url to the page
     */
  /* boolean isVisited (in string aURL); */
  nsresult IsVisited(char *aURL, PRBool *_retval);

}

