/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImapMockChannel.idl
 */

module mozilla.xpcom.nsIImapMockChannel;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIChannel;

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */

public import mozilla.xpcom.nsIProgressEventSink; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIImapProtocol; /* forward declaration */


/* starting interface:    nsIImapMockChannel */
const char[] NS_IIMAPMOCKCHANNEL_IID_STR = "e0178cd5-d37b-4bde-9ab8-752083536225";

const nsIID NS_IIMAPMOCKCHANNEL_IID= 
  {0xe0178cd5, 0xd37b, 0x4bde, 
    [ 0x9a, 0xb8, 0x75, 0x20, 0x83, 0x53, 0x62, 0x25 ]};

extern(Windows)
interface nsIImapMockChannel : nsIChannel {
  static const char[] IID_STR = NS_IIMAPMOCKCHANNEL_IID_STR;
  static const nsIID IID = NS_IIMAPMOCKCHANNEL_IID;

  /* attribute nsIProgressEventSink progressEventSink; */
  nsresult GetProgressEventSink(nsIProgressEventSink  *aProgressEventSink);
  nsresult SetProgressEventSink(nsIProgressEventSink  aProgressEventSink);

  /* void GetChannelListener (out nsIStreamListener aChannelListener); */
  nsresult GetChannelListener(nsIStreamListener *aChannelListener);

  /* void GetChannelContext (out nsISupports aChannelContext); */
  nsresult GetChannelContext(nsISupports *aChannelContext);

  /* void Close (); */
  nsresult Close();

  /* void setImapProtocol (in nsIImapProtocol aProtocol); */
  nsresult SetImapProtocol(nsIImapProtocol aProtocol);

  /* [noscript] void setSecurityInfo (in nsISupports securityInfo); */
  nsresult SetSecurityInfo(nsISupports securityInfo);

  /* void setURI (in nsIURI uri); */
  nsresult SetURI(nsIURI uri);

}

