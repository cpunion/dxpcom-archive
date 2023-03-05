/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgParseMailMsgState.idl
 */

module mozilla.xpcom.nsIMsgParseMailMsgState;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIMsgDatabase; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;

alias PRInt32 nsMailboxParseState;


/* starting interface:    nsIMsgParseMailMsgState */
const char[] NS_IMSGPARSEMAILMSGSTATE_IID_STR = "0cc23170-1459-11d3-8097-006008128c4e";

const nsIID NS_IMSGPARSEMAILMSGSTATE_IID= 
  {0x0cc23170, 0x1459, 0x11d3, 
    [ 0x80, 0x97, 0x00, 0x60, 0x08, 0x12, 0x8c, 0x4e ]};

extern(Windows)
interface nsIMsgParseMailMsgState : nsISupports {
  static const char[] IID_STR = NS_IMSGPARSEMAILMSGSTATE_IID_STR;
  static const nsIID IID = NS_IMSGPARSEMAILMSGSTATE_IID;

  /* attribute unsigned long envelopePos; */
  nsresult GetEnvelopePos(PRUint32 *aEnvelopePos);
  nsresult SetEnvelopePos(PRUint32 aEnvelopePos);

  /* void SetMailDB (in nsIMsgDatabase aDatabase); */
  nsresult SetMailDB(nsIMsgDatabase aDatabase);

  /* void setDBFolderStream (in nsIOFileStream fileStream); */
  nsresult SetDBFolderStream(nsIOFileStream fileStream);

  /* void Clear (); */
  nsresult Clear();

  /* void ParseAFolderLine (in string line, in unsigned long lineLength); */
  nsresult ParseAFolderLine(char *line, PRUint32 lineLength);

  /* nsIMsgDBHdr GetNewMsgHdr (); */
  nsresult GetNewMsgHdr(nsIMsgDBHdr *_retval);

  /* void FinishHeader (); */
  nsresult FinishHeader();

  /* long GetAllHeaders (out string headers); */
  nsresult GetAllHeaders(char **headers, PRInt32 *_retval);

  /* readonly attribute string headers; */
  nsresult GetHeaders(char * *aHeaders);

  /* attribute nsMailboxParseState state; */
  nsresult GetState(nsMailboxParseState *aState);
  nsresult SetState(nsMailboxParseState aState);

  enum { ParseEnvelopeState = 0 };

  enum { ParseHeadersState = 1 };

  enum { ParseBodyState = 2 };

}

