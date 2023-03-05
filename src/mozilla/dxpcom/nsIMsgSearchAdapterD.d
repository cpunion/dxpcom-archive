/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchAdapter.idl
 */

module mozilla.dxpcom.nsIMsgSearchAdapterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSearchAdapter;


public import mozilla.dxpcom.nsIMsgSearchAdapterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsMsgSearchCore;
public import mozilla.dxpcom.nsMsgSearchCoreD;
public import mozilla.xpcom.nsIMsgSearchScopeTerm;
public import mozilla.dxpcom.nsIMsgSearchScopeTermD;
public import mozilla.xpcom.nsIMsgHdr;
public import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsIMsgSearchAdapter */
class nsIMsgSearchAdapterD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSEARCHADAPTER_IID;


  alias nsIMsgSearchAdapter InnerType;

  this(nsIMsgSearchAdapter intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSearchAdapter opCast() {
    return inner;
  }

  void opAssign(nsIMsgSearchAdapter value) {
    inner = value;
  }

  /* void ValidateTerms (); */
  void ValidateTerms(){
    nsresult __result = inner.ValidateTerms();
    CheckException(__result);
  }

  /* void Search (out boolean done); */
  void Search(out PRBool done){
    nsresult __result = inner.Search(&done);
    CheckException(__result);
  }

  /* void SendUrl (); */
  void SendUrl(){
    nsresult __result = inner.SendUrl();
    CheckException(__result);
  }

  /* void CurrentUrlDone (in long exitCode); */
  void CurrentUrlDone(PRInt32 exitCode){
    nsresult __result = inner.CurrentUrlDone(exitCode);
    CheckException(__result);
  }

  /* void AddHit (in nsMsgKey key); */
  void AddHit(nsMsgKey key){
    nsresult __result = inner.AddHit(key);
    CheckException(__result);
  }

  /* void AddResultElement (in nsIMsgDBHdr aHdr); */
  void AddResultElement(nsIMsgDBHdrD aHdr){
    nsresult __result = inner.AddResultElement(aHdr ? cast(nsIMsgDBHdr)aHdr : null);
    CheckException(__result);
  }

  /* [noscript] void OpenResultElement (in nsMsgResultElement element); */
  void OpenResultElement(nsMsgResultElementD element){
    nsresult __result = inner.OpenResultElement(element ? cast(nsMsgResultElement)element : null);
    CheckException(__result);
  }

  /* [noscript] void ModifyResultElement (in nsMsgResultElement element, in nsMsgSearchValue value); */
  void ModifyResultElement(nsMsgResultElementD element, nsMsgSearchValue * value){
    nsresult __result = inner.ModifyResultElement(element ? cast(nsMsgResultElement)element : null, value);
    CheckException(__result);
  }

  /* readonly attribute string encoding; */
  char* Encoding(){
    char* value;
    nsresult __result = inner.GetEncoding(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript] nsIMsgFolder FindTargetFolder ([const] in nsMsgResultElement element); */
  nsIMsgFolderD  FindTargetFolder(nsMsgResultElementD element){
    nsIMsgFolder _retval;
    nsresult __result = inner.FindTargetFolder(element ? cast(nsMsgResultElement)element : null, &_retval);
    CheckException(__result);
    return new nsIMsgFolderD(_retval);
  }

  /* void Abort (); */
  void Abort(){
    nsresult __result = inner.Abort();
    CheckException(__result);
  }

  /* void getSearchCharsets (out wstring srcCharset, out wstring destCharset); */
  void GetSearchCharsets(out PRUnichar*srcCharset, out PRUnichar*destCharset){
    nsresult __result = inner.GetSearchCharsets(&srcCharset, &destCharset);
    CheckException(__result);
  }

private:
  nsIMsgSearchAdapter inner;

}

