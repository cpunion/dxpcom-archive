/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWalletService.idl
 */

module mozilla.xpcom.nsIWalletService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */

public import mozilla.xpcom.nsIPrompt; /* forward declaration */


/* starting interface:    nsIWalletService */
const char[] NS_IWALLETSERVICE_IID_STR = "fedbf066-9c29-4307-86b1-2c0f69717fc5";

const nsIID NS_IWALLETSERVICE_IID= 
  {0xfedbf066, 0x9c29, 0x4307, 
    [ 0x86, 0xb1, 0x2c, 0x0f, 0x69, 0x71, 0x7f, 0xc5 ]};

/**
 * The nsIWalletService interface provides an API to the wallet service.
 * This is a preliminary interface which <B>will</B> change over time!
 *
 */
extern(Windows)
interface nsIWalletService : nsISupports {
  static const char[] IID_STR = NS_IWALLETSERVICE_IID_STR;
  static const nsIID IID = NS_IWALLETSERVICE_IID;

  /* void WALLET_PreEdit (out AString walletList); */
  nsresult WALLET_PreEdit(nsAString * walletList);

  /* void WALLET_PostEdit (in AString walletList); */
  nsresult WALLET_PostEdit(nsAString * walletList);

  /* boolean WALLET_ChangePassword (); */
  nsresult WALLET_ChangePassword(PRBool *_retval);

  /* void WALLET_DeleteAll (); */
  nsresult WALLET_DeleteAll();

  /* unsigned long WALLET_RequestToCapture (in nsIDOMWindowInternal win); */
  nsresult WALLET_RequestToCapture(nsIDOMWindowInternal win, PRUint32 *_retval);

  /* boolean WALLET_Prefill (in boolean quick, in nsIDOMWindowInternal win); */
  nsresult WALLET_Prefill(PRBool quick, nsIDOMWindowInternal win, PRBool *_retval);

  /* wstring WALLET_PrefillOneElement (in nsIDOMWindowInternal win, in nsIDOMNode elementNode); */
  nsresult WALLET_PrefillOneElement(nsIDOMWindowInternal win, nsIDOMNode elementNode, PRUnichar **_retval);

  /* void WALLET_PrefillReturn (in AString results); */
  nsresult WALLET_PrefillReturn(nsAString * results);

  /* boolean WALLET_ExpirePassword (); */
  nsresult WALLET_ExpirePassword(PRBool *_retval);

  /* void WALLET_InitReencryptCallback (in nsIDOMWindowInternal win); */
  nsresult WALLET_InitReencryptCallback(nsIDOMWindowInternal win);

  /* boolean haveData (in nsIPrompt dialog, in string key, in wstring userName); */
  nsresult HaveData(nsIPrompt dialog, char *key, PRUnichar *userName, PRBool *_retval);

  /* void WALLET_GetNopreviewListForViewer (out AString aNopreviewList); */
  nsresult WALLET_GetNopreviewListForViewer(nsAString * aNopreviewList);

  /* void WALLET_GetNocaptureListForViewer (out AString aNocaptureList); */
  nsresult WALLET_GetNocaptureListForViewer(nsAString * aNocaptureList);

  /* void WALLET_GetPrefillListForViewer (out AString aPrefillList); */
  nsresult WALLET_GetPrefillListForViewer(nsAString * aPrefillList);

  /* void SI_SignonViewerReturn (in AString results); */
  nsresult SI_SignonViewerReturn(nsAString * results);

  /* string WALLET_Encrypt (in wstring text); */
  nsresult WALLET_Encrypt(PRUnichar *text, char **_retval);

  /* wstring WALLET_Decrypt (in string crypt); */
  nsresult WALLET_Decrypt(char *crypt, PRUnichar **_retval);

}

