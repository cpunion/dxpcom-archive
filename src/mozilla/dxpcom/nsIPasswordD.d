/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPassword.idl
 */

module mozilla.dxpcom.nsIPasswordD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPassword;


public import mozilla.dxpcom.nsIPasswordD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPassword */
/** 
 * An optional interface for clients wishing to access a
 * password object
 * 
 * @status FROZEN
 */
class nsIPasswordD : public nsISupportsD {

  static const nsIID IID = NS_IPASSWORD_IID;


  alias nsIPassword InnerType;

  this(nsIPassword intr){
    super(intr);
    this.inner = intr;
  }

  nsIPassword opCast() {
    return inner;
  }

  void opAssign(nsIPassword value) {
    inner = value;
  }

  /**
     * the name of the host corresponding to the login being saved
     *
     * The form of the host depends on how the nsIPassword object was created
     *
     * - if it was created as a result of submitting a form to a site, then the
     *   host is the url of the site, as obtained from a call to GetSpec
     *
     * - if it was created as a result of another app (e.g., mailnews) calling a
     *   prompt routine such at PromptUsernameAndPassword, then the host is whatever
     *   arbitrary string the app decided to pass in.
     *
     * Whatever form it is in, it will be used by the password manager to uniquely
     * identify the login realm, so that "newsserver:119" is not the same thing as
     * "newsserver".
     */
  /* readonly attribute AUTF8String host; */
  char[] Host(){
    scope auto value = new ACString();
    nsresult __result = inner.GetHost(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * the user name portion of the login
     */
  /* readonly attribute AString user; */
  wchar[] User(){
    scope auto value = new AString();
    nsresult __result = inner.GetUser(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * the password portion of the login
     */
  /* readonly attribute AString password; */
  wchar[] Password(){
    scope auto value = new AString();
    nsresult __result = inner.GetPassword(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIPassword inner;

}

