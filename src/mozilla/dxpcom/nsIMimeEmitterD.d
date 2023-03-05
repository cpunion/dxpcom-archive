/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMimeEmitter.idl
 */

module mozilla.dxpcom.nsIMimeEmitterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMimeEmitter;


public import mozilla.dxpcom.nsIMimeEmitterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsMimeHeaderDisplayTypes */
class nsMimeHeaderDisplayTypesD {

  static const nsIID IID = NS_MIMEHEADERDISPLAYTYPES_IID;


  alias nsMimeHeaderDisplayTypes InnerType;

  this(nsMimeHeaderDisplayTypes intr){
    this.inner = intr;
  }

  nsMimeHeaderDisplayTypes opCast() {
    return inner;
  }

  void opAssign(nsMimeHeaderDisplayTypes value) {
    inner = value;
  }

  enum { MicroHeaders = 0 }

  enum { NormalHeaders = 1 }

  enum { AllHeaders = 2 }

private:
  nsMimeHeaderDisplayTypes inner;

}


/* starting wrapper class:    nsIMimeEmitter */
class nsIMimeEmitterD : public nsISupportsD {

  static const nsIID IID = NS_IMIMEEMITTER_IID;


  alias nsIMimeEmitter InnerType;

  this(nsIMimeEmitter intr){
    super(intr);
    this.inner = intr;
  }

  nsIMimeEmitter opCast() {
    return inner;
  }

  void opAssign(nsIMimeEmitter value) {
    inner = value;
  }

  /* void Initialize (in nsIURI url, in nsIChannel aChannel, in long aFormat); */
  void Initialize(nsIURID url, nsIChannelD aChannel, PRInt32 aFormat){
    nsresult __result = inner.Initialize(url ? cast(nsIURI)url : null, aChannel ? cast(nsIChannel)aChannel : null, aFormat);
    CheckException(__result);
  }

  /* void Complete (); */
  void Complete(){
    nsresult __result = inner.Complete();
    CheckException(__result);
  }

  /* void SetPipe (in nsIInputStream inputStream, in nsIOutputStream outStream); */
  void SetPipe(nsIInputStreamD inputStream, nsIOutputStreamD outStream){
    nsresult __result = inner.SetPipe(inputStream ? cast(nsIInputStream)inputStream : null, outStream ? cast(nsIOutputStream)outStream : null);
    CheckException(__result);
  }

  /* void SetOutputListener (in nsIStreamListener listener); */
  void SetOutputListener(nsIStreamListenerD listener){
    nsresult __result = inner.SetOutputListener(listener ? cast(nsIStreamListener)listener : null);
    CheckException(__result);
  }

  /* nsIStreamListener GetOutputListener (); */
  nsIStreamListenerD  GetOutputListener(){
    nsIStreamListener _retval;
    nsresult __result = inner.GetOutputListener(&_retval);
    CheckException(__result);
    return new nsIStreamListenerD(_retval);
  }

  /* void StartHeader (in PRBool rootMailHeader, in PRBool headerOnly, [const] in string msgID, [const] in string outCharset); */
  void StartHeader(PRBool rootMailHeader, PRBool headerOnly, char*msgID, char*outCharset){
    nsresult __result = inner.StartHeader(rootMailHeader, headerOnly, msgID, outCharset);
    CheckException(__result);
  }

  /* void AddHeaderField ([const] in string field, [const] in string value); */
  void AddHeaderField(char*field, char*value){
    nsresult __result = inner.AddHeaderField(field, value);
    CheckException(__result);
  }

  /* void addAllHeaders ([const] in string allheaders, [const] in long allheadersize); */
  void AddAllHeaders(char*allheaders, PRInt32 allheadersize){
    nsresult __result = inner.AddAllHeaders(allheaders, allheadersize);
    CheckException(__result);
  }

  /* void WriteHTMLHeaders (); */
  void WriteHTMLHeaders(){
    nsresult __result = inner.WriteHTMLHeaders();
    CheckException(__result);
  }

  /* void EndHeader (); */
  void EndHeader(){
    nsresult __result = inner.EndHeader();
    CheckException(__result);
  }

  /* void UpdateCharacterSet ([const] in string aCharset); */
  void UpdateCharacterSet(char*aCharset){
    nsresult __result = inner.UpdateCharacterSet(aCharset);
    CheckException(__result);
  }

  /* void StartAttachment ([const] in string name, [const] in string contentType, [const] in string url, in PRBool aNotDownloaded); */
  void StartAttachment(char*name, char*contentType, char*url, PRBool aNotDownloaded){
    nsresult __result = inner.StartAttachment(name, contentType, url, aNotDownloaded);
    CheckException(__result);
  }

  /* void AddAttachmentField ([const] in string field, [const] in string value); */
  void AddAttachmentField(char*field, char*value){
    nsresult __result = inner.AddAttachmentField(field, value);
    CheckException(__result);
  }

  /* void EndAttachment (); */
  void EndAttachment(){
    nsresult __result = inner.EndAttachment();
    CheckException(__result);
  }

  /* void EndAllAttachments (); */
  void EndAllAttachments(){
    nsresult __result = inner.EndAllAttachments();
    CheckException(__result);
  }

  /* void StartBody (in PRBool bodyOnly, [const] in string msgID, [const] in string outCharset); */
  void StartBody(PRBool bodyOnly, char*msgID, char*outCharset){
    nsresult __result = inner.StartBody(bodyOnly, msgID, outCharset);
    CheckException(__result);
  }

  /* void WriteBody ([const] in string buf, in PRUint32 size, out PRUint32 amountWritten); */
  void WriteBody(char*buf, PRUint32 size, out PRUint32 amountWritten){
    nsresult __result = inner.WriteBody(buf, size, &amountWritten);
    CheckException(__result);
  }

  /* void EndBody (); */
  void EndBody(){
    nsresult __result = inner.EndBody();
    CheckException(__result);
  }

  /* void Write ([const] in string buf, in PRUint32 size, out PRUint32 amountWritten); */
  void Write(char*buf, PRUint32 size, out PRUint32 amountWritten){
    nsresult __result = inner.Write(buf, size, &amountWritten);
    CheckException(__result);
  }

  /* void UtilityWrite ([const] in string buf); */
  void UtilityWrite(char*buf){
    nsresult __result = inner.UtilityWrite(buf);
    CheckException(__result);
  }

private:
  nsIMimeEmitter inner;

}

