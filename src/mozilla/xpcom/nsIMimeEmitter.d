/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMimeEmitter.idl
 */

module mozilla.xpcom.nsIMimeEmitter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */


/* starting interface:    nsMimeHeaderDisplayTypes */
const char[] NS_MIMEHEADERDISPLAYTYPES_IID_STR = "39e329e2-357f-11d3-8efd-00a024a7d144";

const nsIID NS_MIMEHEADERDISPLAYTYPES_IID= 
  {0x39e329e2, 0x357f, 0x11d3, 
    [ 0x8e, 0xfd, 0x00, 0xa0, 0x24, 0xa7, 0xd1, 0x44 ]};

extern(Windows)
interface nsMimeHeaderDisplayTypes {
  static const char[] IID_STR = NS_MIMEHEADERDISPLAYTYPES_IID_STR;
  static const nsIID IID = NS_MIMEHEADERDISPLAYTYPES_IID;

  enum { MicroHeaders = 0 };

  enum { NormalHeaders = 1 };

  enum { AllHeaders = 2 };

}


/* starting interface:    nsIMimeEmitter */
const char[] NS_IMIMEEMITTER_IID_STR = "d01d7b59-dccd-11d2-a411-00805f613c79";

const nsIID NS_IMIMEEMITTER_IID= 
  {0xd01d7b59, 0xdccd, 0x11d2, 
    [ 0xa4, 0x11, 0x00, 0x80, 0x5f, 0x61, 0x3c, 0x79 ]};

extern(Windows)
interface nsIMimeEmitter : nsISupports {
  static const char[] IID_STR = NS_IMIMEEMITTER_IID_STR;
  static const nsIID IID = NS_IMIMEEMITTER_IID;

  /* void Initialize (in nsIURI url, in nsIChannel aChannel, in long aFormat); */
  nsresult Initialize(nsIURI url, nsIChannel aChannel, PRInt32 aFormat);

  /* void Complete (); */
  nsresult Complete();

  /* void SetPipe (in nsIInputStream inputStream, in nsIOutputStream outStream); */
  nsresult SetPipe(nsIInputStream inputStream, nsIOutputStream outStream);

  /* void SetOutputListener (in nsIStreamListener listener); */
  nsresult SetOutputListener(nsIStreamListener listener);

  /* nsIStreamListener GetOutputListener (); */
  nsresult GetOutputListener(nsIStreamListener *_retval);

  /* void StartHeader (in PRBool rootMailHeader, in PRBool headerOnly, [const] in string msgID, [const] in string outCharset); */
  nsresult StartHeader(PRBool rootMailHeader, PRBool headerOnly, char *msgID, char *outCharset);

  /* void AddHeaderField ([const] in string field, [const] in string value); */
  nsresult AddHeaderField(char *field, char *value);

  /* void addAllHeaders ([const] in string allheaders, [const] in long allheadersize); */
  nsresult AddAllHeaders(char *allheaders, PRInt32 allheadersize);

  /* void WriteHTMLHeaders (); */
  nsresult WriteHTMLHeaders();

  /* void EndHeader (); */
  nsresult EndHeader();

  /* void UpdateCharacterSet ([const] in string aCharset); */
  nsresult UpdateCharacterSet(char *aCharset);

  /* void StartAttachment ([const] in string name, [const] in string contentType, [const] in string url, in PRBool aNotDownloaded); */
  nsresult StartAttachment(char *name, char *contentType, char *url, PRBool aNotDownloaded);

  /* void AddAttachmentField ([const] in string field, [const] in string value); */
  nsresult AddAttachmentField(char *field, char *value);

  /* void EndAttachment (); */
  nsresult EndAttachment();

  /* void EndAllAttachments (); */
  nsresult EndAllAttachments();

  /* void StartBody (in PRBool bodyOnly, [const] in string msgID, [const] in string outCharset); */
  nsresult StartBody(PRBool bodyOnly, char *msgID, char *outCharset);

  /* void WriteBody ([const] in string buf, in PRUint32 size, out PRUint32 amountWritten); */
  nsresult WriteBody(char *buf, PRUint32 size, PRUint32 *amountWritten);

  /* void EndBody (); */
  nsresult EndBody();

  /* void Write ([const] in string buf, in PRUint32 size, out PRUint32 amountWritten); */
  nsresult Write(char *buf, PRUint32 size, PRUint32 *amountWritten);

  /* void UtilityWrite ([const] in string buf); */
  nsresult UtilityWrite(char *buf);

}

