/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptLoader.idl
 */

module mozilla.xpcom.nsIScriptLoader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIScriptLoaderObserver; /* forward declaration */


/* starting interface:    nsIScriptLoader */
const char[] NS_ISCRIPTLOADER_IID_STR = "339a4eb5-dac6-4034-8c43-f4f8c645ce57";

const nsIID NS_ISCRIPTLOADER_IID= 
  {0x339a4eb5, 0xdac6, 0x4034, 
    [ 0x8c, 0x43, 0xf4, 0xf8, 0xc6, 0x45, 0xce, 0x57 ]};

extern(Windows)
interface nsIScriptLoader : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTLOADER_IID_STR;
  static const nsIID IID = NS_ISCRIPTLOADER_IID;

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
  nsresult Init(nsIDocument aDocument);

  /**
   * The loader maintains a strong reference to the document with
   * which it is initialized. This call forces the reference to
   * be dropped.
   */
  /* void dropDocumentReference (); */
  nsresult DropDocumentReference();

  /**
   * Add an observer for all scripts loaded through this loader.
   *
   * @param aObserver observer for all script processing.
   */
  /* void addObserver (in nsIScriptLoaderObserver aObserver); */
  nsresult AddObserver(nsIScriptLoaderObserver aObserver);

  /**
   * Remove an observer.
   *
   * @param aObserver observer to be removed
   */
  /* void removeObserver (in nsIScriptLoaderObserver aObserver); */
  nsresult RemoveObserver(nsIScriptLoaderObserver aObserver);

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
  nsresult ProcessScriptElement(nsIScriptElement aElement, nsIScriptLoaderObserver aObserver);

  /**
   * Gets the currently executing script. This is useful if you want to
   * generate a unique key based on the currently executing script.
   */
  /* nsIScriptElement getCurrentScript (); */
  nsresult GetCurrentScript(nsIScriptElement *_retval);

  /**
   * Whether the loader is enabled or not.
   * When disabled, processing of new script elements is disabled. 
   * Any call to processScriptElement() will fail with a return code of
   * NS_ERROR_NOT_AVAILABLE. Note that this DOES NOT disable
   * currently loading or executing scripts.
   */
  /* attribute boolean enabled; */
  nsresult GetEnabled(PRBool *aEnabled);
  nsresult SetEnabled(PRBool aEnabled);

}

