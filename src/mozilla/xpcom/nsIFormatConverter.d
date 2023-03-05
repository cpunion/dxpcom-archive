/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFormatConverter.idl
 */

module mozilla.xpcom.nsIFormatConverter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;


/* starting interface:    nsIFormatConverter */
const char[] NS_IFORMATCONVERTER_IID_STR = "948a0023-e3a7-11d2-96cf-0060b0fb9956";

const nsIID NS_IFORMATCONVERTER_IID= 
  {0x948a0023, 0xe3a7, 0x11d2, 
    [ 0x96, 0xcf, 0x00, 0x60, 0xb0, 0xfb, 0x99, 0x56 ]};

extern(Windows)
interface nsIFormatConverter : nsISupports {
  static const char[] IID_STR = NS_IFORMATCONVERTER_IID_STR;
  static const nsIID IID = NS_IFORMATCONVERTER_IID;

  /**
    * Get the list of the "input" data flavors (mime types as nsISupportsCString),
    * in otherwords, the flavors that this converter can convert "from" (the 
    * incoming data to the converter).
    */
  /* nsISupportsArray getInputDataFlavors (); */
  nsresult GetInputDataFlavors(nsISupportsArray *_retval);

  /**
    * Get the list of the "output" data flavors (mime types as nsISupportsCString),
    * in otherwords, the flavors that this converter can convert "to" (the 
    * outgoing data to the converter).
    *
    * @param  aDataFlavorList fills list with supported flavors
    */
  /* nsISupportsArray getOutputDataFlavors (); */
  nsresult GetOutputDataFlavors(nsISupportsArray *_retval);

  /**
    * Determines whether a converion from one flavor to another is supported
    *
    * @param  aFromFormatConverter flavor to convert from
    * @param  aFromFormatConverter flavor to convert to
    */
  /* boolean canConvert (in string aFromDataFlavor, in string aToDataFlavor); */
  nsresult CanConvert(char *aFromDataFlavor, char *aToDataFlavor, PRBool *_retval);

  /**
    * Converts from one flavor to another.
    *
    * @param  aFromFormatConverter flavor to convert from
    * @param  aFromFormatConverter flavor to convert to (destination own the memory)
    * @returns returns NS_OK if it was converted
    */
  /* void convert (in string aFromDataFlavor, in nsISupports aFromData, in unsigned long aDataLen, in string aToDataFlavor, out nsISupports aToData, out unsigned long aDataToLen); */
  nsresult Convert(char *aFromDataFlavor, nsISupports aFromData, PRUint32 aDataLen, char *aToDataFlavor, nsISupports *aToData, PRUint32 *aDataToLen);

}

