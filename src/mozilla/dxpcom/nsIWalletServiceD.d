/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWalletService.idl
 */

module mozilla.dxpcom.nsIWalletServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWalletService;


public import mozilla.dxpcom.nsIWalletServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.xpcom.nsIPrompt;

public import mozilla.dxpcom.nsIPromptD;


/* starting wrapper class:    nsIWalletService */
/**
 * The nsIWalletService interface provides an API to the wallet service.
 * This is a preliminary interface which <B>will</B> change over time!
 *
 */
class nsIWalletServiceD : public nsISupportsD {

  static const nsIID IID = NS_IWALLETSERVICE_IID;


  alias nsIWalletService InnerType;

  this(nsIWalletService intr){
    super(intr);
    this.inner = intr;
  }

  nsIWalletService opCast() {
    return inner;
  }

  void opAssign(nsIWalletService value) {
    inner = value;
  }

  /* void WALLET_PreEdit (out AString walletList); */
  void WALLET_PreEdit(wchar[] walletList){
    scope auto _walletList = new AString;
    nsresult __result = inner.WALLET_PreEdit(cast(nsAString*)_walletList);
    CheckException(__result);
    walletList = _walletList.GetString();
  }

  /* void WALLET_PostEdit (in AString walletList); */
  void WALLET_PostEdit(wchar[] walletList){
    scope auto _walletList = new AString(walletList);
    nsresult __result = inner.WALLET_PostEdit(cast(nsAString*)_walletList);
    CheckException(__result);
  }

  /* boolean WALLET_ChangePassword (); */
  PRBool WALLET_ChangePassword(){
    PRBool _retval;
    nsresult __result = inner.WALLET_ChangePassword(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void WALLET_DeleteAll (); */
  void WALLET_DeleteAll(){
    nsresult __result = inner.WALLET_DeleteAll();
    CheckException(__result);
  }

  /* unsigned long WALLET_RequestToCapture (in nsIDOMWindowInternal win); */
  PRUint32 WALLET_RequestToCapture(nsIDOMWindowInternalD win){
    PRUint32 _retval;
    nsresult __result = inner.WALLET_RequestToCapture(win ? cast(nsIDOMWindowInternal)win : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean WALLET_Prefill (in boolean quick, in nsIDOMWindowInternal win); */
  PRBool WALLET_Prefill(PRBool quick, nsIDOMWindowInternalD win){
    PRBool _retval;
    nsresult __result = inner.WALLET_Prefill(quick, win ? cast(nsIDOMWindowInternal)win : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring WALLET_PrefillOneElement (in nsIDOMWindowInternal win, in nsIDOMNode elementNode); */
  PRUnichar* WALLET_PrefillOneElement(nsIDOMWindowInternalD win, nsIDOMNodeD elementNode){
    PRUnichar* _retval;
    nsresult __result = inner.WALLET_PrefillOneElement(win ? cast(nsIDOMWindowInternal)win : null, elementNode ? cast(nsIDOMNode)elementNode : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void WALLET_PrefillReturn (in AString results); */
  void WALLET_PrefillReturn(wchar[] results){
    scope auto _results = new AString(results);
    nsresult __result = inner.WALLET_PrefillReturn(cast(nsAString*)_results);
    CheckException(__result);
  }

  /* boolean WALLET_ExpirePassword (); */
  PRBool WALLET_ExpirePassword(){
    PRBool _retval;
    nsresult __result = inner.WALLET_ExpirePassword(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void WALLET_InitReencryptCallback (in nsIDOMWindowInternal win); */
  void WALLET_InitReencryptCallback(nsIDOMWindowInternalD win){
    nsresult __result = inner.WALLET_InitReencryptCallback(win ? cast(nsIDOMWindowInternal)win : null);
    CheckException(__result);
  }

  /* boolean haveData (in nsIPrompt dialog, in string key, in wstring userName); */
  PRBool HaveData(nsIPromptD dialog, char*key, PRUnichar*userName){
    PRBool _retval;
    nsresult __result = inner.HaveData(dialog ? cast(nsIPrompt)dialog : null, key, userName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void WALLET_GetNopreviewListForViewer (out AString aNopreviewList); */
  void WALLET_GetNopreviewListForViewer(wchar[] aNopreviewList){
    scope auto _aNopreviewList = new AString;
    nsresult __result = inner.WALLET_GetNopreviewListForViewer(cast(nsAString*)_aNopreviewList);
    CheckException(__result);
    aNopreviewList = _aNopreviewList.GetString();
  }

  /* void WALLET_GetNocaptureListForViewer (out AString aNocaptureList); */
  void WALLET_GetNocaptureListForViewer(wchar[] aNocaptureList){
    scope auto _aNocaptureList = new AString;
    nsresult __result = inner.WALLET_GetNocaptureListForViewer(cast(nsAString*)_aNocaptureList);
    CheckException(__result);
    aNocaptureList = _aNocaptureList.GetString();
  }

  /* void WALLET_GetPrefillListForViewer (out AString aPrefillList); */
  void WALLET_GetPrefillListForViewer(wchar[] aPrefillList){
    scope auto _aPrefillList = new AString;
    nsresult __result = inner.WALLET_GetPrefillListForViewer(cast(nsAString*)_aPrefillList);
    CheckException(__result);
    aPrefillList = _aPrefillList.GetString();
  }

  /* void SI_SignonViewerReturn (in AString results); */
  void SI_SignonViewerReturn(wchar[] results){
    scope auto _results = new AString(results);
    nsresult __result = inner.SI_SignonViewerReturn(cast(nsAString*)_results);
    CheckException(__result);
  }

  /* string WALLET_Encrypt (in wstring text); */
  char* WALLET_Encrypt(PRUnichar*text){
    char* _retval;
    nsresult __result = inner.WALLET_Encrypt(text, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring WALLET_Decrypt (in string crypt); */
  PRUnichar* WALLET_Decrypt(char*crypt){
    PRUnichar* _retval;
    nsresult __result = inner.WALLET_Decrypt(crypt, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIWalletService inner;

}

