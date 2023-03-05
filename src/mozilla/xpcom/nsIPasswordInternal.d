/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPasswordInternal.idl
 */

module mozilla.xpcom.nsIPasswordInternal;


import mozilla.xpcom.nsrootidl;

import mozilla.xpcom.nsIPassword;


/* starting interface:    nsIPasswordInternal */
const char[] NS_IPASSWORDINTERNAL_IID_STR = "2cc35c67-978f-42a9-a958-16e97ad2f4c8";

const nsIID NS_IPASSWORDINTERNAL_IID= 
  {0x2cc35c67, 0x978f, 0x42a9, 
    [ 0xa9, 0x58, 0x16, 0xe9, 0x7a, 0xd2, 0xf4, 0xc8 ]};

/**
 * This interface is supported by password manager entries to expose the
 * fieldnames passed to nsIPasswordManagerInternal's addUserFull method.
 */
extern(Windows)
interface nsIPasswordInternal : nsIPassword {
  static const char[] IID_STR = NS_IPASSWORDINTERNAL_IID_STR;
  static const nsIID IID = NS_IPASSWORDINTERNAL_IID;

  /**
   * The name of the field that contained the username.
   */
  /* readonly attribute AString userFieldName; */
  nsresult GetUserFieldName(nsAString * aUserFieldName);

  /**
   * The name of the field that contained the password.
   */
  /* readonly attribute AString passwordFieldName; */
  nsresult GetPasswordFieldName(nsAString * aPasswordFieldName);

}

