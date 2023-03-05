/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUserInfo.idl
 */

module mozilla.xpcom.nsIUserInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIUserInfo */
const char[] NS_IUSERINFO_IID_STR = "6c1034f0-1dd2-11b2-aa14-e6657ed7bb0b";

const nsIID NS_IUSERINFO_IID= 
  {0x6c1034f0, 0x1dd2, 0x11b2, 
    [ 0xaa, 0x14, 0xe6, 0x65, 0x7e, 0xd7, 0xbb, 0x0b ]};

extern(Windows)
interface nsIUserInfo : nsISupports {
  static const char[] IID_STR = NS_IUSERINFO_IID_STR;
  static const nsIID IID = NS_IUSERINFO_IID;

  /* readonly attribute wstring fullname; */
  nsresult GetFullname(PRUnichar * *aFullname);

  /* readonly attribute string emailAddress; */
  nsresult GetEmailAddress(char * *aEmailAddress);

  /* readonly attribute string username; */
  nsresult GetUsername(char * *aUsername);

  /* readonly attribute string domain; */
  nsresult GetDomain(char * *aDomain);

}

