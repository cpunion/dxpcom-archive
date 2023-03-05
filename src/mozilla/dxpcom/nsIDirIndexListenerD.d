/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDirIndexListener.idl
 */

module mozilla.dxpcom.nsIDirIndexListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDirIndexListener;


public import mozilla.dxpcom.nsIDirIndexListenerD;

public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIDirIndex;

public import mozilla.dxpcom.nsIDirIndexD;


/* starting wrapper class:    nsIDirIndexListener */
/**
 * This interface is used to receive contents of directory index listings
 * from a protocol. They can then be transformed into an output format
 * (such as rdf, html, etc)
 */
class nsIDirIndexListenerD : public nsISupportsD {

  static const nsIID IID = NS_IDIRINDEXLISTENER_IID;


  alias nsIDirIndexListener InnerType;

  this(nsIDirIndexListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIDirIndexListener opCast() {
    return inner;
  }

  void opAssign(nsIDirIndexListener value) {
    inner = value;
  }

  /**
     * Called for each directory entry
     *
     * @param request - the request
     * @param ctxt - opaque parameter
     * @param index - new index to add
     */
  /* void onIndexAvailable (in nsIRequest aRequest, in nsISupports aCtxt, in nsIDirIndex aIndex); */
  void OnIndexAvailable(nsIRequestD aRequest, nsISupportsD aCtxt, nsIDirIndexD aIndex){
    nsresult __result = inner.OnIndexAvailable(aRequest ? cast(nsIRequest)aRequest : null, aCtxt ? cast(nsISupports)aCtxt : null, aIndex ? cast(nsIDirIndex)aIndex : null);
    CheckException(__result);
  }

  /**
     * Called for each information line
     *
     * @param request - the request
     * @param ctxt - opaque parameter
     * @param info - new info to add
     */
  /* void onInformationAvailable (in nsIRequest aRequest, in nsISupports aCtxt, in AString aInfo); */
  void OnInformationAvailable(nsIRequestD aRequest, nsISupportsD aCtxt, wchar[] aInfo){
    scope auto _aInfo = new AString(aInfo);
    nsresult __result = inner.OnInformationAvailable(aRequest ? cast(nsIRequest)aRequest : null, aCtxt ? cast(nsISupports)aCtxt : null, cast(nsAString*)_aInfo);
    CheckException(__result);
  }

private:
  nsIDirIndexListener inner;

}


/* starting wrapper class:    nsIDirIndexParser */
/**
 * A parser for application/http-index-format
 */
class nsIDirIndexParserD : public nsIStreamListenerD {

  static const nsIID IID = NS_IDIRINDEXPARSER_IID;


  alias nsIDirIndexParser InnerType;

  this(nsIDirIndexParser intr){
    super(intr);
    this.inner = intr;
  }

  nsIDirIndexParser opCast() {
    return inner;
  }

  void opAssign(nsIDirIndexParser value) {
    inner = value;
  }

  /**
     * The interface to use as a callback for new entries
     */
  /* attribute nsIDirIndexListener listener; */
  nsIDirIndexListenerD  Listener(){
    nsIDirIndexListener value;
    nsresult __result = inner.GetListener(&value);
    CheckException(__result);
    return new nsIDirIndexListenerD(value);
  }
  void Listener(nsIDirIndexListenerD  aListener){
    nsIDirIndexListener value;
    nsresult __result = inner.SetListener(value);
    CheckException(__result);
  }

  /**
     * The comment given, if any
     * This result is only valid _after_ OnStopRequest has occurred,
     * because it can occur anywhere in the datastream
     */
  /* readonly attribute string comment; */
  char* Comment(){
    char* value;
    nsresult __result = inner.GetComment(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The encoding to use
     */
  /* attribute string encoding; */
  char* Encoding(){
    char* value;
    nsresult __result = inner.GetEncoding(&value);
    CheckException(__result);
    return value;
  }
  void Encoding(char* aEncoding){
    nsresult __result = inner.SetEncoding(aEncoding);
    CheckException(__result);
  }

private:
  nsIDirIndexParser inner;

}

