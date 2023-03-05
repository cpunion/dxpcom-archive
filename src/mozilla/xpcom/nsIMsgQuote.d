/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgQuote.idl
 */

module mozilla.xpcom.nsIMsgQuote;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIStreamListener;
public import mozilla.xpcom.nsIChannel;
public import mozilla.xpcom.nsIMimeStreamConverter;


/* starting interface:    nsIMsgQuote */
const char[] NS_IMSGQUOTE_IID_STR = "1c7abf0c-21e5-11d3-8ef1-00a024a7d144";

const nsIID NS_IMSGQUOTE_IID= 
  {0x1c7abf0c, 0x21e5, 0x11d3, 
    [ 0x8e, 0xf1, 0x00, 0xa0, 0x24, 0xa7, 0xd1, 0x44 ]};

extern(Windows)
interface nsIMsgQuote : nsISupports {
  static const char[] IID_STR = NS_IMSGQUOTE_IID_STR;
  static const nsIID IID = NS_IMSGQUOTE_IID;

  /* void QuoteMessage (in string msgURI, in boolean quoteHeaders, in nsIStreamListener aStreamListener, in string aCharset, in boolean headersOnly); */
  nsresult QuoteMessage(char *msgURI, PRBool quoteHeaders, nsIStreamListener aStreamListener, char *aCharset, PRBool headersOnly);

  /* readonly attribute nsIMimeStreamConverterListener quoteListener; */
  nsresult GetQuoteListener(nsIMimeStreamConverterListener  *aQuoteListener);

  /* readonly attribute nsIChannel quoteChannel; */
  nsresult GetQuoteChannel(nsIChannel  *aQuoteChannel);

  /* readonly attribute nsIStreamListener streamListener; */
  nsresult GetStreamListener(nsIStreamListener  *aStreamListener);

}


/* starting interface:    nsIMsgQuoteListener */
const char[] NS_IMSGQUOTELISTENER_IID_STR = "1ec75ad9-88de-11d3-989d-001083010e9b";

const nsIID NS_IMSGQUOTELISTENER_IID= 
  {0x1ec75ad9, 0x88de, 0x11d3, 
    [ 0x98, 0x9d, 0x00, 0x10, 0x83, 0x01, 0x0e, 0x9b ]};

extern(Windows)
interface nsIMsgQuoteListener : nsIMimeStreamConverterListener {
  static const char[] IID_STR = NS_IMSGQUOTELISTENER_IID_STR;
  static const nsIID IID = NS_IMSGQUOTELISTENER_IID;

  /* attribute nsIMsgQuote msgQuote; */
  nsresult GetMsgQuote(nsIMsgQuote  *aMsgQuote);
  nsresult SetMsgQuote(nsIMsgQuote  aMsgQuote);

}

