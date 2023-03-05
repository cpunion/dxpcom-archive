/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPassword.idl
 */

module mozilla.xpcom.nsIPassword;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPassword */
const char[] NS_IPASSWORD_IID_STR = "cf39c2b0-1e4b-11d5-a549-0010a401eb10";

const nsIID NS_IPASSWORD_IID= 
  {0xcf39c2b0, 0x1e4b, 0x11d5, 
    [ 0xa5, 0x49, 0x00, 0x10, 0xa4, 0x01, 0xeb, 0x10 ]};

/** 
 * An optional interface for clients wishing to access a
 * password object
 * 
 * @status FROZEN
 */
extern(Windows)
interface nsIPassword : nsISupports {
  static const char[] IID_STR = NS_IPASSWORD_IID_STR;
  static const nsIID IID = NS_IPASSWORD_IID;

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
  nsresult GetHost(nsACString * aHost);

  /**
     * the user name portion of the login
     */
  /* readonly attribute AString user; */
  nsresult GetUser(nsAString * aUser);

  /**
     * the password portion of the login
     */
  /* readonly attribute AString password; */
  nsresult GetPassword(nsAString * aPassword);

}

