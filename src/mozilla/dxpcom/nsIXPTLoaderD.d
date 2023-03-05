/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPTLoader.idl
 */

module mozilla.dxpcom.nsIXPTLoaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXPTLoader;


public import mozilla.dxpcom.nsIXPTLoaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsILocalFile;
public import mozilla.dxpcom.nsILocalFileD;
public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIXPTLoaderSink */
/**
 * Implement nsIXPTLoaderSink if you want to enumerate the entries in
 * an XPT archive of some kind
 */
class nsIXPTLoaderSinkD : public nsISupportsD {

  static const nsIID IID = NS_IXPTLOADERSINK_IID;


  alias nsIXPTLoaderSink InnerType;

  this(nsIXPTLoaderSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPTLoaderSink opCast() {
    return inner;
  }

  void opAssign(nsIXPTLoaderSink value) {
    inner = value;
  }

  /**
     * called by the loader for each entry in the archive
     * @param itemName the name of this particular item in the archive
     * @param index the index of the item inthe archive
     * @param stream contains the contents of the xpt file
     */
  /* void foundEntry (in string itemName, in long index, in nsIInputStream xptData); */
  void FoundEntry(char*itemName, PRInt32 index, nsIInputStreamD xptData){
    nsresult __result = inner.FoundEntry(itemName, index, xptData ? cast(nsIInputStream)xptData : null);
    CheckException(__result);
  }

private:
  nsIXPTLoaderSink inner;

}


/* starting wrapper class:    nsIXPTLoader */
/**
 * The XPT loader interface: implemented by a loader to grab an input
 * stream which will be consumed by the interface loader.
 */
class nsIXPTLoaderD : public nsISupportsD {

  static const nsIID IID = NS_IXPTLOADER_IID;


  alias nsIXPTLoader InnerType;

  this(nsIXPTLoader intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPTLoader opCast() {
    return inner;
  }

  void opAssign(nsIXPTLoader value) {
    inner = value;
  }

  /**
     * enumerate entries in the given archive
     * for each entry found, the loader will call the sink's
     * foundEntry() method with the appropriate information and a
     * stream that the consumer can read from
     * @param file the file to read from
     * @param sink an object which will be called with each file found
     *             in the file
     */
  /* void enumerateEntries (in nsILocalFile file, in nsIXPTLoaderSink sink); */
  void EnumerateEntries(nsILocalFileD file, nsIXPTLoaderSinkD sink){
    nsresult __result = inner.EnumerateEntries(file ? cast(nsILocalFile)file : null, sink ? cast(nsIXPTLoaderSink)sink : null);
    CheckException(__result);
  }

  /**
     * Load a specific entry from the archive
     * @param file the file to read from
     * @param name the name of the xpt within the file
     * @return an input stream that will read the raw xpt data from
     *         the file
     */
  /* nsIInputStream loadEntry (in nsILocalFile file, in string name); */
  nsIInputStreamD  LoadEntry(nsILocalFileD file, char*name){
    nsIInputStream _retval;
    nsresult __result = inner.LoadEntry(file ? cast(nsILocalFile)file : null, name, &_retval);
    CheckException(__result);
    return new nsIInputStreamD(_retval);
  }

private:
  nsIXPTLoader inner;

}

