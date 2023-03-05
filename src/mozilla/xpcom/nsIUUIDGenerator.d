/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUUIDGenerator.idl
 */

module mozilla.xpcom.nsIUUIDGenerator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIUUIDGenerator */
const char[] NS_IUUIDGENERATOR_IID_STR = "138ad1b2-c694-41cc-b201-333ce936d8b8";

const nsIID NS_IUUIDGENERATOR_IID= 
  {0x138ad1b2, 0xc694, 0x41cc, 
    [ 0xb2, 0x01, 0x33, 0x3c, 0xe9, 0x36, 0xd8, 0xb8 ]};

/**
 * nsIUUIDGenerator is implemented by a service that can generate
 * universally unique identifiers, ideally using any platform-native
 * method for generating UUIDs.
 */
extern(Windows)
interface nsIUUIDGenerator : nsISupports {
  static const char[] IID_STR = NS_IUUIDGENERATOR_IID_STR;
  static const nsIID IID = NS_IUUIDGENERATOR_IID;

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
  nsresult GenerateUUID(nsID * *_retval);

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
  nsresult GenerateUUIDInPlace(nsID * id);

}

