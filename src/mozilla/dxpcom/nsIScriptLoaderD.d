/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptLoader.idl
 */

module mozilla.dxpcom.nsIScriptLoaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptLoader;


public import mozilla.dxpcom.nsIScriptLoaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIScriptLoaderObserver;

public import mozilla.dxpcom.nsIScriptLoaderObserverD;


/* starting wrapper class:    nsIScriptLoader */
class nsIScriptLoaderD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTLOADER_IID;


  alias nsIScriptLoader InnerType;

  this(nsIScriptLoader intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptLoader opCast() {
    return inner;
  }

  void opAssign(nsIScriptLoader value) {
    inner = value;
  }

  /**
   * Initialize loader with a document. The container of this document
   * will be used for getting script evaluation information, including
   * the context in which to do the evaluation. The loader maintains a 
   * strong reference to the document.
   *
   * @param aDocument The document to use as the basis for script
   *        processing.
   */
  /* void init (in nsIDocument aDocument); */
  void Init(nsIDocumentD aDocument){
    nsresult __result = inner.Init(aDocument ? cast(nsIDocument)aDocument : null);
    CheckException(__result);
  }

  /**
   * The loader maintains a strong reference to the document with
   * which it is initialized. This call forces the reference to
   * be dropped.
   */
  /* void dropDocumentReference (); */
  void DropDocumentReference(){
    nsresult __result = inner.DropDocumentReference();
    CheckException(__result);
  }

  /**
   * Add an observer for all scripts loaded through this loader.
   *
   * @param aObserver observer for all script processing.
   */
  /* void addObserver (in nsIScriptLoaderObserver aObserver); */
  void AddObserver(nsIScriptLoaderObserverD aObserver){
    nsresult __result = inner.AddObserver(aObserver ? cast(nsIScriptLoaderObserver)aObserver : null);
    CheckException(__result);
  }

  /**
   * Remove an observer.
   *
   * @param aObserver observer to be removed
   */
  /* void removeObserver (in nsIScriptLoaderObserver aObserver); */
  void RemoveObserver(nsIScriptLoaderObserverD aObserver){
    nsresult __result = inner.RemoveObserver(aObserver ? cast(nsIScriptLoaderObserver)aObserver : null);
    CheckException(__result);
  }

  /**
   * Process a script element. This will include both loading the 
   * source of the element if it is not inline and evaluating
   * the script itself.
   *
   * @param aElement The element representing the script to be loaded and
   *        evaluated.
   * @param aObserver An observer for this script load only
   *
   */
  /* void processScriptElement (in nsIScriptElement aElement, in nsIScriptLoaderObserver aObserver); */
  void ProcessScriptElement(nsIScriptElementD aElement, nsIScriptLoaderObserverD aObserver){
    nsresult __result = inner.ProcessScriptElement(aElement ? cast(nsIScriptElement)aElement : null, aObserver ? cast(nsIScriptLoaderObserver)aObserver : null);
    CheckException(__result);
  }

  /**
   * Gets the currently executing script. This is useful if you want to
   * generate a unique key based on the currently executing script.
   */
  /* nsIScriptElement getCurrentScript (); */
  nsIScriptElementD  GetCurrentScript(){
    nsIScriptElement _retval;
    nsresult __result = inner.GetCurrentScript(&_retval);
    CheckException(__result);
    return new nsIScriptElementD(_retval);
  }

  /**
   * Whether the loader is enabled or not.
   * When disabled, processing of new script elements is disabled. 
   * Any call to processScriptElement() will fail with a return code of
   * NS_ERROR_NOT_AVAILABLE. Note that this DOES NOT disable
   * currently loading or executing scripts.
   */
  /* attribute boolean enabled; */
  PRBool Enabled(){
    PRBool value;
    nsresult __result = inner.GetEnabled(&value);
    CheckException(__result);
    return value;
  }
  void Enabled(PRBool aEnabled){
    nsresult __result = inner.SetEnabled(aEnabled);
    CheckException(__result);
  }

private:
  nsIScriptLoader inner;

}

