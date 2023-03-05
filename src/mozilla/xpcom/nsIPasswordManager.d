/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPasswordManager.idl
 */

module mozilla.xpcom.nsIPasswordManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISimpleEnumerator;


/* starting interface:    nsIPasswordManager */
const char[] NS_IPASSWORDMANAGER_IID_STR = "173562f0-2173-11d5-a54c-0010a401eb10";

const nsIID NS_IPASSWORDMANAGER_IID= 
  {0x173562f0, 0x2173, 0x11d5, 
    [ 0xa5, 0x4c, 0x00, 0x10, 0xa4, 0x01, 0xeb, 0x10 ]};

/** 
 * An optional interface for clients accessing or removing
 * logins that were collected by the password manager
 * 
 *
 */
extern(Windows)
interface nsIPasswordManager : nsISupports {
  static const char[] IID_STR = NS_IPASSWORDMANAGER_IID_STR;
  static const nsIID IID = NS_IPASSWORDMANAGER_IID;

  /**
   * Called to add an individual login to the list of saved logins
   *
   * @param aHost The host for which the login is being remembered
   * @param aUser The username portion of the login
   * @param aPassword The password portion of the login
   *
   */
  /* void addUser (in AUTF8String aHost, in AString aUser, in AString aPassword); */
  nsresult AddUser(nsACString * aHost, nsAString * aUser, nsAString * aPassword);

  /**
   * Called to remove an individual login from the list of save logins
   *
   * @param aHost The host for which the login is being remembered
   * @param aUser The username portion of the login
   *
   */
  /* void removeUser (in AUTF8String aHost, in AString aUser); */
  nsresult RemoveUser(nsACString * aHost, nsAString * aUser);

  /**
   * Called to add a host to the list of rejected hosts -- i.e., hosts for which
   * the do-you-want-to-save dialog does appear
   *
   * @param aHost The host for which the dialog is to not appear
   *
   */
  /* void addReject (in AUTF8String aHost); */
  nsresult AddReject(nsACString * aHost);

  /**
   * Called to remove a host from the list of rejected hosts -- i.e., hosts for which
   * the do-you-want-to-save dialog does not appear
   *
   * @param aHost The host for which the dialog is to not appear
   *
   */
  /* void removeReject (in AUTF8String aHost); */
  nsresult RemoveReject(nsACString * aHost);

  /**
   * Called to enumerate through each login in the password-manager list
   * The objects enumerated over are of type nsIPassword
   */
  /* readonly attribute nsISimpleEnumerator enumerator; */
  nsresult GetEnumerator(nsISimpleEnumerator  *aEnumerator);

  /**
   * Called to enumerate through each rejected site in the password-manager list
   * These are sites for which the user has indicated that he doesn't want passwords saved.
   * The objects enumerated over are of type nsIPassword, although the only member of
   * that object that is relevent is the host (the user and password members are ignored).
   */
  /* readonly attribute nsISimpleEnumerator rejectEnumerator; */
  nsresult GetRejectEnumerator(nsISimpleEnumerator  *aRejectEnumerator);

}

