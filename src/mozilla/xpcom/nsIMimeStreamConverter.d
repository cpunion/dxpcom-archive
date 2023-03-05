/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMimeStreamConverter.idl
 */

module mozilla.xpcom.nsIMimeStreamConverter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;
public import mozilla.xpcom.nsIMimeHeaders;
public import mozilla.xpcom.nsIMsgIdentity;

public import mozilla.xpcom.nsIURI; /* forward declaration */

alias PRInt32 nsMimeOutputType;


/* starting interface:    nsMimeOutput */
const char[] NS_MIMEOUTPUT_IID_STR = "fdc2956e-d558-43fb-bfdd-fb9511229aa5";

const nsIID NS_MIMEOUTPUT_IID= 
  {0xfdc2956e, 0xd558, 0x43fb, 
    [ 0xbf, 0xdd, 0xfb, 0x95, 0x11, 0x22, 0x9a, 0xa5 ]};

extern(Windows)
interface nsMimeOutput {
  static const char[] IID_STR = NS_MIMEOUTPUT_IID_STR;
  static const nsIID IID = NS_MIMEOUTPUT_IID;

  enum { nsMimeMessageSplitDisplay = 0 };

  enum { nsMimeMessageHeaderDisplay = 1 };

  enum { nsMimeMessageBodyDisplay = 2 };

  enum { nsMimeMessageQuoting = 3 };

  enum { nsMimeMessageBodyQuoting = 4 };

  enum { nsMimeMessageRaw = 5 };

  enum { nsMimeMessageDraftOrTemplate = 6 };

  enum { nsMimeMessageEditorTemplate = 7 };

  enum { nsMimeMessagePrintOutput = 9 };

  enum { nsMimeMessageSaveAs = 10 };

  enum { nsMimeMessageSource = 11 };

  enum { nsMimeMessageFilterSniffer = 12 };

  enum { nsMimeMessageDecrypt = 13 };

  enum { nsMimeMessageAttach = 14 };

  enum { nsMimeUnknown = 15 };

}


/* starting interface:    nsIMimeStreamConverterListener */
const char[] NS_IMIMESTREAMCONVERTERLISTENER_IID_STR = "fa81caa0-6261-11d3-8311-00805f2a0107";

const nsIID NS_IMIMESTREAMCONVERTERLISTENER_IID= 
  {0xfa81caa0, 0x6261, 0x11d3, 
    [ 0x83, 0x11, 0x00, 0x80, 0x5f, 0x2a, 0x01, 0x07 ]};

extern(Windows)
interface nsIMimeStreamConverterListener : nsISupports {
  static const char[] IID_STR = NS_IMIMESTREAMCONVERTERLISTENER_IID_STR;
  static const nsIID IID = NS_IMIMESTREAMCONVERTERLISTENER_IID;

  /* void onHeadersReady (in nsIMimeHeaders headers); */
  nsresult OnHeadersReady(nsIMimeHeaders headers);

}


/* starting interface:    nsIMimeStreamConverter */
const char[] NS_IMIMESTREAMCONVERTER_IID_STR = "e4ed8892-3f9e-11d3-9896-001083010e9b";

const nsIID NS_IMIMESTREAMCONVERTER_IID= 
  {0xe4ed8892, 0x3f9e, 0x11d3, 
    [ 0x98, 0x96, 0x00, 0x10, 0x83, 0x01, 0x0e, 0x9b ]};

extern(Windows)
interface nsIMimeStreamConverter : nsISupports {
  static const char[] IID_STR = NS_IMIMESTREAMCONVERTER_IID_STR;
  static const nsIID IID = NS_IMIMESTREAMCONVERTER_IID;

  /* void SetMimeOutputType (in nsMimeOutputType aType); */
  nsresult SetMimeOutputType(nsMimeOutputType aType);

  /* void GetMimeOutputType (out nsMimeOutputType aOutFormat); */
  nsresult GetMimeOutputType(nsMimeOutputType *aOutFormat);

  /* void SetStreamURI (in nsIURI aURI); */
  nsresult SetStreamURI(nsIURI aURI);

  /* void SetMimeHeadersListener (in nsIMimeStreamConverterListener listener, in nsMimeOutputType aType); */
  nsresult SetMimeHeadersListener(nsIMimeStreamConverterListener listener, nsMimeOutputType aType);

  /* attribute PRBool forwardInline; */
  nsresult GetForwardInline(PRBool *aForwardInline);
  nsresult SetForwardInline(PRBool aForwardInline);

  /* attribute nsIMsgIdentity identity; */
  nsresult GetIdentity(nsIMsgIdentity  *aIdentity);
  nsresult SetIdentity(nsIMsgIdentity  aIdentity);

  /* attribute string originalMsgURI; */
  nsresult GetOriginalMsgURI(char * *aOriginalMsgURI);
  nsresult SetOriginalMsgURI(char * aOriginalMsgURI);

}

