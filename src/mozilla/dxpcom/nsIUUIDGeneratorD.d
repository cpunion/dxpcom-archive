/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUUIDGenerator.idl
 */

module mozilla.dxpcom.nsIUUIDGeneratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUUIDGenerator;


public import mozilla.dxpcom.nsIUUIDGeneratorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIUUIDGenerator */
/**
 * nsIUUIDGenerator is implemented by a service that can generate
 * universally unique identifiers, ideally using any platform-native
 * method for generating UUIDs.
 */
class nsIUUIDGeneratorD : public nsISupportsD {

  static const nsIID IID = NS_IUUIDGENERATOR_IID;


  alias nsIUUIDGenerator InnerType;

  this(nsIUUIDGenerator intr){
    super(intr);
    this.inner = intr;
  }

  nsIUUIDGenerator opCast() {
    return inner;
  }

  void opAssign(nsIUUIDGenerator value) {
    inner = value;
  }

  /**
   * Obtains a new UUID using appropriate platform-specific methods to
   * obtain a nsID that can be considered to be globally unique.
   *
   * @returns an nsID filled in with a new UUID.
   *
   * @throws NS_ERROR_FAILURE if a UUID cannot be generated (e.g. if
   * an underlying source of randomness is not available)
   */
  /* nsIDPtr generateUUID (); */
  nsID * GenerateUUID(){
nsID * _retval;
    nsresult __result = inner.GenerateUUID(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Obtain a new UUID like the generateUUID method, but place it in
   * the provided nsID pointer instead of allocating a new nsID.
   *
   * @param id an existing nsID pointer where the UUID will be stored.
   *
   * @throws NS_ERROR_FAILURE if a UUID cannot be generated (e.g. if
   * an underlying source of randomness is not available)
   */
  /* [noscript] void generateUUIDInPlace (in nsNonConstIDPtr id); */
  void GenerateUUIDInPlace(nsID * id){
    nsresult __result = inner.GenerateUUIDInPlace(id);
    CheckException(__result);
  }

private:
  nsIUUIDGenerator inner;

}

