/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchValue.idl
 */

module mozilla.dxpcom.nsIMsgSearchValueD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSearchValue;


public import mozilla.dxpcom.nsIMsgSearchValueD;

public import mozilla.xpcom.nsMsgSearchCore;
public import mozilla.dxpcom.nsMsgSearchCoreD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;


/* starting wrapper class:    nsIMsgSearchValue */
class nsIMsgSearchValueD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSEARCHVALUE_IID;


  alias nsIMsgSearchValue InnerType;

  this(nsIMsgSearchValue intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSearchValue opCast() {
    return inner;
  }

  void opAssign(nsIMsgSearchValue value) {
    inner = value;
  }

  /* attribute nsMsgSearchAttribValue attrib; */
  nsMsgSearchAttribValue Attrib(){
    nsMsgSearchAttribValue value;
    nsresult __result = inner.GetAttrib(&value);
    CheckException(__result);
    return value;
  }
  void Attrib(nsMsgSearchAttribValue aAttrib){
    nsMsgSearchAttribValue value;
    nsresult __result = inner.SetAttrib(value);
    CheckException(__result);
  }

  /* attribute wstring str; */
  PRUnichar* Str(){
    PRUnichar* value;
    nsresult __result = inner.GetStr(&value);
    CheckException(__result);
    return value;
  }
  void Str(PRUnichar* aStr){
    nsresult __result = inner.SetStr(aStr);
    CheckException(__result);
  }

  /* attribute nsMsgPriorityValue priority; */
  nsMsgPriorityValue Priority(){
    nsMsgPriorityValue value;
    nsresult __result = inner.GetPriority(&value);
    CheckException(__result);
    return value;
  }
  void Priority(nsMsgPriorityValue aPriority){
    nsMsgPriorityValue value;
    nsresult __result = inner.SetPriority(value);
    CheckException(__result);
  }

  /* attribute PRTime date; */
  PRTime Date(){
    PRTime value;
    nsresult __result = inner.GetDate(&value);
    CheckException(__result);
    return value;
  }
  void Date(PRTime aDate){
    PRTime value;
    nsresult __result = inner.SetDate(value);
    CheckException(__result);
  }

  /* attribute unsigned long status; */
  PRUint32 Status(){
    PRUint32 value;
    nsresult __result = inner.GetStatus(&value);
    CheckException(__result);
    return value;
  }
  void Status(PRUint32 aStatus){
    nsresult __result = inner.SetStatus(aStatus);
    CheckException(__result);
  }

  /* attribute unsigned long size; */
  PRUint32 Size(){
    PRUint32 value;
    nsresult __result = inner.GetSize(&value);
    CheckException(__result);
    return value;
  }
  void Size(PRUint32 aSize){
    nsresult __result = inner.SetSize(aSize);
    CheckException(__result);
  }

  /* attribute nsMsgKey msgKey; */
  nsMsgKey MsgKey(){
    nsMsgKey value;
    nsresult __result = inner.GetMsgKey(&value);
    CheckException(__result);
    return value;
  }
  void MsgKey(nsMsgKey aMsgKey){
    nsMsgKey value;
    nsresult __result = inner.SetMsgKey(value);
    CheckException(__result);
  }

  /* attribute unsigned long age; */
  PRUint32 Age(){
    PRUint32 value;
    nsresult __result = inner.GetAge(&value);
    CheckException(__result);
    return value;
  }
  void Age(PRUint32 aAge){
    nsresult __result = inner.SetAge(aAge);
    CheckException(__result);
  }

  /* attribute nsIMsgFolder folder; */
  nsIMsgFolderD  Folder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }
  void Folder(nsIMsgFolderD  aFolder){
    nsIMsgFolder value;
    nsresult __result = inner.SetFolder(value);
    CheckException(__result);
  }

  /* attribute nsMsgLabelValue label; */
  nsMsgLabelValue Label(){
    nsMsgLabelValue value;
    nsresult __result = inner.GetLabel(&value);
    CheckException(__result);
    return value;
  }
  void Label(nsMsgLabelValue aLabel){
    nsMsgLabelValue value;
    nsresult __result = inner.SetLabel(value);
    CheckException(__result);
  }

  /* attribute nsMsgJunkStatus junkStatus; */
  nsMsgJunkStatus JunkStatus(){
    nsMsgJunkStatus value;
    nsresult __result = inner.GetJunkStatus(&value);
    CheckException(__result);
    return value;
  }
  void JunkStatus(nsMsgJunkStatus aJunkStatus){
    nsMsgJunkStatus value;
    nsresult __result = inner.SetJunkStatus(value);
    CheckException(__result);
  }

  /* wstring toString (); */
  PRUnichar* ToString(){
    PRUnichar* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgSearchValue inner;

}

