/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportFieldMap.idl
 */

module mozilla.dxpcom.nsIImportFieldMapD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImportFieldMap;


public import mozilla.dxpcom.nsIImportFieldMapD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAddrDatabase;

public import mozilla.dxpcom.nsIAddrDatabaseD;

public import mozilla.xpcom.nsIAbCard;

public import mozilla.dxpcom.nsIAbCardD;


/* starting wrapper class:    nsIImportFieldMap */
class nsIImportFieldMapD : public nsISupportsD {

  static const nsIID IID = NS_IIMPORTFIELDMAP_IID;


  alias nsIImportFieldMap InnerType;

  this(nsIImportFieldMap intr){
    super(intr);
    this.inner = intr;
  }

  nsIImportFieldMap opCast() {
    return inner;
  }

  void opAssign(nsIImportFieldMap value) {
    inner = value;
  }

  /* attribute boolean skipFirstRecord; */
  PRBool SkipFirstRecord(){
    PRBool value;
    nsresult __result = inner.GetSkipFirstRecord(&value);
    CheckException(__result);
    return value;
  }
  void SkipFirstRecord(PRBool aSkipFirstRecord){
    nsresult __result = inner.SetSkipFirstRecord(aSkipFirstRecord);
    CheckException(__result);
  }

  /* readonly attribute long numMozFields; */
  PRInt32 NumMozFields(){
    PRInt32 value;
    nsresult __result = inner.GetNumMozFields(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long mapSize; */
  PRInt32 MapSize(){
    PRInt32 value;
    nsresult __result = inner.GetMapSize(&value);
    CheckException(__result);
    return value;
  }

  /* wstring GetFieldDescription (in long index); */
  PRUnichar* GetFieldDescription(PRInt32 index){
    PRUnichar* _retval;
    nsresult __result = inner.GetFieldDescription(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetFieldMapSize (in long size); */
  void SetFieldMapSize(PRInt32 size){
    nsresult __result = inner.SetFieldMapSize(size);
    CheckException(__result);
  }

  /* void DefaultFieldMap (in long size); */
  void DefaultFieldMap(PRInt32 size){
    nsresult __result = inner.DefaultFieldMap(size);
    CheckException(__result);
  }

  /* long GetFieldMap (in long index); */
  PRInt32 GetFieldMap(PRInt32 index){
    PRInt32 _retval;
    nsresult __result = inner.GetFieldMap(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetFieldMap (in long index, in long fieldNum); */
  void SetFieldMap(PRInt32 index, PRInt32 fieldNum){
    nsresult __result = inner.SetFieldMap(index, fieldNum);
    CheckException(__result);
  }

  /* void SetFieldMapByDescription (in long index, in wstring fieldDesc); */
  void SetFieldMapByDescription(PRInt32 index, PRUnichar*fieldDesc){
    nsresult __result = inner.SetFieldMapByDescription(index, fieldDesc);
    CheckException(__result);
  }

  /* boolean GetFieldActive (in long index); */
  PRBool GetFieldActive(PRInt32 index){
    PRBool _retval;
    nsresult __result = inner.GetFieldActive(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetFieldActive (in long index, in boolean active); */
  void SetFieldActive(PRInt32 index, PRBool active){
    nsresult __result = inner.SetFieldActive(index, active);
    CheckException(__result);
  }

  /* void SetFieldValue (in nsIAddrDatabase database, in nsIMdbRow row, in long fieldNum, in wstring value); */
  void SetFieldValue(nsIAddrDatabaseD database, nsIMdbRowD row, PRInt32 fieldNum, PRUnichar*value){
    nsresult __result = inner.SetFieldValue(database ? cast(nsIAddrDatabase)database : null, row ? cast(nsIMdbRow)row : null, fieldNum, value);
    CheckException(__result);
  }

  /* void SetFieldValueByDescription (in nsIAddrDatabase database, in nsIMdbRow row, in wstring fieldDesc, in wstring value); */
  void SetFieldValueByDescription(nsIAddrDatabaseD database, nsIMdbRowD row, PRUnichar*fieldDesc, PRUnichar*value){
    nsresult __result = inner.SetFieldValueByDescription(database ? cast(nsIAddrDatabase)database : null, row ? cast(nsIMdbRow)row : null, fieldDesc, value);
    CheckException(__result);
  }

  /* wstring GetFieldValue (in nsIAbCard card, in long fieldNum); */
  PRUnichar* GetFieldValue(nsIAbCardD card, PRInt32 fieldNum){
    PRUnichar* _retval;
    nsresult __result = inner.GetFieldValue(card ? cast(nsIAbCard)card : null, fieldNum, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring GetFieldValueByDescription (in nsIAbCard card, in wstring fieldDesc); */
  PRUnichar* GetFieldValueByDescription(nsIAbCardD card, PRUnichar*fieldDesc){
    PRUnichar* _retval;
    nsresult __result = inner.GetFieldValueByDescription(card ? cast(nsIAbCard)card : null, fieldDesc, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIImportFieldMap inner;

}

