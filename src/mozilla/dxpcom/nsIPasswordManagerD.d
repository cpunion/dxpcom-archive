/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPasswordManager.idl
 */

module mozilla.dxpcom.nsIPasswordManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPasswordManager;


public import mozilla.dxpcom.nsIPasswordManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIPasswordManager */
/** 
 * An optional interface for clients accessing or removing
 * logins that were collected by the password manager
 * 
 *
 */
class nsIPasswordManagerD : public nsISupportsD {

  static const nsIID IID = NS_IPASSWORDMANAGER_IID;


  alias nsIPasswordManager InnerType;

  this(nsIPasswordManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIPasswordManager opCast() {
    return inner;
  }

  void opAssign(nsIPasswordManager value) {
    inner = value;
  }

  /**
   * Called to add an individual login to the list of saved logins
   *
   * @param aHost The host for which the login is being remembered
   * @param aUser The username portion of the login
   * @param aPassword The password portion of the login
   *
   */
  /* void addUser (in AUTF8String aHost, in AString aUser, in AString aPassword); */
  void AddUser(char[] aHost, wchar[] aUser, wchar[] aPassword){
    scope auto _aHost = new ACString(aHost);
    scope auto _aUser = new AString(aUser);
    scope auto _aPassword = new AString(aPassword);
    nsresult __result = inner.AddUser(cast(nsACString*)_aHost, cast(nsAString*)_aUser, cast(nsAString*)_aPassword);
    CheckException(__result);
  }

  /**
   * Called to remove an individual login from the list of save logins
   *
   * @param aHost The host for which the login is being remembered
   * @param aUser The username portion of the login
   *
   */
  /* void removeUser (in AUTF8String aHost, in AString aUser); */
  void RemoveUser(char[] aHost, wchar[] aUser){
    scope auto _aHost = new ACString(aHost);
    scope auto _aUser = new AString(aUser);
    nsresult __result = inner.RemoveUser(cast(nsACString*)_aHost, cast(nsAString*)_aUser);
    CheckException(__result);
  }

  /**
   * Called to add a host to the list of rejected hosts -- i.e., hosts for which
   * the do-you-want-to-save dialog does appear
   *
   * @param aHost The host for which the dialog is to not appear
   *
   */
  /* void addReject (in AUTF8String aHost); */
  void AddReject(char[] aHost){
    scope auto _aHost = new ACString(aHost);
    nsresult __result = inner.AddReject(cast(nsACString*)_aHost);
    CheckException(__result);
  }

  /**
   * Called to remove a host from the list of rejected hosts -- i.e., hosts for which
   * the do-you-want-to-save dialog does not appear
   *
   * @param aHost The host for which the dialog is to not appear
   *
   */
  /* void removeReject (in AUTF8String aHost); */
  void RemoveReject(char[] aHost){
    scope auto _aHost = new ACString(aHost);
    nsresult __result = inner.RemoveReject(cast(nsACString*)_aHost);
    CheckException(__result);
  }

  /**
   * Called to enumerate through each login in the password-manager list
   * The objects enumerated over are of type nsIPassword
   */
  /* readonly attribute nsISimpleEnumerator enumerator; */
  nsISimpleEnumeratorD  Enumerator(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetEnumerator(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

  /**
   * Called to enumerate through each rejected site in the password-manager list
   * These are sites for which the user has indicated that he doesn't want passwords saved.
   * The objects enumerated over are of type nsIPassword, although the only member of
   * that object that is relevent is the host (the user and password members are ignored).
   */
  /* readonly attribute nsISimpleEnumerator rejectEnumerator; */
  nsISimpleEnumeratorD  RejectEnumerator(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetRejectEnumerator(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

private:
  nsIPasswordManager inner;

}

