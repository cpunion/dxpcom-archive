/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapFlagAndUidState.idl
 */

module mozilla.xpcom.nsIImapFlagAndUidState;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIImapFlagAndUidState */
const char[] NS_IIMAPFLAGANDUIDSTATE_IID_STR = "d4ba3414-fe9e-436b-a01b-bd446e737d04";

const nsIID NS_IIMAPFLAGANDUIDSTATE_IID= 
  {0xd4ba3414, 0xfe9e, 0x436b, 
    [ 0xa0, 0x1b, 0xbd, 0x44, 0x6e, 0x73, 0x7d, 0x04 ]};

extern(Windows)
interface nsIImapFlagAndUidState : nsISupports {
  static const char[] IID_STR = NS_IIMAPFLAGANDUIDSTATE_IID_STR;
  static const nsIID IID = NS_IIMAPFLAGANDUIDSTATE_IID;

  /* readonly attribute long numberOfMessages; */
  nsresult GetNumberOfMessages(PRInt32 *aNumberOfMessages);

  /* readonly attribute long numberOfRecentMessages; */
  nsresult GetNumberOfRecentMessages(PRInt32 *aNumberOfRecentMessages);

  /* void getUidOfMessage (in long zeroBasedIndex, out unsigned long result); */
  nsresult GetUidOfMessage(PRInt32 zeroBasedIndex, PRUint32 *result);

  /* void getMessageFlags (in long zeroBasedIndex, out unsigned short result); */
  nsresult GetMessageFlags(PRInt32 zeroBasedIndex, PRUint16 *result);

  /* void setMessageFlags (in long zeroBasedIndex, in unsigned short flags); */
  nsresult SetMessageFlags(PRInt32 zeroBasedIndex, PRUint16 flags);

  /* void expungeByIndex (in unsigned long zeroBasedIndex); */
  nsresult ExpungeByIndex(PRUint32 zeroBasedIndex);

  /* void addUidFlagPair (in unsigned long uid, in unsigned short flags, in unsigned long zeroBasedIndex); */
  nsresult AddUidFlagPair(PRUint32 uid, PRUint16 flags, PRUint32 zeroBasedIndex);

  /* void addUidCustomFlagPair (in unsigned long uid, in string customFlag); */
  nsresult AddUidCustomFlagPair(PRUint32 uid, char *customFlag);

  /* string getCustomFlags (in unsigned long uid); */
  nsresult GetCustomFlags(PRUint32 uid, char **_retval);

  /* void reset (in unsigned long howManyLeft); */
  nsresult Reset(PRUint32 howManyLeft);

  /* void setSupportedUserFlags (in unsigned short flags); */
  nsresult SetSupportedUserFlags(PRUint16 flags);

  /* void clearCustomFlags (in unsigned long uid); */
  nsresult ClearCustomFlags(PRUint32 uid);

}

