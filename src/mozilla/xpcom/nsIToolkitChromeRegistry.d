/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIToolkitChromeRegistry.idl
 */

module mozilla.xpcom.nsIToolkitChromeRegistry;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIChromeRegistry;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIStringEnumerator;


/* starting interface:    nsIToolkitChromeRegistry */
const char[] NS_ITOOLKITCHROMEREGISTRY_IID_STR = "94490b3f-f094-418e-b1b9-73878d29bff3";

const nsIID NS_ITOOLKITCHROMEREGISTRY_IID= 
  {0x94490b3f, 0xf094, 0x418e, 
    [ 0xb1, 0xb9, 0x73, 0x87, 0x8d, 0x29, 0xbf, 0xf3 ]};

extern(Windows)
interface nsIToolkitChromeRegistry : nsIXULChromeRegistry {
  static const char[] IID_STR = NS_ITOOLKITCHROMEREGISTRY_IID_STR;
  static const nsIID IID = NS_ITOOLKITCHROMEREGISTRY_IID;

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
  nsresult ProcessContentsManifest(nsIURI aOldManifestURI, nsIURI aFile, nsIURI aBaseURI, PRBool aAppend, PRBool aSkinOnly);

  /**
   * If the OS has a "high-visibility" or "disabled-friendly" theme set,
   * we want to force mozilla into the classic theme, which (for the most part
   * obeys the system color/font settings. We cannot do this at initialization,
   * because it depends on the toolkit (GTK2) being initialized, which is
   * not the case in some embedding situations. Embedders have to manually
   * call this method during the startup process.
   */
  /* void checkForOSAccessibility (); */
  nsresult CheckForOSAccessibility();

  /**
   * Get a list of locales available for the specified package.
   */
  /* nsIUTF8StringEnumerator getLocalesForPackage (in AUTF8String aPackage); */
  nsresult GetLocalesForPackage(nsACString * aPackage, nsIUTF8StringEnumerator *_retval);

}

