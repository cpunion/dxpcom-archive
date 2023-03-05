/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFXMLSink.idl
 */

module mozilla.dxpcom.nsIRDFXMLSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFXMLSink;


public import mozilla.dxpcom.nsIRDFXMLSinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAtom;
public import mozilla.dxpcom.nsIAtomD;

public import mozilla.xpcom.nsIRDFXMLSink;

public import mozilla.dxpcom.nsIRDFXMLSinkD;


/* starting wrapper class:    nsIRDFXMLSinkObserver */
/**
 * An observer that is notified as progress is made on the load
 * of an RDF/XML document in an <code>nsIRDFXMLSink</code>.
 */
class nsIRDFXMLSinkObserverD : public nsISupportsD {

  static const nsIID IID = NS_IRDFXMLSINKOBSERVER_IID;


  alias nsIRDFXMLSinkObserver InnerType;

  this(nsIRDFXMLSinkObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFXMLSinkObserver opCast() {
    return inner;
  }

  void opAssign(nsIRDFXMLSinkObserver value) {
    inner = value;
  }

  /**
     * Called when the load begins.
     * @param aSink the RDF/XML sink on which the load is beginning.
     */
  /* void onBeginLoad (in nsIRDFXMLSink aSink); */
  void OnBeginLoad(nsIRDFXMLSinkD aSink){
    nsresult __result = inner.OnBeginLoad(aSink ? cast(nsIRDFXMLSink)aSink : null);
    CheckException(__result);
  }

  /**
     * Called when the load is suspended (e.g., for network quantization).
     * @param aSink the RDF/XML sink that is being interrupted.
     */
  /* void onInterrupt (in nsIRDFXMLSink aSink); */
  void OnInterrupt(nsIRDFXMLSinkD aSink){
    nsresult __result = inner.OnInterrupt(aSink ? cast(nsIRDFXMLSink)aSink : null);
    CheckException(__result);
  }

  /**
     * Called when a suspended load is resuming.
     * @param aSink the RDF/XML sink that is resuming.
     */
  /* void onResume (in nsIRDFXMLSink aSink); */
  void OnResume(nsIRDFXMLSinkD aSink){
    nsresult __result = inner.OnResume(aSink ? cast(nsIRDFXMLSink)aSink : null);
    CheckException(__result);
  }

  /**
     * Called when an RDF/XML load completes successfully.
     * @param aSink the RDF/XML sink that has finished loading.
     */
  /* void onEndLoad (in nsIRDFXMLSink aSink); */
  void OnEndLoad(nsIRDFXMLSinkD aSink){
    nsresult __result = inner.OnEndLoad(aSink ? cast(nsIRDFXMLSink)aSink : null);
    CheckException(__result);
  }

  /**
     * Called when an error occurs during the load
     * @param aSink the RDF/XML sink in which the error occurred
     * @param aStatus the networking result code
     * @param aErrorMsg an error message, if applicable
     */
  /* void onError (in nsIRDFXMLSink aSink, in nsresult aStatus, in wstring aErrorMsg); */
  void OnError(nsIRDFXMLSinkD aSink, nsresult aStatus, PRUnichar*aErrorMsg){
    nsresult __result = inner.OnError(aSink ? cast(nsIRDFXMLSink)aSink : null, aStatus, aErrorMsg);
    CheckException(__result);
  }

private:
  nsIRDFXMLSinkObserver inner;

}


/* starting wrapper class:    nsIRDFXMLSink */
class nsIRDFXMLSinkD : public nsISupportsD {

  static const nsIID IID = NS_IRDFXMLSINK_IID;


  alias nsIRDFXMLSink InnerType;

  this(nsIRDFXMLSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFXMLSink opCast() {
    return inner;
  }

  void opAssign(nsIRDFXMLSink value) {
    inner = value;
  }

  /**
 * A "sink" that receives and processes RDF/XML. This interface is used
 * by the RDF/XML parser.
 */
/**
     * Set to <code>true</code> if the sink is read-only and cannot
     * be modified
     */
  /* attribute boolean readOnly; */
  PRBool ReadOnly(){
    PRBool value;
    nsresult __result = inner.GetReadOnly(&value);
    CheckException(__result);
    return value;
  }
  void ReadOnly(PRBool aReadOnly){
    nsresult __result = inner.SetReadOnly(aReadOnly);
    CheckException(__result);
  }

  /**
     * Initiate the RDF/XML load.
     */
  /* void beginLoad (); */
  void BeginLoad(){
    nsresult __result = inner.BeginLoad();
    CheckException(__result);
  }

  /**
     * Suspend the RDF/XML load.
     */
  /* void interrupt (); */
  void Interrupt(){
    nsresult __result = inner.Interrupt();
    CheckException(__result);
  }

  /**
     * Resume the RDF/XML load.
     */
  /* void resume (); */
  void Resume(){
    nsresult __result = inner.Resume();
    CheckException(__result);
  }

  /**
     * Complete the RDF/XML load.
     */
  /* void endLoad (); */
  void EndLoad(){
    nsresult __result = inner.EndLoad();
    CheckException(__result);
  }

  /**
     * Add namespace information to the RDF/XML sink.
     * @param aPrefix the namespace prefix
     * @param aURI the namespace URI
     */
  /* [noscript] void addNameSpace (in nsIAtomPtr aPrefix, [const] in nsStringRef aURI); */
  void AddNameSpace(nsIAtom * aPrefix, nsString * aURI){
    nsresult __result = inner.AddNameSpace(aPrefix, aURI);
    CheckException(__result);
  }

  /**
     * Add an observer that will be notified as the RDF/XML load
     * progresses.
     * <p>
     *
     * Note that the sink will acquire a strong reference to the
     * observer, so care should be taken to avoid cyclical references
     * that cannot be released (i.e., if the observer holds a
     * reference to the sink, it should be sure that it eventually
     * clears the reference).
     *
     * @param aObserver the observer to add to the sink's set of
     * load observers.
     */
  /* void addXMLSinkObserver (in nsIRDFXMLSinkObserver aObserver); */
  void AddXMLSinkObserver(nsIRDFXMLSinkObserverD aObserver){
    nsresult __result = inner.AddXMLSinkObserver(aObserver ? cast(nsIRDFXMLSinkObserver)aObserver : null);
    CheckException(__result);
  }

  /**
     * Remove an observer from the sink's set of observers.
     * @param aObserver the observer to remove.
     */
  /* void removeXMLSinkObserver (in nsIRDFXMLSinkObserver aObserver); */
  void RemoveXMLSinkObserver(nsIRDFXMLSinkObserverD aObserver){
    nsresult __result = inner.RemoveXMLSinkObserver(aObserver ? cast(nsIRDFXMLSinkObserver)aObserver : null);
    CheckException(__result);
  }

private:
  nsIRDFXMLSink inner;

}

