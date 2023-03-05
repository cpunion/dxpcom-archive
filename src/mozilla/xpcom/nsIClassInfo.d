/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClassInfo.idl
 */

module mozilla.xpcom.nsIClassInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIProgrammingLanguage;


/* starting interface:    nsIClassInfo */
const char[] NS_ICLASSINFO_IID_STR = "986c11d0-f340-11d4-9075-0010a4e73d9a";

const nsIID NS_ICLASSINFO_IID= 
  {0x986c11d0, 0xf340, 0x11d4, 
    [ 0x90, 0x75, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

/**
 * Provides information about a specific implementation class
 * @status FROZEN
 */
extern(Windows)
interface nsIClassInfo : nsISupports {
  static const char[] IID_STR = NS_ICLASSINFO_IID_STR;
  static const nsIID IID = NS_ICLASSINFO_IID;

  /**
     * Get an ordered list of the interface ids that instances of the class 
     * promise to implement. Note that nsISupports is an implicit member 
     * of any such list and need not be included. 
     *
     * Should set *count = 0 and *array = null and return NS_OK if getting the 
     * list is not supported.
     */
  /* void getInterfaces (out PRUint32 count, [array, size_is (count), retval] out nsIIDPtr array); */
  nsresult GetInterfaces(PRUint32 *count, nsIID * **array);

  /**
     * Get a language mapping specific helper object that may assist in using
     * objects of this class in a specific lanaguage. For instance, if asked
     * for the helper for nsIProgrammingLanguage::JAVASCRIPT this might return 
     * an object that can be QI'd into the nsIXPCScriptable interface to assist 
     * XPConnect in supplying JavaScript specific behavior to callers of the 
     * instance object.
     *
     * see: nsIProgrammingLanguage.idl
     *
     * Should return null if no helper available for given language.
     */
  /* nsISupports getHelperForLanguage (in PRUint32 language); */
  nsresult GetHelperForLanguage(PRUint32 language, nsISupports *_retval);

  /**
     * A contract ID through which an instance of this class can be created
     * (or accessed as a service, if |flags & SINGLETON|), or null.
     */
  /* readonly attribute string contractID; */
  nsresult GetContractID(char * *aContractID);

  /**
     * A human readable string naming the class, or null.
     */
  /* readonly attribute string classDescription; */
  nsresult GetClassDescription(char * *aClassDescription);

  /**
     * A class ID through which an instance of this class can be created
     * (or accessed as a service, if |flags & SINGLETON|), or null.
     */
  /* readonly attribute nsCIDPtr classID; */
  nsresult GetClassID(nsCID * *aClassID);

  /**
     * Return language type from list in nsIProgrammingLanguage
     */
  /* readonly attribute PRUint32 implementationLanguage; */
  nsresult GetImplementationLanguage(PRUint32 *aImplementationLanguage);

  /**
     * Bitflags for 'flags' attribute.
     */
  enum { SINGLETON = 1U };

  enum { THREADSAFE = 2U };

  enum { MAIN_THREAD_ONLY = 4U };

  enum { DOM_OBJECT = 8U };

  enum { PLUGIN_OBJECT = 16U };

  enum { EAGER_CLASSINFO = 32U };

  /**
     * 'flags' attribute bitflag: whether objects of this type implement
     * nsIContent.
     */
  enum { CONTENT_NODE = 64U };

  enum { RESERVED = 2147483648U };

  /* readonly attribute PRUint32 flags; */
  nsresult GetFlags(PRUint32 *aFlags);

  /**
     * Also a class ID through which an instance of this class can be created
     * (or accessed as a service, if |flags & SINGLETON|).  If the class does
     * not have a CID, it should return NS_ERROR_NOT_AVAILABLE.  This attribute
     * exists so C++ callers can avoid allocating and freeing a CID, as would
     * happen if they used classID.
     */
  /* [notxpcom] readonly attribute nsCID classIDNoAlloc; */
  nsresult GetClassIDNoAlloc(nsCID *aClassIDNoAlloc);

}

