/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapFlagAndUidState.idl
 */

module mozilla.dxpcom.nsIImapFlagAndUidStateD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImapFlagAndUidState;


public import mozilla.dxpcom.nsIImapFlagAndUidStateD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIImapFlagAndUidState */
class nsIImapFlagAndUidStateD : public nsISupportsD {

  static const nsIID IID = NS_IIMAPFLAGANDUIDSTATE_IID;


  alias nsIImapFlagAndUidState InnerType;

  this(nsIImapFlagAndUidState intr){
    super(intr);
    this.inner = intr;
  }

  nsIImapFlagAndUidState opCast() {
    return inner;
  }

  void opAssign(nsIImapFlagAndUidState value) {
    inner = value;
  }

  /* readonly attribute long numberOfMessages; */
  PRInt32 NumberOfMessages(){
    PRInt32 value;
    nsresult __result = inner.GetNumberOfMessages(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long numberOfRecentMessages; */
  PRInt32 NumberOfRecentMessages(){
    PRInt32 value;
    nsresult __result = inner.GetNumberOfRecentMessages(&value);
    CheckException(__result);
    return value;
  }

  /* void getUidOfMessage (in long zeroBasedIndex, out unsigned long result); */
  void GetUidOfMessage(PRInt32 zeroBasedIndex, out PRUint32 result){
    nsresult __result = inner.GetUidOfMessage(zeroBasedIndex, &result);
    CheckException(__result);
  }

  /* void getMessageFlags (in long zeroBasedIndex, out unsigned short result); */
  void GetMessageFlags(PRInt32 zeroBasedIndex, out PRUint16 result){
    nsresult __result = inner.GetMessageFlags(zeroBasedIndex, &result);
    CheckException(__result);
  }

  /* void setMessageFlags (in long zeroBasedIndex, in unsigned short flags); */
  void SetMessageFlags(PRInt32 zeroBasedIndex, PRUint16 flags){
    nsresult __result = inner.SetMessageFlags(zeroBasedIndex, flags);
    CheckException(__result);
  }

  /* void expungeByIndex (in unsigned long zeroBasedIndex); */
  void ExpungeByIndex(PRUint32 zeroBasedIndex){
    nsresult __result = inner.ExpungeByIndex(zeroBasedIndex);
    CheckException(__result);
  }

  /* void addUidFlagPair (in unsigned long uid, in unsigned short flags, in unsigned long zeroBasedIndex); */
  void AddUidFlagPair(PRUint32 uid, PRUint16 flags, PRUint32 zeroBasedIndex){
    nsresult __result = inner.AddUidFlagPair(uid, flags, zeroBasedIndex);
    CheckException(__result);
  }

  /* void addUidCustomFlagPair (in unsigned long uid, in string customFlag); */
  void AddUidCustomFlagPair(PRUint32 uid, char*customFlag){
    nsresult __result = inner.AddUidCustomFlagPair(uid, customFlag);
    CheckException(__result);
  }

  /* string getCustomFlags (in unsigned long uid); */
  char* GetCustomFlags(PRUint32 uid){
    char* _retval;
    nsresult __result = inner.GetCustomFlags(uid, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void reset (in unsigned long howManyLeft); */
  void Reset(PRUint32 howManyLeft){
    nsresult __result = inner.Reset(howManyLeft);
    CheckException(__result);
  }

  /* void setSupportedUserFlags (in unsigned short flags); */
  void SetSupportedUserFlags(PRUint16 flags){
    nsresult __result = inner.SetSupportedUserFlags(flags);
    CheckException(__result);
  }

  /* void clearCustomFlags (in unsigned long uid); */
  void ClearCustomFlags(PRUint32 uid){
    nsresult __result = inner.ClearCustomFlags(uid);
    CheckException(__result);
  }

private:
  nsIImapFlagAndUidState inner;

}

