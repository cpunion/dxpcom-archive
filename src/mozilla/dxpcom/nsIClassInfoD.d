/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClassInfo.idl
 */

module mozilla.dxpcom.nsIClassInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIClassInfo;


public import mozilla.dxpcom.nsIClassInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIProgrammingLanguage;
public import mozilla.dxpcom.nsIProgrammingLanguageD;


/* starting wrapper class:    nsIClassInfo */
/**
 * Provides information about a specific implementation class
 * @status FROZEN
 */
class nsIClassInfoD : public nsISupportsD {

  static const nsIID IID = NS_ICLASSINFO_IID;


  alias nsIClassInfo InnerType;

  this(nsIClassInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIClassInfo opCast() {
    return inner;
  }

  void opAssign(nsIClassInfo value) {
    inner = value;
  }

  /**
     * Get an ordered list of the interface ids that instances of the class 
     * promise to implement. Note that nsISupports is an implicit member 
     * of any such list and need not be included. 
     *
     * Should set *count = 0 and *array = null and return NS_OK if getting the 
     * list is not supported.
     */
  /* void getInterfaces (out PRUint32 count, [array, size_is (count), retval] out nsIIDPtr array); */
  void GetInterfaces(out PRUint32 count, out nsIID * *array){
    nsresult __result = inner.GetInterfaces(&count, &array);
    CheckException(__result);
  }

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
  nsISupportsD  GetHelperForLanguage(PRUint32 language){
    nsISupports _retval;
    nsresult __result = inner.GetHelperForLanguage(language, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /**
     * A contract ID through which an instance of this class can be created
     * (or accessed as a service, if |flags & SINGLETON|), or null.
     */
  /* readonly attribute string contractID; */
  char* ContractID(){
    char* value;
    nsresult __result = inner.GetContractID(&value);
    CheckException(__result);
    return value;
  }

  /**
     * A human readable string naming the class, or null.
     */
  /* readonly attribute string classDescription; */
  char* ClassDescription(){
    char* value;
    nsresult __result = inner.GetClassDescription(&value);
    CheckException(__result);
    return value;
  }

  /**
     * A class ID through which an instance of this class can be created
     * (or accessed as a service, if |flags & SINGLETON|), or null.
     */
  /* readonly attribute nsCIDPtr classID; */
  nsCID * ClassID(){
    nsCID * value;
    nsresult __result = inner.GetClassID(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Return language type from list in nsIProgrammingLanguage
     */
  /* readonly attribute PRUint32 implementationLanguage; */
  PRUint32 ImplementationLanguage(){
    PRUint32 value;
    nsresult __result = inner.GetImplementationLanguage(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Bitflags for 'flags' attribute.
     */
  enum { SINGLETON = 1U }

  enum { THREADSAFE = 2U }

  enum { MAIN_THREAD_ONLY = 4U }

  enum { DOM_OBJECT = 8U }

  enum { PLUGIN_OBJECT = 16U }

  enum { EAGER_CLASSINFO = 32U }

  /**
     * 'flags' attribute bitflag: whether objects of this type implement
     * nsIContent.
     */
  enum { CONTENT_NODE = 64U }

  enum { RESERVED = 2147483648U }

  /* readonly attribute PRUint32 flags; */
  PRUint32 Flags(){
    PRUint32 value;
    nsresult __result = inner.GetFlags(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Also a class ID through which an instance of this class can be created
     * (or accessed as a service, if |flags & SINGLETON|).  If the class does
     * not have a CID, it should return NS_ERROR_NOT_AVAILABLE.  This attribute
     * exists so C++ callers can avoid allocating and freeing a CID, as would
     * happen if they used classID.
     */
  /* [notxpcom] readonly attribute nsCID classIDNoAlloc; */
  nsCID ClassIDNoAlloc(){
    nsCID value;
    nsresult __result = inner.GetClassIDNoAlloc(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIClassInfo inner;

}

