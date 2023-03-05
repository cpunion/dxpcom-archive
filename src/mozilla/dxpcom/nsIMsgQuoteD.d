/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgQuote.idl
 */

module mozilla.dxpcom.nsIMsgQuoteD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgQuote;


public import mozilla.dxpcom.nsIMsgQuoteD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;
public import mozilla.xpcom.nsIChannel;
public import mozilla.dxpcom.nsIChannelD;
public import mozilla.xpcom.nsIMimeStreamConverter;
public import mozilla.dxpcom.nsIMimeStreamConverterD;


/* starting wrapper class:    nsIMsgQuote */
class nsIMsgQuoteD : public nsISupportsD {

  static const nsIID IID = NS_IMSGQUOTE_IID;


  alias nsIMsgQuote InnerType;

  this(nsIMsgQuote intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgQuote opCast() {
    return inner;
  }

  void opAssign(nsIMsgQuote value) {
    inner = value;
  }

  /* void QuoteMessage (in string msgURI, in boolean quoteHeaders, in nsIStreamListener aStreamListener, in string aCharset, in boolean headersOnly); */
  void QuoteMessage(char*msgURI, PRBool quoteHeaders, nsIStreamListenerD aStreamListener, char*aCharset, PRBool headersOnly){
    nsresult __result = inner.QuoteMessage(msgURI, quoteHeaders, aStreamListener ? cast(nsIStreamListener)aStreamListener : null, aCharset, headersOnly);
    CheckException(__result);
  }

  /* readonly attribute nsIMimeStreamConverterListener quoteListener; */
  nsIMimeStreamConverterListenerD  QuoteListener(){
    nsIMimeStreamConverterListener value;
    nsresult __result = inner.GetQuoteListener(&value);
    CheckException(__result);
    return new nsIMimeStreamConverterListenerD(value);
  }

  /* readonly attribute nsIChannel quoteChannel; */
  nsIChannelD  QuoteChannel(){
    nsIChannel value;
    nsresult __result = inner.GetQuoteChannel(&value);
    CheckException(__result);
    return new nsIChannelD(value);
  }

  /* readonly attribute nsIStreamListener streamListener; */
  nsIStreamListenerD  StreamListener(){
    nsIStreamListener value;
    nsresult __result = inner.GetStreamListener(&value);
    CheckException(__result);
    return new nsIStreamListenerD(value);
  }

private:
  nsIMsgQuote inner;

}


/* starting wrapper class:    nsIMsgQuoteListener */
class nsIMsgQuoteListenerD : public nsIMimeStreamConverterListenerD {

  static const nsIID IID = NS_IMSGQUOTELISTENER_IID;


  alias nsIMsgQuoteListener InnerType;

  this(nsIMsgQuoteListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgQuoteListener opCast() {
    return inner;
  }

  void opAssign(nsIMsgQuoteListener value) {
    inner = value;
  }

  /* attribute nsIMsgQuote msgQuote; */
  nsIMsgQuoteD  MsgQuote(){
    nsIMsgQuote value;
    nsresult __result = inner.GetMsgQuote(&value);
    CheckException(__result);
    return new nsIMsgQuoteD(value);
  }
  void MsgQuote(nsIMsgQuoteD  aMsgQuote){
    nsIMsgQuote value;
    nsresult __result = inner.SetMsgQuote(value);
    CheckException(__result);
  }

private:
  nsIMsgQuoteListener inner;

}

