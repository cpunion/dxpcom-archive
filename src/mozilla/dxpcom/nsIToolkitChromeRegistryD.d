/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIToolkitChromeRegistry.idl
 */

module mozilla.dxpcom.nsIToolkitChromeRegistryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIToolkitChromeRegistry;


public import mozilla.dxpcom.nsIToolkitChromeRegistryD;

public import mozilla.xpcom.nsIChromeRegistry;
public import mozilla.dxpcom.nsIChromeRegistryD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIStringEnumerator;

import mozilla.dxpcom.nsIStringEnumeratorD;


/* starting wrapper class:    nsIToolkitChromeRegistry */
class nsIToolkitChromeRegistryD : public nsIXULChromeRegistryD {

  static const nsIID IID = NS_ITOOLKITCHROMEREGISTRY_IID;


  alias nsIToolkitChromeRegistry InnerType;

  this(nsIToolkitChromeRegistry intr){
    super(intr);
    this.inner = intr;
  }

  nsIToolkitChromeRegistry opCast() {
    return inner;
  }

  void opAssign(nsIToolkitChromeRegistry value) {
    inner = value;
  }

  /**
   * The "canonical" manifest is a plaintext file which sits outside of a
   * JAR file. To provide backwards-compatibility with contents.rdf, we provide
   * this function which reads a contents.rdf manifest and writes it to a file.
   *
   * @param aOldManifestURI  The URI of an old manifest to read, without
   *                         the trailing "contents.rdf", e.g.
   *                         "jar:resource:///chrome/foo.jar!/content/foo/" or
   *                         "file://path/to/contents/rdf/"
   * @param aFile            The URI of a manifest file to write. It's a good
   *                         idea to use a resource: URI if possible.
   * @param aBaseURI         The base URI for relative path creation
   *                         "jar:resource:///chrome/foo.jar!/content/foo/"
   *                         this is a separate param from aOldManifestURI so
   *                         the "contents.rdf" can be read outside of the jar
   *                         to keep the zipreader cache from holding it open.
   * @param aAppend          Whether we should append to an existing manifest
   *                         or truncate and start empty.
   * @param aSkinOnly        Only allow skin packages.
   */
  /* void processContentsManifest (in nsIURI aOldManifestURI, in nsIURI aFile, in nsIURI aBaseURI, in boolean aAppend, in boolean aSkinOnly); */
  void ProcessContentsManifest(nsIURID aOldManifestURI, nsIURID aFile, nsIURID aBaseURI, PRBool aAppend, PRBool aSkinOnly){
    nsresult __result = inner.ProcessContentsManifest(aOldManifestURI ? cast(nsIURI)aOldManifestURI : null, aFile ? cast(nsIURI)aFile : null, aBaseURI ? cast(nsIURI)aBaseURI : null, aAppend, aSkinOnly);
    CheckException(__result);
  }

  /**
   * If the OS has a "high-visibility" or "disabled-friendly" theme set,
   * we want to force mozilla into the classic theme, which (for the most part
   * obeys the system color/font settings. We cannot do this at initialization,
   * because it depends on the toolkit (GTK2) being initialized, which is
   * not the case in some embedding situations. Embedders have to manually
   * call this method during the startup process.
   */
  /* void checkForOSAccessibility (); */
  void CheckForOSAccessibility(){
    nsresult __result = inner.CheckForOSAccessibility();
    CheckException(__result);
  }

  /**
   * Get a list of locales available for the specified package.
   */
  /* nsIUTF8StringEnumerator getLocalesForPackage (in AUTF8String aPackage); */
  nsIUTF8StringEnumeratorD  GetLocalesForPackage(char[] aPackage){
    scope auto _aPackage = new ACString(aPackage);
    nsIUTF8StringEnumerator _retval;
    nsresult __result = inner.GetLocalesForPackage(cast(nsACString*)_aPackage, &_retval);
    CheckException(__result);
    return new nsIUTF8StringEnumeratorD(_retval);
  }

private:
  nsIToolkitChromeRegistry inner;

}

