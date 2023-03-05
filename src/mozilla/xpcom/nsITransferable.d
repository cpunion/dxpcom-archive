/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransferable.idl
 */

module mozilla.xpcom.nsITransferable;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.xpcom.nsIFormatConverter;

public import mozilla.xpcom.nsITransferable; /* forward declaration */


/* starting interface:    nsIFlavorDataProvider */
const char[] NS_IFLAVORDATAPROVIDER_IID_STR = "7e225e5f-711c-11d7-9fae-000393636592";

const nsIID NS_IFLAVORDATAPROVIDER_IID= 
  {0x7e225e5f, 0x711c, 0x11d7, 
    [ 0x9f, 0xae, 0x00, 0x03, 0x93, 0x63, 0x65, 0x92 ]};

extern(Windows)
interface nsIFlavorDataProvider : nsISupports {
  static const char[] IID_STR = NS_IFLAVORDATAPROVIDER_IID_STR;
  static const nsIID IID = NS_IFLAVORDATAPROVIDER_IID;

  /**
    * Retrieve the data from this data provider.
    *
    * @param  aTransferable (in parameter) the transferable we're being called for.
    * @param  aFlavor (in parameter) the flavor of data to retrieve
    * @param  aData the data. Some variant of class in nsISupportsPrimitives.idl
    * @param  aDataLen the length of the data
    */
  /* void getFlavorData (in nsITransferable aTransferable, in string aFlavor, out nsISupports aData, out unsigned long aDataLen); */
  nsresult GetFlavorData(nsITransferable aTransferable, char *aFlavor, nsISupports *aData, PRUint32 *aDataLen);

}


/* starting interface:    nsITransferable */
const char[] NS_ITRANSFERABLE_IID_STR = "8b5314bc-db01-11d2-96ce-0060b0fb9956";

const nsIID NS_ITRANSFERABLE_IID= 
  {0x8b5314bc, 0xdb01, 0x11d2, 
    [ 0x96, 0xce, 0x00, 0x60, 0xb0, 0xfb, 0x99, 0x56 ]};

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
extern(Windows)
interface nsITransferable : nsISupports {
  static const char[] IID_STR = NS_ITRANSFERABLE_IID_STR;
  static const nsIID IID = NS_ITRANSFERABLE_IID;

  enum { kFlavorHasDataProvider = 0 };

  /**
    * Computes a list of flavors (mime types as nsISupportsCString) that the transferable 
    * can export, either through intrinsic knowledge or output data converters.
    *
    * @param  aDataFlavorList fills list with supported flavors. This is a copy of
    *          the internal list, so it may be edited w/out affecting the transferable.
    */
  /* nsISupportsArray flavorsTransferableCanExport (); */
  nsresult FlavorsTransferableCanExport(nsISupportsArray *_retval);

  /**
    * Given a flavor retrieve the data. 
    *
    * @param  aFlavor (in parameter) the flavor of data to retrieve
    * @param  aData the data. Some variant of class in nsISupportsPrimitives.idl
    * @param  aDataLen the length of the data
    */
  /* void getTransferData (in string aFlavor, out nsISupports aData, out unsigned long aDataLen); */
  nsresult GetTransferData(char *aFlavor, nsISupports *aData, PRUint32 *aDataLen);

  /**
    * Returns the best flavor in the transferable, given those that have
    * been added to it with |AddFlavor()|
    *
    * @param  aFlavor (out parameter) the flavor of data that was retrieved
    * @param  aData the data. Some variant of class in nsISupportsPrimitives.idl
    * @param  aDataLen the length of the data
    */
  /* void getAnyTransferData (out string aFlavor, out nsISupports aData, out unsigned long aDataLen); */
  nsresult GetAnyTransferData(char **aFlavor, nsISupports *aData, PRUint32 *aDataLen);

  /**
    * Returns true if the data is large.
    */
  /* boolean isLargeDataSet (); */
  nsresult IsLargeDataSet(PRBool *_retval);

  /**
    * Computes a list of flavors (mime types as nsISupportsCString) that the transferable can
    * accept into it, either through intrinsic knowledge or input data converters.
    *
    * @param  outFlavorList fills list with supported flavors. This is a copy of
    *          the internal list, so it may be edited w/out affecting the transferable.
    */
  /* nsISupportsArray flavorsTransferableCanImport (); */
  nsresult FlavorsTransferableCanImport(nsISupportsArray *_retval);

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
  nsresult SetTransferData(char *aFlavor, nsISupports aData, PRUint32 aDataLen);

  /**
    * Add the data flavor, indicating that this transferable 
    * can receive this type of flavor
    *
    * @param  aDataFlavor a new data flavor to handle
    */
  /* void addDataFlavor (in string aDataFlavor); */
  nsresult AddDataFlavor(char *aDataFlavor);

  /**
    * Removes the data flavor matching the given one (string compare) and the data
    * that goes along with it.
    *
    * @param  aDataFlavor a data flavor to remove
    */
  /* void removeDataFlavor (in string aDataFlavor); */
  nsresult RemoveDataFlavor(char *aDataFlavor);

  /* attribute nsIFormatConverter converter; */
  nsresult GetConverter(nsIFormatConverter  *aConverter);
  nsresult SetConverter(nsIFormatConverter  aConverter);

}

