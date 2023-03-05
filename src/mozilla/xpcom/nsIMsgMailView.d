/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgMailView.idl
 */

module mozilla.xpcom.nsIMsgMailView;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;

public import mozilla.xpcom.nsIMsgSearchTerm; /* forward declaration */


/* starting interface:    nsIMsgMailView */
const char[] NS_IMSGMAILVIEW_IID_STR = "28ac84df-cbe5-430d-a5c0-4fa63b5424df";

const nsIID NS_IMSGMAILVIEW_IID= 
  {0x28ac84df, 0xcbe5, 0x430d, 
    [ 0xa5, 0xc0, 0x4f, 0xa6, 0x3b, 0x54, 0x24, 0xdf ]};

extern(Windows)
interface nsIMsgMailView : nsISupports {
  static const char[] IID_STR = NS_IMSGMAILVIEW_IID_STR;
  static const nsIID IID = NS_IMSGMAILVIEW_IID;

  /* attribute wstring mailViewName; */
  nsresult GetMailViewName(PRUnichar * *aMailViewName);
  nsresult SetMailViewName(PRUnichar * aMailViewName);

  /* readonly attribute wstring prettyName; */
  nsresult GetPrettyName(PRUnichar * *aPrettyName);

  /* attribute nsISupportsArray searchTerms; */
  nsresult GetSearchTerms(nsISupportsArray  *aSearchTerms);
  nsresult SetSearchTerms(nsISupportsArray  aSearchTerms);

  /* void appendTerm (in nsIMsgSearchTerm term); */
  nsresult AppendTerm(nsIMsgSearchTerm term);

  /* nsIMsgSearchTerm createTerm (); */
  nsresult CreateTerm(nsIMsgSearchTerm *_retval);

}

