/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMimeStreamConverter.idl
 */

module mozilla.dxpcom.nsIMimeStreamConverterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMimeStreamConverter;


public import mozilla.dxpcom.nsIMimeStreamConverterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;
public import mozilla.xpcom.nsIMimeHeaders;
public import mozilla.dxpcom.nsIMimeHeadersD;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.dxpcom.nsIMsgIdentityD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsMimeOutput */
class nsMimeOutputD {

  static const nsIID IID = NS_MIMEOUTPUT_IID;


  alias nsMimeOutput InnerType;

  this(nsMimeOutput intr){
    this.inner = intr;
  }

  nsMimeOutput opCast() {
    return inner;
  }

  void opAssign(nsMimeOutput value) {
    inner = value;
  }

  enum { nsMimeMessageSplitDisplay = 0 }

  enum { nsMimeMessageHeaderDisplay = 1 }

  enum { nsMimeMessageBodyDisplay = 2 }

  enum { nsMimeMessageQuoting = 3 }

  enum { nsMimeMessageBodyQuoting = 4 }

  enum { nsMimeMessageRaw = 5 }

  enum { nsMimeMessageDraftOrTemplate = 6 }

  enum { nsMimeMessageEditorTemplate = 7 }

  enum { nsMimeMessagePrintOutput = 9 }

  enum { nsMimeMessageSaveAs = 10 }

  enum { nsMimeMessageSource = 11 }

  enum { nsMimeMessageFilterSniffer = 12 }

  enum { nsMimeMessageDecrypt = 13 }

  enum { nsMimeMessageAttach = 14 }

  enum { nsMimeUnknown = 15 }

private:
  nsMimeOutput inner;

}


/* starting wrapper class:    nsIMimeStreamConverterListener */
class nsIMimeStreamConverterListenerD : public nsISupportsD {

  static const nsIID IID = NS_IMIMESTREAMCONVERTERLISTENER_IID;


  alias nsIMimeStreamConverterListener InnerType;

  this(nsIMimeStreamConverterListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIMimeStreamConverterListener opCast() {
    return inner;
  }

  void opAssign(nsIMimeStreamConverterListener value) {
    inner = value;
  }

  /* void onHeadersReady (in nsIMimeHeaders headers); */
  void OnHeadersReady(nsIMimeHeadersD headers){
    nsresult __result = inner.OnHeadersReady(headers ? cast(nsIMimeHeaders)headers : null);
    CheckException(__result);
  }

private:
  nsIMimeStreamConverterListener inner;

}


/* starting wrapper class:    nsIMimeStreamConverter */
class nsIMimeStreamConverterD : public nsISupportsD {

  static const nsIID IID = NS_IMIMESTREAMCONVERTER_IID;


  alias nsIMimeStreamConverter InnerType;

  this(nsIMimeStreamConverter intr){
    super(intr);
    this.inner = intr;
  }

  nsIMimeStreamConverter opCast() {
    return inner;
  }

  void opAssign(nsIMimeStreamConverter value) {
    inner = value;
  }

  /* void SetMimeOutputType (in nsMimeOutputType aType); */
  void SetMimeOutputType(nsMimeOutputType aType){
    nsresult __result = inner.SetMimeOutputType(aType);
    CheckException(__result);
  }

  /* void GetMimeOutputType (out nsMimeOutputType aOutFormat); */
  void GetMimeOutputType(out nsMimeOutputType aOutFormat){
    nsresult __result = inner.GetMimeOutputType(&aOutFormat);
    CheckException(__result);
  }

  /* void SetStreamURI (in nsIURI aURI); */
  void SetStreamURI(nsIURID aURI){
    nsresult __result = inner.SetStreamURI(aURI ? cast(nsIURI)aURI : null);
    CheckException(__result);
  }

  /* void SetMimeHeadersListener (in nsIMimeStreamConverterListener listener, in nsMimeOutputType aType); */
  void SetMimeHeadersListener(nsIMimeStreamConverterListenerD listener, nsMimeOutputType aType){
    nsresult __result = inner.SetMimeHeadersListener(listener ? cast(nsIMimeStreamConverterListener)listener : null, aType);
    CheckException(__result);
  }

  /* attribute PRBool forwardInline; */
  PRBool ForwardInline(){
    PRBool value;
    nsresult __result = inner.GetForwardInline(&value);
    CheckException(__result);
    return value;
  }
  void ForwardInline(PRBool aForwardInline){
    PRBool value;
    nsresult __result = inner.SetForwardInline(value);
    CheckException(__result);
  }

  /* attribute nsIMsgIdentity identity; */
  nsIMsgIdentityD  Identity(){
    nsIMsgIdentity value;
    nsresult __result = inner.GetIdentity(&value);
    CheckException(__result);
    return new nsIMsgIdentityD(value);
  }
  void Identity(nsIMsgIdentityD  aIdentity){
    nsIMsgIdentity value;
    nsresult __result = inner.SetIdentity(value);
    CheckException(__result);
  }

  /* attribute string originalMsgURI; */
  char* OriginalMsgURI(){
    char* value;
    nsresult __result = inner.GetOriginalMsgURI(&value);
    CheckException(__result);
    return value;
  }
  void OriginalMsgURI(char* aOriginalMsgURI){
    nsresult __result = inner.SetOriginalMsgURI(aOriginalMsgURI);
    CheckException(__result);
  }

private:
  nsIMimeStreamConverter inner;

}

