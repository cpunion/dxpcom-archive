/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchValue.idl
 */

module mozilla.xpcom.nsIMsgSearchValue;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsMsgSearchCore;

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */


/* starting interface:    nsIMsgSearchValue */
const char[] NS_IMSGSEARCHVALUE_IID_STR = "12156d67-6071-4354-b204-4cb9b561cc94";

const nsIID NS_IMSGSEARCHVALUE_IID= 
  {0x12156d67, 0x6071, 0x4354, 
    [ 0xb2, 0x04, 0x4c, 0xb9, 0xb5, 0x61, 0xcc, 0x94 ]};

extern(Windows)
interface nsIMsgSearchValue : nsISupports {
  static const char[] IID_STR = NS_IMSGSEARCHVALUE_IID_STR;
  static const nsIID IID = NS_IMSGSEARCHVALUE_IID;

  /* attribute nsMsgSearchAttribValue attrib; */
  nsresult GetAttrib(nsMsgSearchAttribValue *aAttrib);
  nsresult SetAttrib(nsMsgSearchAttribValue aAttrib);

  /* attribute wstring str; */
  nsresult GetStr(PRUnichar * *aStr);
  nsresult SetStr(PRUnichar * aStr);

  /* attribute nsMsgPriorityValue priority; */
  nsresult GetPriority(nsMsgPriorityValue *aPriority);
  nsresult SetPriority(nsMsgPriorityValue aPriority);

  /* attribute PRTime date; */
  nsresult GetDate(PRTime *aDate);
  nsresult SetDate(PRTime aDate);

  /* attribute unsigned long status; */
  nsresult GetStatus(PRUint32 *aStatus);
  nsresult SetStatus(PRUint32 aStatus);

  /* attribute unsigned long size; */
  nsresult GetSize(PRUint32 *aSize);
  nsresult SetSize(PRUint32 aSize);

  /* attribute nsMsgKey msgKey; */
  nsresult GetMsgKey(nsMsgKey *aMsgKey);
  nsresult SetMsgKey(nsMsgKey aMsgKey);

  /* attribute unsigned long age; */
  nsresult GetAge(PRUint32 *aAge);
  nsresult SetAge(PRUint32 aAge);

  /* attribute nsIMsgFolder folder; */
  nsresult GetFolder(nsIMsgFolder  *aFolder);
  nsresult SetFolder(nsIMsgFolder  aFolder);

  /* attribute nsMsgLabelValue label; */
  nsresult GetLabel(nsMsgLabelValue *aLabel);
  nsresult SetLabel(nsMsgLabelValue aLabel);

  /* attribute nsMsgJunkStatus junkStatus; */
  nsresult GetJunkStatus(nsMsgJunkStatus *aJunkStatus);
  nsresult SetJunkStatus(nsMsgJunkStatus aJunkStatus);

  /* wstring toString (); */
  nsresult ToString(PRUnichar **_retval);

}

