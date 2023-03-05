/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgParseMailMsgState.idl
 */

module mozilla.dxpcom.nsIMsgParseMailMsgStateD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgParseMailMsgState;


public import mozilla.dxpcom.nsIMsgParseMailMsgStateD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIMsgDatabase;

public import mozilla.dxpcom.nsIMsgDatabaseD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsIMsgParseMailMsgState */
class nsIMsgParseMailMsgStateD : public nsISupportsD {

  static const nsIID IID = NS_IMSGPARSEMAILMSGSTATE_IID;


  alias nsIMsgParseMailMsgState InnerType;

  this(nsIMsgParseMailMsgState intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgParseMailMsgState opCast() {
    return inner;
  }

  void opAssign(nsIMsgParseMailMsgState value) {
    inner = value;
  }

  /* attribute unsigned long envelopePos; */
  PRUint32 EnvelopePos(){
    PRUint32 value;
    nsresult __result = inner.GetEnvelopePos(&value);
    CheckException(__result);
    return value;
  }
  void EnvelopePos(PRUint32 aEnvelopePos){
    nsresult __result = inner.SetEnvelopePos(aEnvelopePos);
    CheckException(__result);
  }

  /* void SetMailDB (in nsIMsgDatabase aDatabase); */
  void SetMailDB(nsIMsgDatabaseD aDatabase){
    nsresult __result = inner.SetMailDB(aDatabase ? cast(nsIMsgDatabase)aDatabase : null);
    CheckException(__result);
  }

  /* void setDBFolderStream (in nsIOFileStream fileStream); */
  void SetDBFolderStream(nsIOFileStreamD fileStream){
    nsresult __result = inner.SetDBFolderStream(fileStream ? cast(nsIOFileStream)fileStream : null);
    CheckException(__result);
  }

  /* void Clear (); */
  void Clear(){
    nsresult __result = inner.Clear();
    CheckException(__result);
  }

  /* void ParseAFolderLine (in string line, in unsigned long lineLength); */
  void ParseAFolderLine(char*line, PRUint32 lineLength){
    nsresult __result = inner.ParseAFolderLine(line, lineLength);
    CheckException(__result);
  }

  /* nsIMsgDBHdr GetNewMsgHdr (); */
  nsIMsgDBHdrD  GetNewMsgHdr(){
    nsIMsgDBHdr _retval;
    nsresult __result = inner.GetNewMsgHdr(&_retval);
    CheckException(__result);
    return new nsIMsgDBHdrD(_retval);
  }

  /* void FinishHeader (); */
  void FinishHeader(){
    nsresult __result = inner.FinishHeader();
    CheckException(__result);
  }

  /* long GetAllHeaders (out string headers); */
  PRInt32 GetAllHeaders(out char*headers){
    PRInt32 _retval;
    nsresult __result = inner.GetAllHeaders(&headers, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute string headers; */
  char* Headers(){
    char* value;
    nsresult __result = inner.GetHeaders(&value);
    CheckException(__result);
    return value;
  }

  /* attribute nsMailboxParseState state; */
  nsMailboxParseState State(){
    nsMailboxParseState value;
    nsresult __result = inner.GetState(&value);
    CheckException(__result);
    return value;
  }
  void State(nsMailboxParseState aState){
    nsMailboxParseState value;
    nsresult __result = inner.SetState(value);
    CheckException(__result);
  }

  enum { ParseEnvelopeState = 0 }

  enum { ParseHeadersState = 1 }

  enum { ParseBodyState = 2 }

private:
  nsIMsgParseMailMsgState inner;

}

