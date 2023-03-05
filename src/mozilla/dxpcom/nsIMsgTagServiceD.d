/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgTagService.idl
 */

module mozilla.dxpcom.nsIMsgTagServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgTagService;


public import mozilla.dxpcom.nsIMsgTagServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMsgTag */
class nsIMsgTagD : public nsISupportsD {

  static const nsIID IID = NS_IMSGTAG_IID;


  alias nsIMsgTag InnerType;

  this(nsIMsgTag intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgTag opCast() {
    return inner;
  }

  void opAssign(nsIMsgTag value) {
    inner = value;
  }

  /* readonly attribute ACString key; */
  char[] Key(){
    scope auto value = new ACString();
    nsresult __result = inner.GetKey(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString tag; */
  wchar[] Tag(){
    scope auto value = new AString();
    nsresult __result = inner.GetTag(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute ACString color; */
  char[] Color(){
    scope auto value = new ACString();
    nsresult __result = inner.GetColor(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute ACString ordinal; */
  char[] Ordinal(){
    scope auto value = new ACString();
    nsresult __result = inner.GetOrdinal(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIMsgTag inner;

}


/* starting wrapper class:    nsIMsgTagService */
class nsIMsgTagServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMSGTAGSERVICE_IID;


  alias nsIMsgTagService InnerType;

  this(nsIMsgTagService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgTagService opCast() {
    return inner;
  }

  void opAssign(nsIMsgTagService value) {
    inner = value;
  }

  /* void addTag (in AString tag, in ACString color, in ACString ordinal); */
  void AddTag(wchar[] tag, char[] color, char[] ordinal){
    scope auto _tag = new AString(tag);
    scope auto _color = new ACString(color);
    scope auto _ordinal = new ACString(ordinal);
    nsresult __result = inner.AddTag(cast(nsAString*)_tag, cast(nsACString*)_color, cast(nsACString*)_ordinal);
    CheckException(__result);
  }

  /* void addTagForKey (in ACString key, in AString tag, in ACString color, in ACString ordinal); */
  void AddTagForKey(char[] key, wchar[] tag, char[] color, char[] ordinal){
    scope auto _key = new ACString(key);
    scope auto _tag = new AString(tag);
    scope auto _color = new ACString(color);
    scope auto _ordinal = new ACString(ordinal);
    nsresult __result = inner.AddTagForKey(cast(nsACString*)_key, cast(nsAString*)_tag, cast(nsACString*)_color, cast(nsACString*)_ordinal);
    CheckException(__result);
  }

  /* ACString getKeyForTag (in AString tag); */
  char[] GetKeyForTag(wchar[] tag){
    scope auto _tag = new AString(tag);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetKeyForTag(cast(nsAString*)_tag, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* ACString getTopKey (in string keyList); */
  char[] GetTopKey(char*keyList){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetTopKey(keyList, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* AString getTagForKey (in ACString key); */
  wchar[] GetTagForKey(char[] key){
    scope auto _key = new ACString(key);
    scope auto _retval = new AString;
    nsresult __result = inner.GetTagForKey(cast(nsACString*)_key, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void setTagForKey (in ACString key, in AString tag); */
  void SetTagForKey(char[] key, wchar[] tag){
    scope auto _key = new ACString(key);
    scope auto _tag = new AString(tag);
    nsresult __result = inner.SetTagForKey(cast(nsACString*)_key, cast(nsAString*)_tag);
    CheckException(__result);
  }

  /* ACString getColorForKey (in ACString key); */
  char[] GetColorForKey(char[] key){
    scope auto _key = new ACString(key);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetColorForKey(cast(nsACString*)_key, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void setColorForKey (in ACString key, in ACString color); */
  void SetColorForKey(char[] key, char[] color){
    scope auto _key = new ACString(key);
    scope auto _color = new ACString(color);
    nsresult __result = inner.SetColorForKey(cast(nsACString*)_key, cast(nsACString*)_color);
    CheckException(__result);
  }

  /* ACString getOrdinalForKey (in ACString key); */
  char[] GetOrdinalForKey(char[] key){
    scope auto _key = new ACString(key);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetOrdinalForKey(cast(nsACString*)_key, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void setOrdinalForKey (in ACString key, in ACString ordinal); */
  void SetOrdinalForKey(char[] key, char[] ordinal){
    scope auto _key = new ACString(key);
    scope auto _ordinal = new ACString(ordinal);
    nsresult __result = inner.SetOrdinalForKey(cast(nsACString*)_key, cast(nsACString*)_ordinal);
    CheckException(__result);
  }

  /* void deleteKey (in ACString key); */
  void DeleteKey(char[] key){
    scope auto _key = new ACString(key);
    nsresult __result = inner.DeleteKey(cast(nsACString*)_key);
    CheckException(__result);
  }

  /* void getAllTags (out unsigned long count, [array, size_is (count), retval] out nsIMsgTag tagArray); */
  void GetAllTags(out PRUint32 count, out nsIMsgTagD *tagArray){
    nsIMsgTag _tagArray;
    nsresult __result = inner.GetAllTags(&count, &_tagArray);
    CheckException(__result);
    tagArray = _tagArray ? new nsIMsgTagD(_tagArray) : null;
  }

private:
  nsIMsgTagService inner;

}

