/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedListener.idl
 */

module mozilla.dxpcom.nsIFeedListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFeedListener;


public import mozilla.dxpcom.nsIFeedListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFeedResult;

public import mozilla.dxpcom.nsIFeedResultD;

public import mozilla.xpcom.nsIFeedEntry;

public import mozilla.dxpcom.nsIFeedEntryD;


/* starting wrapper class:    nsIFeedResultListener */
/**
 * nsIFeedResultListener defines a callback used when feed processing
 * completes.
 */
class nsIFeedResultListenerD : public nsISupportsD {

  static const nsIID IID = NS_IFEEDRESULTLISTENER_IID;


  alias nsIFeedResultListener InnerType;

  this(nsIFeedResultListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeedResultListener opCast() {
    return inner;
  }

  void opAssign(nsIFeedResultListener value) {
    inner = value;
  }

  /** 
   * Always called, even after an error. There could be new feed-level
   * data available at this point, if it followed or was interspersed
   * with the items. Fire-and-Forget implementations only need this.
   * 
   * @param result
   *        An object implementing nsIFeedResult representing the feed 
   *        and its metadata. 
   */
  /* void handleResult (in nsIFeedResult result); */
  void HandleResult(nsIFeedResultD result){
    nsresult __result = inner.HandleResult(result ? cast(nsIFeedResult)result : null);
    CheckException(__result);
  }

private:
  nsIFeedResultListener inner;

}


/* starting wrapper class:    nsIFeedProgressListener */
/**
 * nsIFeedProgressListener defines callbacks used during feed
 * processing.
 */
class nsIFeedProgressListenerD : public nsIFeedResultListenerD {

  static const nsIID IID = NS_IFEEDPROGRESSLISTENER_IID;


  alias nsIFeedProgressListener InnerType;

  this(nsIFeedProgressListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIFeedProgressListener opCast() {
    return inner;
  }

  void opAssign(nsIFeedProgressListener value) {
    inner = value;
  }

  /**
   * ReportError will be called in the event of fatal
   * XML errors, or if the document is not a feed. The bozo 
   * bit will be set if the error was due to a fatal error. 
   * 
   * @param errorText
   *        A short description of the error.
   * @param lineNumber
   *        The line on which the error occured.
   */
  /* void reportError (in AString errorText, in long lineNumber, in boolean bozo); */
  void ReportError(wchar[] errorText, PRInt32 lineNumber, PRBool bozo){
    scope auto _errorText = new AString(errorText);
    nsresult __result = inner.ReportError(cast(nsAString*)_errorText, lineNumber, bozo);
    CheckException(__result);
  }

  /**
   * StartFeed will be called as soon as a reasonable start to
   * a feed is detected. 
   *  
   * @param result
   *        An object implementing nsIFeedResult representing the feed 
   *        and its metadata. At this point, the result has version 
   *        information.
   */
  /* void handleStartFeed (in nsIFeedResult result); */
  void HandleStartFeed(nsIFeedResultD result){
    nsresult __result = inner.HandleStartFeed(result ? cast(nsIFeedResult)result : null);
    CheckException(__result);
  }

  /**
   * Called when the first entry/item is encountered. In Atom, all
   * feed data is required to preceed the entries. In RSS, the data
   * usually does. If the type is one of the entry/item-only types,
   * this event will not be called.
   *
   * @param result
   *        An object implementing nsIFeedResult representing the feed 
   *        and its metadata. At this point, the result will likely have
   *        most of its feed-level metadata.
   */
  /* void handleFeedAtFirstEntry (in nsIFeedResult result); */
  void HandleFeedAtFirstEntry(nsIFeedResultD result){
    nsresult __result = inner.HandleFeedAtFirstEntry(result ? cast(nsIFeedResult)result : null);
    CheckException(__result);
  }

  /**
   * Called after each entry/item. If the document is a standalone
   * item or entry, this HandleFeedAtFirstEntry will not have been
   * called. Also, this entry's parent field will be null.
   * 
   * @param entry
   *        An object implementing nsIFeedEntry that represents the latest
   *        entry encountered.
   * @param result
   *        An object implementing nsIFeedResult representing the feed 
   *        and its metadata. 
   */
  /* void handleEntry (in nsIFeedEntry entry, in nsIFeedResult result); */
  void HandleEntry(nsIFeedEntryD entry, nsIFeedResultD result){
    nsresult __result = inner.HandleEntry(entry ? cast(nsIFeedEntry)entry : null, result ? cast(nsIFeedResult)result : null);
    CheckException(__result);
  }

private:
  nsIFeedProgressListener inner;

}

