/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportFieldMap.idl
 */

module mozilla.xpcom.nsIImportFieldMap;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAddrDatabase; /* forward declaration */

public import mozilla.xpcom.nsIAbCard; /* forward declaration */


/* starting interface:    nsIImportFieldMap */
const char[] NS_IIMPORTFIELDMAP_IID_STR = "0e376da3-e289-4d14-bdec-867764585eb7";

const nsIID NS_IIMPORTFIELDMAP_IID= 
  {0x0e376da3, 0xe289, 0x4d14, 
    [ 0xbd, 0xec, 0x86, 0x77, 0x64, 0x58, 0x5e, 0xb7 ]};

extern(Windows)
interface nsIImportFieldMap : nsISupports {
  static const char[] IID_STR = NS_IIMPORTFIELDMAP_IID_STR;
  static const nsIID IID = NS_IIMPORTFIELDMAP_IID;

  /* attribute boolean skipFirstRecord; */
  nsresult GetSkipFirstRecord(PRBool *aSkipFirstRecord);
  nsresult SetSkipFirstRecord(PRBool aSkipFirstRecord);

  /* readonly attribute long numMozFields; */
  nsresult GetNumMozFields(PRInt32 *aNumMozFields);

  /* readonly attribute long mapSize; */
  nsresult GetMapSize(PRInt32 *aMapSize);

  /* wstring GetFieldDescription (in long index); */
  nsresult GetFieldDescription(PRInt32 index, PRUnichar **_retval);

  /* void SetFieldMapSize (in long size); */
  nsresult SetFieldMapSize(PRInt32 size);

  /* void DefaultFieldMap (in long size); */
  nsresult DefaultFieldMap(PRInt32 size);

  /* long GetFieldMap (in long index); */
  nsresult GetFieldMap(PRInt32 index, PRInt32 *_retval);

  /* void SetFieldMap (in long index, in long fieldNum); */
  nsresult SetFieldMap(PRInt32 index, PRInt32 fieldNum);

  /* void SetFieldMapByDescription (in long index, in wstring fieldDesc); */
  nsresult SetFieldMapByDescription(PRInt32 index, PRUnichar *fieldDesc);

  /* boolean GetFieldActive (in long index); */
  nsresult GetFieldActive(PRInt32 index, PRBool *_retval);

  /* void SetFieldActive (in long index, in boolean active); */
  nsresult SetFieldActive(PRInt32 index, PRBool active);

  /* void SetFieldValue (in nsIAddrDatabase database, in nsIMdbRow row, in long fieldNum, in wstring value); */
  nsresult SetFieldValue(nsIAddrDatabase database, nsIMdbRow row, PRInt32 fieldNum, PRUnichar *value);

  /* void SetFieldValueByDescription (in nsIAddrDatabase database, in nsIMdbRow row, in wstring fieldDesc, in wstring value); */
  nsresult SetFieldValueByDescription(nsIAddrDatabase database, nsIMdbRow row, PRUnichar *fieldDesc, PRUnichar *value);

  /* wstring GetFieldValue (in nsIAbCard card, in long fieldNum); */
  nsresult GetFieldValue(nsIAbCard card, PRInt32 fieldNum, PRUnichar **_retval);

  /* wstring GetFieldValueByDescription (in nsIAbCard card, in wstring fieldDesc); */
  nsresult GetFieldValueByDescription(nsIAbCard card, PRUnichar *fieldDesc, PRUnichar **_retval);

}

