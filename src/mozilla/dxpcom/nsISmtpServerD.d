/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISmtpServer.idl
 */

module mozilla.dxpcom.nsISmtpServerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISmtpServer;


public import mozilla.dxpcom.nsISmtpServerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAuthPrompt;

public import mozilla.dxpcom.nsIAuthPromptD;


/* starting wrapper class:    nsISmtpServer */
class nsISmtpServerD : public nsISupportsD {

  static const nsIID IID = NS_ISMTPSERVER_IID;


  alias nsISmtpServer InnerType;

  this(nsISmtpServer intr){
    super(intr);
    this.inner = intr;
  }

  nsISmtpServer opCast() {
    return inner;
  }

  void opAssign(nsISmtpServer value) {
    inner = value;
  }

  /* attribute string key; */
  char* Key(){
    char* value;
    nsresult __result = inner.GetKey(&value);
    CheckException(__result);
    return value;
  }
  void Key(char* aKey){
    nsresult __result = inner.SetKey(aKey);
    CheckException(__result);
  }

  /* attribute AUTF8String description; */
  char[] Description(){
    scope auto value = new ACString();
    nsresult __result = inner.GetDescription(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Description(char[] aDescription){
    scope auto value = new ACString(aDescription);
    nsresult __result = inner.SetDescription(cast(nsACString*)value);
    CheckException(__result);
  }

  /* attribute string hostname; */
  char* Hostname(){
    char* value;
    nsresult __result = inner.GetHostname(&value);
    CheckException(__result);
    return value;
  }
  void Hostname(char* aHostname){
    nsresult __result = inner.SetHostname(aHostname);
    CheckException(__result);
  }

  /* attribute PRInt32 port; */
  PRInt32 Port(){
    PRInt32 value;
    nsresult __result = inner.GetPort(&value);
    CheckException(__result);
    return value;
  }
  void Port(PRInt32 aPort){
    PRInt32 value;
    nsresult __result = inner.SetPort(value);
    CheckException(__result);
  }

  /* attribute string username; */
  char* Username(){
    char* value;
    nsresult __result = inner.GetUsername(&value);
    CheckException(__result);
    return value;
  }
  void Username(char* aUsername){
    nsresult __result = inner.SetUsername(aUsername);
    CheckException(__result);
  }

  /* attribute string password; */
  char* Password(){
    char* value;
    nsresult __result = inner.GetPassword(&value);
    CheckException(__result);
    return value;
  }
  void Password(char* aPassword){
    nsresult __result = inner.SetPassword(aPassword);
    CheckException(__result);
  }

  /* readonly attribute string displayname; */
  char* Displayname(){
    char* value;
    nsresult __result = inner.GetDisplayname(&value);
    CheckException(__result);
    return value;
  }

  /* attribute string redirectorType; */
  char* RedirectorType(){
    char* value;
    nsresult __result = inner.GetRedirectorType(&value);
    CheckException(__result);
    return value;
  }
  void RedirectorType(char* aRedirectorType){
    nsresult __result = inner.SetRedirectorType(aRedirectorType);
    CheckException(__result);
  }

  /* attribute long authMethod; */
  PRInt32 AuthMethod(){
    PRInt32 value;
    nsresult __result = inner.GetAuthMethod(&value);
    CheckException(__result);
    return value;
  }
  void AuthMethod(PRInt32 aAuthMethod){
    nsresult __result = inner.SetAuthMethod(aAuthMethod);
    CheckException(__result);
  }

  /* readonly attribute boolean trySecAuth; */
  PRBool TrySecAuth(){
    PRBool value;
    nsresult __result = inner.GetTrySecAuth(&value);
    CheckException(__result);
    return value;
  }

  /* attribute long trySSL; */
  PRInt32 TrySSL(){
    PRInt32 value;
    nsresult __result = inner.GetTrySSL(&value);
    CheckException(__result);
    return value;
  }
  void TrySSL(PRInt32 aTrySSL){
    nsresult __result = inner.SetTrySSL(aTrySSL);
    CheckException(__result);
  }

  /* readonly attribute string serverURI; */
  char* ServerURI(){
    char* value;
    nsresult __result = inner.GetServerURI(&value);
    CheckException(__result);
    return value;
  }

  /* string getPasswordWithUI (in wstring promptString, in wstring promptTitle, in nsIAuthPrompt netPrompt); */
  char* GetPasswordWithUI(PRUnichar*promptString, PRUnichar*promptTitle, nsIAuthPromptD netPrompt){
    char* _retval;
    nsresult __result = inner.GetPasswordWithUI(promptString, promptTitle, netPrompt ? cast(nsIAuthPrompt)netPrompt : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void getUsernamePasswordWithUI (in wstring promptString, in wstring promptTitle, in nsIAuthPrompt netPrompt, out string userid, out string password); */
  void GetUsernamePasswordWithUI(PRUnichar*promptString, PRUnichar*promptTitle, nsIAuthPromptD netPrompt, out char*userid, out char*password){
    nsresult __result = inner.GetUsernamePasswordWithUI(promptString, promptTitle, netPrompt ? cast(nsIAuthPrompt)netPrompt : null, &userid, &password);
    CheckException(__result);
  }

  /* void forgetPassword (); */
  void ForgetPassword(){
    nsresult __result = inner.ForgetPassword();
    CheckException(__result);
  }

  /* void clearAllValues (); */
  void ClearAllValues(){
    nsresult __result = inner.ClearAllValues();
    CheckException(__result);
  }

private:
  nsISmtpServer inner;

}

