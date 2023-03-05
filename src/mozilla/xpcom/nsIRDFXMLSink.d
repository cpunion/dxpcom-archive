/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFXMLSink.idl
 */

module mozilla.xpcom.nsIRDFXMLSink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAtom;

public import mozilla.xpcom.nsIRDFXMLSink; /* forward declaration */


/* starting interface:    nsIRDFXMLSinkObserver */
const char[] NS_IRDFXMLSINKOBSERVER_IID_STR = "eb1a5d30-ab33-11d2-8ec6-00805f29f370";

const nsIID NS_IRDFXMLSINKOBSERVER_IID= 
  {0xeb1a5d30, 0xab33, 0x11d2, 
    [ 0x8e, 0xc6, 0x00, 0x80, 0x5f, 0x29, 0xf3, 0x70 ]};

/**
 * An observer that is notified as progress is made on the load
 * of an RDF/XML document in an <code>nsIRDFXMLSink</code>.
 */
extern(Windows)
interface nsIRDFXMLSinkObserver : nsISupports {
  static const char[] IID_STR = NS_IRDFXMLSINKOBSERVER_IID_STR;
  static const nsIID IID = NS_IRDFXMLSINKOBSERVER_IID;

  /**
     * Called when the load begins.
     * @param aSink the RDF/XML sink on which the load is beginning.
     */
  /* void onBeginLoad (in nsIRDFXMLSink aSink); */
  nsresult OnBeginLoad(nsIRDFXMLSink aSink);

  /**
     * Called when the load is suspended (e.g., for network quantization).
     * @param aSink the RDF/XML sink that is being interrupted.
     */
  /* void onInterrupt (in nsIRDFXMLSink aSink); */
  nsresult OnInterrupt(nsIRDFXMLSink aSink);

  /**
     * Called when a suspended load is resuming.
     * @param aSink the RDF/XML sink that is resuming.
     */
  /* void onResume (in nsIRDFXMLSink aSink); */
  nsresult OnResume(nsIRDFXMLSink aSink);

  /**
     * Called when an RDF/XML load completes successfully.
     * @param aSink the RDF/XML sink that has finished loading.
     */
  /* void onEndLoad (in nsIRDFXMLSink aSink); */
  nsresult OnEndLoad(nsIRDFXMLSink aSink);

  /**
     * Called when an error occurs during the load
     * @param aSink the RDF/XML sink in which the error occurred
     * @param aStatus the networking result code
     * @param aErrorMsg an error message, if applicable
     */
  /* void onError (in nsIRDFXMLSink aSink, in nsresult aStatus, in wstring aErrorMsg); */
  nsresult OnError(nsIRDFXMLSink aSink, nsresult aStatus, PRUnichar *aErrorMsg);

}


/* starting interface:    nsIRDFXMLSink */
const char[] NS_IRDFXMLSINK_IID_STR = "eb1a5d31-ab33-11d2-8ec6-00805f29f370";

const nsIID NS_IRDFXMLSINK_IID= 
  {0xeb1a5d31, 0xab33, 0x11d2, 
    [ 0x8e, 0xc6, 0x00, 0x80, 0x5f, 0x29, 0xf3, 0x70 ]};

extern(Windows)
interface nsIRDFXMLSink : nsISupports {
  static const char[] IID_STR = NS_IRDFXMLSINK_IID_STR;
  static const nsIID IID = NS_IRDFXMLSINK_IID;

  /**
 * A "sink" that receives and processes RDF/XML. This interface is used
 * by the RDF/XML parser.
 */
/**
     * Set to <code>true</code> if the sink is read-only and cannot
     * be modified
     */
  /* attribute boolean readOnly; */
  nsresult GetReadOnly(PRBool *aReadOnly);
  nsresult SetReadOnly(PRBool aReadOnly);

  /**
     * Initiate the RDF/XML load.
     */
  /* void beginLoad (); */
  nsresult BeginLoad();

  /**
     * Suspend the RDF/XML load.
     */
  /* void interrupt (); */
  nsresult Interrupt();

  /**
     * Resume the RDF/XML load.
     */
  /* void resume (); */
  nsresult Resume();

  /**
     * Complete the RDF/XML load.
     */
  /* void endLoad (); */
  nsresult EndLoad();

  /**
     * Add namespace information to the RDF/XML sink.
     * @param aPrefix the namespace prefix
     * @param aURI the namespace URI
     */
  /* [noscript] void addNameSpace (in nsIAtomPtr aPrefix, [const] in nsStringRef aURI); */
  nsresult AddNameSpace(nsIAtom * aPrefix, nsString * aURI);

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
  nsresult AddXMLSinkObserver(nsIRDFXMLSinkObserver aObserver);

  /**
     * Remove an observer from the sink's set of observers.
     * @param aObserver the observer to remove.
     */
  /* void removeXMLSinkObserver (in nsIRDFXMLSinkObserver aObserver); */
  nsresult RemoveXMLSinkObserver(nsIRDFXMLSinkObserver aObserver);

}

