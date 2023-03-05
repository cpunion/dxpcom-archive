/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFormatConverter.idl
 */

module mozilla.dxpcom.nsIFormatConverterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFormatConverter;


public import mozilla.dxpcom.nsIFormatConverterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    nsIFormatConverter */
class nsIFormatConverterD : public nsISupportsD {

  static const nsIID IID = NS_IFORMATCONVERTER_IID;


  alias nsIFormatConverter InnerType;

  this(nsIFormatConverter intr){
    super(intr);
    this.inner = intr;
  }

  nsIFormatConverter opCast() {
    return inner;
  }

  void opAssign(nsIFormatConverter value) {
    inner = value;
  }

  /**
    * Get the list of the "input" data flavors (mime types as nsISupportsCString),
    * in otherwords, the flavors that this converter can convert "from" (the 
    * incoming data to the converter).
    */
  /* nsISupportsArray getInputDataFlavors (); */
  nsISupportsArrayD  GetInputDataFlavors(){
    nsISupportsArray _retval;
    nsresult __result = inner.GetInputDataFlavors(&_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /**
    * Get the list of the "output" data flavors (mime types as nsISupportsCString),
    * in otherwords, the flavors that this converter can convert "to" (the 
    * outgoing data to the converter).
    *
    * @param  aDataFlavorList fills list with supported flavors
    */
  /* nsISupportsArray getOutputDataFlavors (); */
  nsISupportsArrayD  GetOutputDataFlavors(){
    nsISupportsArray _retval;
    nsresult __result = inner.GetOutputDataFlavors(&_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /**
    * Determines whether a converion from one flavor to another is supported
    *
    * @param  aFromFormatConverter flavor to convert from
    * @param  aFromFormatConverter flavor to convert to
    */
  /* boolean canConvert (in string aFromDataFlavor, in string aToDataFlavor); */
  PRBool CanConvert(char*aFromDataFlavor, char*aToDataFlavor){
    PRBool _retval;
    nsresult __result = inner.CanConvert(aFromDataFlavor, aToDataFlavor, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
    * Converts from one flavor to another.
    *
    * @param  aFromFormatConverter flavor to convert from
    * @param  aFromFormatConverter flavor to convert to (destination own the memory)
    * @returns returns NS_OK if it was converted
    */
  /* void convert (in string aFromDataFlavor, in nsISupports aFromData, in unsigned long aDataLen, in string aToDataFlavor, out nsISupports aToData, out unsigned long aDataToLen); */
  void Convert(char*aFromDataFlavor, nsISupportsD aFromData, PRUint32 aDataLen, char*aToDataFlavor, out nsISupportsD aToData, out PRUint32 aDataToLen){
    nsISupports _aToData;
    nsresult __result = inner.Convert(aFromDataFlavor, aFromData ? cast(nsISupports)aFromData : null, aDataLen, aToDataFlavor, &_aToData, &aDataToLen);
    CheckException(__result);
    aToData = _aToData ? new nsISupportsD(_aToData) : null;
  }

private:
  nsIFormatConverter inner;

}

