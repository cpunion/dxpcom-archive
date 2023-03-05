/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgCompUtils.idl
 */

module mozilla.xpcom.nsIMsgCompUtils;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgIdentity;


/* starting interface:    nsIMsgCompUtils */
const char[] NS_IMSGCOMPUTILS_IID_STR = "00b4569a-077e-4236-b993-980fd82bb948";

const nsIID NS_IMSGCOMPUTILS_IID= 
  {0x00b4569a, 0x077e, 0x4236, 
    [ 0xb9, 0x93, 0x98, 0x0f, 0xd8, 0x2b, 0xb9, 0x48 ]};

extern(Windows)
interface nsIMsgCompUtils : nsISupports {
  static const char[] IID_STR = NS_IMSGCOMPUTILS_IID_STR;
  static const nsIID IID = NS_IMSGCOMPUTILS_IID;

  /* string mimeMakeSeparator (in string prefix); */
  nsresult MimeMakeSeparator(char *prefix, char **_retval);

  /* string msgGenerateMessageId (in nsIMsgIdentity identity); */
  nsresult MsgGenerateMessageId(nsIMsgIdentity identity, char **_retval);

  /* readonly attribute boolean msgMimeConformToStandard; */
  nsresult GetMsgMimeConformToStandard(PRBool *aMsgMimeConformToStandard);

}

