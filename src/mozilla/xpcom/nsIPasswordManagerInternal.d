/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPasswordManagerInternal.idl
 */

module mozilla.xpcom.nsIPasswordManagerInternal;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIPasswordManagerInternal */
const char[] NS_IPASSWORDMANAGERINTERNAL_IID_STR = "dc2ff152-85cb-474e-b4c2-86a3d48cf4d0";

const nsIID NS_IPASSWORDMANAGERINTERNAL_IID= 
  {0xdc2ff152, 0x85cb, 0x474e, 
    [ 0xb4, 0xc2, 0x86, 0xa3, 0xd4, 0x8c, 0xf4, 0xd0 ]};

extern(Windows)
interface nsIPasswordManagerInternal : nsISupports {
  static const char[] IID_STR = NS_IPASSWORDMANAGERINTERNAL_IID_STR;
  static const nsIID IID = NS_IPASSWORDMANAGERINTERNAL_IID;

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
  nsresult FindPasswordEntry(nsACString * aHostURI, nsAString * aUsername, nsAString * aPassword, nsACString * aHostURIFound, nsAString * aUsernameFound, nsAString * aPasswordFound);

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
  nsresult AddUserFull(nsACString * aKey, nsAString * aUser, nsAString * aPassword, nsAString * aUserFieldName, nsAString * aPassFieldName);

  /**
   * Reads logins from a Mozilla Password Manager file, augmenting the current 
   * in-memory set. If a duplicate entry is encountered, the data from the file
   * being read replaces that currently held.
   * 
   * @param aPasswordFile The file to read logins from.
   */
  /* void readPasswords (in nsIFile aPasswordFile); */
  nsresult ReadPasswords(nsIFile aPasswordFile);

}

