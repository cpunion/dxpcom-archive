/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbDirFactory.idl
 */

module mozilla.xpcom.nsIAbDirFactory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.xpcom.nsIAbDirectory; /* forward declaration */

public import mozilla.xpcom.nsIAbDirectory;


/* starting interface:    nsIAbDirFactory */
const char[] NS_IABDIRFACTORY_IID_STR = "c2308606-1dd1-11b2-87d4-85fca9b1dc08";

const nsIID NS_IABDIRFACTORY_IID= 
  {0xc2308606, 0x1dd1, 0x11b2, 
    [ 0x87, 0xd4, 0x85, 0xfc, 0xa9, 0xb1, 0xdc, 0x08 ]};

extern(Windows)
interface nsIAbDirFactory : nsISupports {
  static const char[] IID_STR = NS_IABDIRFACTORY_IID_STR;
  static const nsIID IID = NS_IABDIRFACTORY_IID;

  /**
     * Instantiate new top level address book
     * directories given some properties. 
     * More than one directory may be
     * returned depending on the implementation
     * and integration with the associated address book
     * sources
     *
     * @param aProperties
     *        nsIAbDirectoryProperties with the properties
     * @return
     *        Enumeration of nsIAbDirectory
     *        interfaces
     */
  /* nsISimpleEnumerator createDirectory (in nsIAbDirectoryProperties aProperties); */
  nsresult CreateDirectory(nsIAbDirectoryProperties aProperties, nsISimpleEnumerator *_retval);

  /**
     * Delete a top level address book directory
     * 
     */
  /* void deleteDirectory (in nsIAbDirectory directory); */
  nsresult DeleteDirectory(nsIAbDirectory directory);

}

