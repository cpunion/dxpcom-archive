/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchAdapter.idl
 */

module mozilla.xpcom.nsIMsgSearchAdapter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsMsgSearchCore;
public import mozilla.xpcom.nsIMsgSearchScopeTerm;
public import mozilla.xpcom.nsIMsgHdr;


/* starting interface:    nsIMsgSearchAdapter */
const char[] NS_IMSGSEARCHADAPTER_IID_STR = "66f4b80c-0fb5-11d3-a515-0060b0fc04b7";

const nsIID NS_IMSGSEARCHADAPTER_IID= 
  {0x66f4b80c, 0x0fb5, 0x11d3, 
    [ 0xa5, 0x15, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsIMsgSearchAdapter : nsISupports {
  static const char[] IID_STR = NS_IMSGSEARCHADAPTER_IID_STR;
  static const nsIID IID = NS_IMSGSEARCHADAPTER_IID;

  /* void ValidateTerms (); */
  nsresult ValidateTerms();

  /* void Search (out boolean done); */
  nsresult Search(PRBool *done);

  /* void SendUrl (); */
  nsresult SendUrl();

  /* void CurrentUrlDone (in long exitCode); */
  nsresult CurrentUrlDone(PRInt32 exitCode);

  /* void AddHit (in nsMsgKey key); */
  nsresult AddHit(nsMsgKey key);

  /* void AddResultElement (in nsIMsgDBHdr aHdr); */
  nsresult AddResultElement(nsIMsgDBHdr aHdr);

  /* [noscript] void OpenResultElement (in nsMsgResultElement element); */
  nsresult OpenResultElement(nsMsgResultElement element);

  /* [noscript] void ModifyResultElement (in nsMsgResultElement element, in nsMsgSearchValue value); */
  nsresult ModifyResultElement(nsMsgResultElement element, nsMsgSearchValue * value);

  /* readonly attribute string encoding; */
  nsresult GetEncoding(char * *aEncoding);

  /* [noscript] nsIMsgFolder FindTargetFolder ([const] in nsMsgResultElement element); */
  nsresult FindTargetFolder(nsMsgResultElement element, nsIMsgFolder *_retval);

  /* void Abort (); */
  nsresult Abort();

  /* void getSearchCharsets (out wstring srcCharset, out wstring destCharset); */
  nsresult GetSearchCharsets(PRUnichar **srcCharset, PRUnichar **destCharset);

}

