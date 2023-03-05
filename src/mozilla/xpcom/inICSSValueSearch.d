/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inICSSValueSearch.idl
 */

module mozilla.xpcom.inICSSValueSearch;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.inISearchProcess;

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */


/* starting interface:    inICSSValueSearch */
const char[] INICSSVALUESEARCH_IID_STR = "e0d39e48-1dd1-11b2-81bd-9a0c117f0736";

const nsIID INICSSVALUESEARCH_IID= 
  {0xe0d39e48, 0x1dd1, 0x11b2, 
    [ 0x81, 0xbd, 0x9a, 0x0c, 0x11, 0x7f, 0x07, 0x36 ]};

extern(Windows)
interface inICSSValueSearch : inISearchProcess {
  static const char[] IID_STR = INICSSVALUESEARCH_IID_STR;
  static const nsIID IID = INICSSVALUESEARCH_IID;

  /* attribute nsIDOMDocument document; */
  nsresult GetDocument(nsIDOMDocument  *aDocument);
  nsresult SetDocument(nsIDOMDocument  aDocument);

  /* attribute wstring baseURL; */
  nsresult GetBaseURL(PRUnichar * *aBaseURL);
  nsresult SetBaseURL(PRUnichar * aBaseURL);

  /* attribute boolean returnRelativeURLs; */
  nsresult GetReturnRelativeURLs(PRBool *aReturnRelativeURLs);
  nsresult SetReturnRelativeURLs(PRBool aReturnRelativeURLs);

  /* attribute boolean normalizeChromeURLs; */
  nsresult GetNormalizeChromeURLs(PRBool *aNormalizeChromeURLs);
  nsresult SetNormalizeChromeURLs(PRBool aNormalizeChromeURLs);

  /* void addPropertyCriteria (in wstring aPropName); */
  nsresult AddPropertyCriteria(PRUnichar *aPropName);

  /* attribute wstring textCriteria; */
  nsresult GetTextCriteria(PRUnichar * *aTextCriteria);
  nsresult SetTextCriteria(PRUnichar * aTextCriteria);

}

