/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteResults.idl
 */

module mozilla.xpcom.nsIAutoCompleteResults;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;


/* starting interface:    nsIAutoCompleteItem */
const char[] NS_IAUTOCOMPLETEITEM_IID_STR = "88dcfa80-062f-11d4-a449-b36a1a94c0fc";

const nsIID NS_IAUTOCOMPLETEITEM_IID= 
  {0x88dcfa80, 0x062f, 0x11d4, 
    [ 0xa4, 0x49, 0xb3, 0x6a, 0x1a, 0x94, 0xc0, 0xfc ]};

extern(Windows)
interface nsIAutoCompleteItem : nsISupports {
  static const char[] IID_STR = NS_IAUTOCOMPLETEITEM_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETEITEM_IID;

  /**
     * the result value
     * using AString to avoid excess allocations
     */
  /* attribute AString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

  /**
     * an extra comment that will be
     * displayed next to the value but that
     * will not be part of the value
     * itself
     */
  /* attribute wstring comment; */
  nsresult GetComment(PRUnichar * *aComment);
  nsresult SetComment(PRUnichar * aComment);

  /**
     * class name used to define some style through
     * css like the colors, an icon url, etc...
     */
  /* attribute string className; */
  nsresult GetClassName(char * *aClassName);
  nsresult SetClassName(char * aClassName);

  /**
     * parameter use by the search engine
     */
  /* attribute nsISupports param; */
  nsresult GetParam(nsISupports  *aParam);
  nsresult SetParam(nsISupports  aParam);

}


/* starting interface:    nsIAutoCompleteResults */
const char[] NS_IAUTOCOMPLETERESULTS_IID_STR = "88dcfa81-062f-11d4-a449-b36a1a94c0fc";

const nsIID NS_IAUTOCOMPLETERESULTS_IID= 
  {0x88dcfa81, 0x062f, 0x11d4, 
    [ 0xa4, 0x49, 0xb3, 0x6a, 0x1a, 0x94, 0xc0, 0xfc ]};

extern(Windows)
interface nsIAutoCompleteResults : nsISupports {
  static const char[] IID_STR = NS_IAUTOCOMPLETERESULTS_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETERESULTS_IID;

  /**
     * the original search string
     */
  /* attribute wstring searchString; */
  nsresult GetSearchString(PRUnichar * *aSearchString);
  nsresult SetSearchString(PRUnichar * aSearchString);

  /**
     * Array of result items (nsIAutoCompleteItem)
     */
  /* attribute nsISupportsArray items; */
  nsresult GetItems(nsISupportsArray  *aItems);
  nsresult SetItems(nsISupportsArray  aItems);

  /**
     * Index (0 base) of the default item that
     * will be preselected and displayed
     */
  /* attribute long defaultItemIndex; */
  nsresult GetDefaultItemIndex(PRInt32 *aDefaultItemIndex);
  nsresult SetDefaultItemIndex(PRInt32 aDefaultItemIndex);

  /**
     * param use by the the search engine
     */
  /* attribute nsISupports param; */
  nsresult GetParam(nsISupports  *aParam);
  nsresult SetParam(nsISupports  aParam);

}

