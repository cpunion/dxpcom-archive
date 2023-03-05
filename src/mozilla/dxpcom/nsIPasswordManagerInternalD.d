/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPasswordManagerInternal.idl
 */

module mozilla.dxpcom.nsIPasswordManagerInternalD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPasswordManagerInternal;


public import mozilla.dxpcom.nsIPasswordManagerInternalD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIPasswordManagerInternal */
class nsIPasswordManagerInternalD : public nsISupportsD {

  static const nsIID IID = NS_IPASSWORDMANAGERINTERNAL_IID;


  alias nsIPasswordManagerInternal InnerType;

  this(nsIPasswordManagerInternal intr){
    super(intr);
    this.inner = intr;
  }

  nsIPasswordManagerInternal opCast() {
    return inner;
  }

  void opAssign(nsIPasswordManagerInternal value) {
    inner = value;
  }

  /**
   * A Call to find a login in the password manager list that matches the
   * specified parameters. If any input parameter is null, it is
   * not tested for when looking for the match.
   *
   * @param aHostURI The uri part of a login to search for, or null
   * @param aUsername The username part of a login to search for, or null
   * @param aPassword The password part of a login to search for, or null
   * @param aHostURIFound The uri found in the login
   * @param aUsernameFound The username found in the login
   * @param aPasswordFound The password found in the login
   */
  /* void findPasswordEntry (in AUTF8String aHostURI, in AString aUsername, in AString aPassword, out AUTF8String aHostURIFound, out AString aUsernameFound, out AString aPasswordFound); */
  void FindPasswordEntry(char[] aHostURI, wchar[] aUsername, wchar[] aPassword, char[] aHostURIFound, wchar[] aUsernameFound, wchar[] aPasswordFound){
    scope auto _aHostURI = new ACString(aHostURI);
    scope auto _aUsername = new AString(aUsername);
    scope auto _aPassword = new AString(aPassword);
    scope auto _aHostURIFound = new ACString;
    scope auto _aUsernameFound = new AString;
    scope auto _aPasswordFound = new AString;
    nsresult __result = inner.FindPasswordEntry(cast(nsACString*)_aHostURI, cast(nsAString*)_aUsername, cast(nsAString*)_aPassword, cast(nsACString*)_aHostURIFound, cast(nsAString*)_aUsernameFound, cast(nsAString*)_aPasswordFound);
    CheckException(__result);
    aHostURIFound = _aHostURIFound.GetString();
    aUsernameFound = _aUsernameFound.GetString();
    aPasswordFound = _aPasswordFound.GetString();
  }

  /**
   * Called to add an individual login to the list of saved logins. 
   * All parameters are clear text.
   *
   * @param aKey The key for which the login is being remembered (often the page URI)
   * @param aUser The username portion of the login
   * @param aPassword The password portion of the login
   * @param aUserFieldName The name of the field that contained the username
   * @param aPassFieldName The name of the field that contained the password
   */
  /* void addUserFull (in AUTF8String aKey, in AString aUser, in AString aPassword, in AString aUserFieldName, in AString aPassFieldName); */
  void AddUserFull(char[] aKey, wchar[] aUser, wchar[] aPassword, wchar[] aUserFieldName, wchar[] aPassFieldName){
    scope auto _aKey = new ACString(aKey);
    scope auto _aUser = new AString(aUser);
    scope auto _aPassword = new AString(aPassword);
    scope auto _aUserFieldName = new AString(aUserFieldName);
    scope auto _aPassFieldName = new AString(aPassFieldName);
    nsresult __result = inner.AddUserFull(cast(nsACString*)_aKey, cast(nsAString*)_aUser, cast(nsAString*)_aPassword, cast(nsAString*)_aUserFieldName, cast(nsAString*)_aPassFieldName);
    CheckException(__result);
  }

  /**
   * Reads logins from a Mozilla Password Manager file, augmenting the current 
   * in-memory set. If a duplicate entry is encountered, the data from the file
   * being read replaces that currently held.
   * 
   * @param aPasswordFile The file to read logins from.
   */
  /* void readPasswords (in nsIFile aPasswordFile); */
  void ReadPasswords(nsIFileD aPasswordFile){
    nsresult __result = inner.ReadPasswords(aPasswordFile ? cast(nsIFile)aPasswordFile : null);
    CheckException(__result);
  }

private:
  nsIPasswordManagerInternal inner;

}

