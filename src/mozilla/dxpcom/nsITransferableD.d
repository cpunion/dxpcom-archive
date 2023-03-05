/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransferable.idl
 */

module mozilla.dxpcom.nsITransferableD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITransferable;


public import mozilla.dxpcom.nsITransferableD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
public import mozilla.xpcom.nsIFormatConverter;
public import mozilla.dxpcom.nsIFormatConverterD;

public import mozilla.xpcom.nsITransferable;

public import mozilla.dxpcom.nsITransferableD;


/* starting wrapper class:    nsIFlavorDataProvider */
class nsIFlavorDataProviderD : public nsISupportsD {

  static const nsIID IID = NS_IFLAVORDATAPROVIDER_IID;


  alias nsIFlavorDataProvider InnerType;

  this(nsIFlavorDataProvider intr){
    super(intr);
    this.inner = intr;
  }

  nsIFlavorDataProvider opCast() {
    return inner;
  }

  void opAssign(nsIFlavorDataProvider value) {
    inner = value;
  }

  /**
    * Retrieve the data from this data provider.
    *
    * @param  aTransferable (in parameter) the transferable we're being called for.
    * @param  aFlavor (in parameter) the flavor of data to retrieve
    * @param  aData the data. Some variant of class in nsISupportsPrimitives.idl
    * @param  aDataLen the length of the data
    */
  /* void getFlavorData (in nsITransferable aTransferable, in string aFlavor, out nsISupports aData, out unsigned long aDataLen); */
  void GetFlavorData(nsITransferableD aTransferable, char*aFlavor, out nsISupportsD aData, out PRUint32 aDataLen){
    nsISupports _aData;
    nsresult __result = inner.GetFlavorData(aTransferable ? cast(nsITransferable)aTransferable : null, aFlavor, &_aData, &aDataLen);
    CheckException(__result);
    aData = _aData ? new nsISupportsD(_aData) : null;
  }

private:
  nsIFlavorDataProvider inner;

}


/* starting wrapper class:    nsITransferable */
/**
  * nsIFlavorDataProvider allows a flavor to 'promise' data later,
  * supplying the data lazily.
  * 
  * To use it, call setTransferData, passing the flavor string,
  * a nsIFlavorDataProvider QI'd to nsISupports, and a data size of 0.
  *
  * When someone calls getTransferData later, if the data size is
  * stored as 0, the nsISupports will be QI'd to nsIFlavorDataProvider,
  * and its getFlavorData called.
  *
  */
class nsITransferableD : public nsISupportsD {

  static const nsIID IID = NS_ITRANSFERABLE_IID;


  alias nsITransferable InnerType;

  this(nsITransferable intr){
    super(intr);
    this.inner = intr;
  }

  nsITransferable opCast() {
    return inner;
  }

  void opAssign(nsITransferable value) {
    inner = value;
  }

  enum { kFlavorHasDataProvider = 0 }

  /**
    * Computes a list of flavors (mime types as nsISupportsCString) that the transferable 
    * can export, either through intrinsic knowledge or output data converters.
    *
    * @param  aDataFlavorList fills list with supported flavors. This is a copy of
    *          the internal list, so it may be edited w/out affecting the transferable.
    */
  /* nsISupportsArray flavorsTransferableCanExport (); */
  nsISupportsArrayD  FlavorsTransferableCanExport(){
    nsISupportsArray _retval;
    nsresult __result = inner.FlavorsTransferableCanExport(&_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /**
    * Given a flavor retrieve the data. 
    *
    * @param  aFlavor (in parameter) the flavor of data to retrieve
    * @param  aData the data. Some variant of class in nsISupportsPrimitives.idl
    * @param  aDataLen the length of the data
    */
  /* void getTransferData (in string aFlavor, out nsISupports aData, out unsigned long aDataLen); */
  void GetTransferData(char*aFlavor, out nsISupportsD aData, out PRUint32 aDataLen){
    nsISupports _aData;
    nsresult __result = inner.GetTransferData(aFlavor, &_aData, &aDataLen);
    CheckException(__result);
    aData = _aData ? new nsISupportsD(_aData) : null;
  }

  /**
    * Returns the best flavor in the transferable, given those that have
    * been added to it with |AddFlavor()|
    *
    * @param  aFlavor (out parameter) the flavor of data that was retrieved
    * @param  aData the data. Some variant of class in nsISupportsPrimitives.idl
    * @param  aDataLen the length of the data
    */
  /* void getAnyTransferData (out string aFlavor, out nsISupports aData, out unsigned long aDataLen); */
  void GetAnyTransferData(out char*aFlavor, out nsISupportsD aData, out PRUint32 aDataLen){
    nsISupports _aData;
    nsresult __result = inner.GetAnyTransferData(&aFlavor, &_aData, &aDataLen);
    CheckException(__result);
    aData = _aData ? new nsISupportsD(_aData) : null;
  }

  /**
    * Returns true if the data is large.
    */
  /* boolean isLargeDataSet (); */
  PRBool IsLargeDataSet(){
    PRBool _retval;
    nsresult __result = inner.IsLargeDataSet(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
    * Computes a list of flavors (mime types as nsISupportsCString) that the transferable can
    * accept into it, either through intrinsic knowledge or input data converters.
    *
    * @param  outFlavorList fills list with supported flavors. This is a copy of
    *          the internal list, so it may be edited w/out affecting the transferable.
    */
  /* nsISupportsArray flavorsTransferableCanImport (); */
  nsISupportsArrayD  FlavorsTransferableCanImport(){
    nsISupportsArray _retval;
    nsresult __result = inner.FlavorsTransferableCanImport(&_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /**
    * Sets the data in the transferable with the specified flavor. The transferable
    * will maintain its own copy the data, so it is not necessary to do that beforehand.
    *
    * @param  aFlavor the flavor of data that is being set
    * @param  aData the data, some variant of class in nsISupportsPrimitives.idl,
    *         or an nsIFlavorDataProvider (see above)
    * @param  aDataLen the length of the data, or 0 if passing a nsIFlavorDataProvider
    */
  /* void setTransferData (in string aFlavor, in nsISupports aData, in unsigned long aDataLen); */
  void SetTransferData(char*aFlavor, nsISupportsD aData, PRUint32 aDataLen){
    nsresult __result = inner.SetTransferData(aFlavor, aData ? cast(nsISupports)aData : null, aDataLen);
    CheckException(__result);
  }

  /**
    * Add the data flavor, indicating that this transferable 
    * can receive this type of flavor
    *
    * @param  aDataFlavor a new data flavor to handle
    */
  /* void addDataFlavor (in string aDataFlavor); */
  void AddDataFlavor(char*aDataFlavor){
    nsresult __result = inner.AddDataFlavor(aDataFlavor);
    CheckException(__result);
  }

  /**
    * Removes the data flavor matching the given one (string compare) and the data
    * that goes along with it.
    *
    * @param  aDataFlavor a data flavor to remove
    */
  /* void removeDataFlavor (in string aDataFlavor); */
  void RemoveDataFlavor(char*aDataFlavor){
    nsresult __result = inner.RemoveDataFlavor(aDataFlavor);
    CheckException(__result);
  }

  /* attribute nsIFormatConverter converter; */
  nsIFormatConverterD  Converter(){
    nsIFormatConverter value;
    nsresult __result = inner.GetConverter(&value);
    CheckException(__result);
    return new nsIFormatConverterD(value);
  }
  void Converter(nsIFormatConverterD  aConverter){
    nsIFormatConverter value;
    nsresult __result = inner.SetConverter(value);
    CheckException(__result);
  }

private:
  nsITransferable inner;

}

