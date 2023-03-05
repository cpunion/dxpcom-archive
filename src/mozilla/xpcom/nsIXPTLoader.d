/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPTLoader.idl
 */

module mozilla.xpcom.nsIXPTLoader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsILocalFile;
public import mozilla.xpcom.nsIInputStream;


/* starting interface:    nsIXPTLoaderSink */
const char[] NS_IXPTLOADERSINK_IID_STR = "6e48c500-8682-4730-add6-7db693b9e7ba";

const nsIID NS_IXPTLOADERSINK_IID= 
  {0x6e48c500, 0x8682, 0x4730, 
    [ 0xad, 0xd6, 0x7d, 0xb6, 0x93, 0xb9, 0xe7, 0xba ]};

/**
 * Implement nsIXPTLoaderSink if you want to enumerate the entries in
 * an XPT archive of some kind
 */
extern(Windows)
interface nsIXPTLoaderSink : nsISupports {
  static const char[] IID_STR = NS_IXPTLOADERSINK_IID_STR;
  static const nsIID IID = NS_IXPTLOADERSINK_IID;

  /**
     * called by the loader for each entry in the archive
     * @param itemName the name of this particular item in the archive
     * @param index the index of the item inthe archive
     * @param stream contains the contents of the xpt file
     */
  /* void foundEntry (in string itemName, in long index, in nsIInputStream xptData); */
  nsresult FoundEntry(char *itemName, PRInt32 index, nsIInputStream xptData);

}


/* starting interface:    nsIXPTLoader */
const char[] NS_IXPTLOADER_IID_STR = "368a15d9-17a9-4c2b-ac3d-a35b3a22b876";

const nsIID NS_IXPTLOADER_IID= 
  {0x368a15d9, 0x17a9, 0x4c2b, 
    [ 0xac, 0x3d, 0xa3, 0x5b, 0x3a, 0x22, 0xb8, 0x76 ]};

/**
 * The XPT loader interface: implemented by a loader to grab an input
 * stream which will be consumed by the interface loader.
 */
extern(Windows)
interface nsIXPTLoader : nsISupports {
  static const char[] IID_STR = NS_IXPTLOADER_IID_STR;
  static const nsIID IID = NS_IXPTLOADER_IID;

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
  nsresult EnumerateEntries(nsILocalFile file, nsIXPTLoaderSink sink);

  /**
     * Load a specific entry from the archive
     * @param file the file to read from
     * @param name the name of the xpt within the file
     * @return an input stream that will read the raw xpt data from
     *         the file
     */
  /* nsIInputStream loadEntry (in nsILocalFile file, in string name); */
  nsresult LoadEntry(nsILocalFile file, char *name, nsIInputStream *_retval);

}

