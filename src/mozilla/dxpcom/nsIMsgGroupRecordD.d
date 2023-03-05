/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgGroupRecord.idl
 */

module mozilla.dxpcom.nsIMsgGroupRecordD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgGroupRecord;


public import mozilla.dxpcom.nsIMsgGroupRecordD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMsgGroupRecord */
class nsIMsgGroupRecordD : public nsISupportsD {

  static const nsIID IID = NS_IMSGGROUPRECORD_IID;


  alias nsIMsgGroupRecord InnerType;

  this(nsIMsgGroupRecord intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgGroupRecord opCast() {
    return inner;
  }

  void opAssign(nsIMsgGroupRecord value) {
    inner = value;
  }

  /* [noscript] void Init (in voidPtr parent, in string partname, in long long time, in long uniqueid, in long fileoffset, in char delimiter); */
  void Init(void * parent, char*partname, PRInt64 time, PRInt32 uniqueid, PRInt32 fileoffset, char delimiter){
    nsresult __result = inner.Init(parent, partname, time, uniqueid, fileoffset, delimiter);
    CheckException(__result);
  }

  /* void InitFromParent (in nsIMsgGroupRecord parent, in string saveline, in long savelinelength, in long fileoffset); */
  void InitFromParent(nsIMsgGroupRecordD parent, char*saveline, PRInt32 savelinelength, PRInt32 fileoffset){
    nsresult __result = inner.InitFromParent(parent ? cast(nsIMsgGroupRecord)parent : null, saveline, savelinelength, fileoffset);
    CheckException(__result);
  }

  /* void InitFromFile (in nsIMsgGroupRecord parent, in string partname, in long long time, in long uniqueid, in long fileoffset); */
  void InitFromFile(nsIMsgGroupRecordD parent, char*partname, PRInt64 time, PRInt32 uniqueid, PRInt32 fileoffset){
    nsresult __result = inner.InitFromFile(parent ? cast(nsIMsgGroupRecord)parent : null, partname, time, uniqueid, fileoffset);
    CheckException(__result);
  }

  /* void InitializeSibling (); */
  void InitializeSibling(){
    nsresult __result = inner.InitializeSibling();
    CheckException(__result);
  }

  /* short GroupNameCompare (in string name1, in string name2, in char delimiter, in boolean caseSensitive); */
  PRInt16 GroupNameCompare(char*name1, char*name2, char delimiter, PRBool caseSensitive){
    PRInt16 _retval;
    nsresult __result = inner.GroupNameCompare(name1, name2, delimiter, caseSensitive, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIMsgGroupRecord FindDescendent (in string name); */
  nsIMsgGroupRecordD  FindDescendent(char*name){
    nsIMsgGroupRecord _retval;
    nsresult __result = inner.FindDescendent(name, &_retval);
    CheckException(__result);
    return new nsIMsgGroupRecordD(_retval);
  }

  /* readonly attribute nsIMsgGroupRecord parent; */
  nsIMsgGroupRecordD  Parent(){
    nsIMsgGroupRecord value;
    nsresult __result = inner.GetParent(&value);
    CheckException(__result);
    return new nsIMsgGroupRecordD(value);
  }

  /* readonly attribute nsIMsgGroupRecord children; */
  nsIMsgGroupRecordD  Children(){
    nsIMsgGroupRecord value;
    nsresult __result = inner.GetChildren(&value);
    CheckException(__result);
    return new nsIMsgGroupRecordD(value);
  }

  /* readonly attribute nsIMsgGroupRecord sibling; */
  nsIMsgGroupRecordD  Sibling(){
    nsIMsgGroupRecord value;
    nsresult __result = inner.GetSibling(&value);
    CheckException(__result);
    return new nsIMsgGroupRecordD(value);
  }

  /* nsIMsgGroupRecord GetSiblingOrAncestorSibling (); */
  nsIMsgGroupRecordD  GetSiblingOrAncestorSibling(){
    nsIMsgGroupRecord _retval;
    nsresult __result = inner.GetSiblingOrAncestorSibling(&_retval);
    CheckException(__result);
    return new nsIMsgGroupRecordD(_retval);
  }

  /* nsIMsgGroupRecord GetNextAlphabetic (); */
  nsIMsgGroupRecordD  GetNextAlphabetic(){
    nsIMsgGroupRecord _retval;
    nsresult __result = inner.GetNextAlphabetic(&_retval);
    CheckException(__result);
    return new nsIMsgGroupRecordD(_retval);
  }

  /* nsIMsgGroupRecord GetNextAlphabeticNoCategories (); */
  nsIMsgGroupRecordD  GetNextAlphabeticNoCategories(){
    nsIMsgGroupRecord _retval;
    nsresult __result = inner.GetNextAlphabeticNoCategories(&_retval);
    CheckException(__result);
    return new nsIMsgGroupRecordD(_retval);
  }

  /* readonly attribute string partName; */
  char* PartName(){
    char* value;
    nsresult __result = inner.GetPartName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string fullName; */
  char* FullName(){
    char* value;
    nsresult __result = inner.GetFullName(&value);
    CheckException(__result);
    return value;
  }

  /* attribute string prettyName; */
  char* PrettyName(){
    char* value;
    nsresult __result = inner.GetPrettyName(&value);
    CheckException(__result);
    return value;
  }
  void PrettyName(char* aPrettyName){
    nsresult __result = inner.SetPrettyName(aPrettyName);
    CheckException(__result);
  }

  /* readonly attribute long long addTime; */
  PRInt64 AddTime(){
    PRInt64 value;
    nsresult __result = inner.GetAddTime(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean isCategory; */
  PRBool IsCategory(){
    PRBool value;
    nsresult __result = inner.GetIsCategory(&value);
    CheckException(__result);
    return value;
  }

  /* attribute boolean isCategoryContainer; */
  PRBool IsCategoryContainer(){
    PRBool value;
    nsresult __result = inner.GetIsCategoryContainer(&value);
    CheckException(__result);
    return value;
  }
  void IsCategoryContainer(PRBool aIsCategoryContainer){
    nsresult __result = inner.SetIsCategoryContainer(aIsCategoryContainer);
    CheckException(__result);
  }

  /* readonly attribute nsIMsgGroupRecord categoryContainer; */
  nsIMsgGroupRecordD  CategoryContainer(){
    nsIMsgGroupRecord value;
    nsresult __result = inner.GetCategoryContainer(&value);
    CheckException(__result);
    return new nsIMsgGroupRecordD(value);
  }

  /* attribute boolean isVirtual; */
  PRBool IsVirtual(){
    PRBool value;
    nsresult __result = inner.GetIsVirtual(&value);
    CheckException(__result);
    return value;
  }
  void IsVirtual(PRBool aIsVirtual){
    nsresult __result = inner.SetIsVirtual(aIsVirtual);
    CheckException(__result);
  }

  /* attribute boolean isGroup; */
  PRBool IsGroup(){
    PRBool value;
    nsresult __result = inner.GetIsGroup(&value);
    CheckException(__result);
    return value;
  }
  void IsGroup(PRBool aIsGroup){
    nsresult __result = inner.SetIsGroup(aIsGroup);
    CheckException(__result);
  }

  /* attribute boolean isExpanded; */
  PRBool IsExpanded(){
    PRBool value;
    nsresult __result = inner.GetIsExpanded(&value);
    CheckException(__result);
    return value;
  }
  void IsExpanded(PRBool aIsExpanded){
    nsresult __result = inner.SetIsExpanded(aIsExpanded);
    CheckException(__result);
  }

  /* attribute boolean isDescendentsLoaded; */
  PRBool IsDescendentsLoaded(){
    PRBool value;
    nsresult __result = inner.GetIsDescendentsLoaded(&value);
    CheckException(__result);
    return value;
  }
  void IsDescendentsLoaded(PRBool aIsDescendentsLoaded){
    nsresult __result = inner.SetIsDescendentsLoaded(aIsDescendentsLoaded);
    CheckException(__result);
  }

  /* attribute boolean HTMLOkGroup; */
  PRBool HTMLOkGroup(){
    PRBool value;
    nsresult __result = inner.GetHTMLOkGroup(&value);
    CheckException(__result);
    return value;
  }
  void HTMLOkGroup(PRBool aHTMLOkGroup){
    nsresult __result = inner.SetHTMLOkGroup(aHTMLOkGroup);
    CheckException(__result);
  }

  /* attribute boolean HTMLOkTree; */
  PRBool HTMLOkTree(){
    PRBool value;
    nsresult __result = inner.GetHTMLOkTree(&value);
    CheckException(__result);
    return value;
  }
  void HTMLOkTree(PRBool aHTMLOkTree){
    nsresult __result = inner.SetHTMLOkTree(aHTMLOkTree);
    CheckException(__result);
  }

  /* attribute boolean needsExtraInfo; */
  PRBool NeedsExtraInfo(){
    PRBool value;
    nsresult __result = inner.GetNeedsExtraInfo(&value);
    CheckException(__result);
    return value;
  }
  void NeedsExtraInfo(PRBool aNeedsExtraInfo){
    nsresult __result = inner.SetNeedsExtraInfo(aNeedsExtraInfo);
    CheckException(__result);
  }

  /* attribute boolean doesNotExistOnServer; */
  PRBool DoesNotExistOnServer(){
    PRBool value;
    nsresult __result = inner.GetDoesNotExistOnServer(&value);
    CheckException(__result);
    return value;
  }
  void DoesNotExistOnServer(PRBool aDoesNotExistOnServer){
    nsresult __result = inner.SetDoesNotExistOnServer(aDoesNotExistOnServer);
    CheckException(__result);
  }

  /* readonly attribute long uniqueID; */
  PRInt32 UniqueID(){
    PRInt32 value;
    nsresult __result = inner.GetUniqueID(&value);
    CheckException(__result);
    return value;
  }

  /* attribute long fileOffset; */
  PRInt32 FileOffset(){
    PRInt32 value;
    nsresult __result = inner.GetFileOffset(&value);
    CheckException(__result);
    return value;
  }
  void FileOffset(PRInt32 aFileOffset){
    nsresult __result = inner.SetFileOffset(aFileOffset);
    CheckException(__result);
  }

  /* readonly attribute long numKids; */
  PRInt32 NumKids(){
    PRInt32 value;
    nsresult __result = inner.GetNumKids(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string saveString; */
  char* SaveString(){
    char* value;
    nsresult __result = inner.GetSaveString(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean dirty; */
  PRBool Dirty(){
    PRBool value;
    nsresult __result = inner.GetDirty(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long depth; */
  PRInt32 Depth(){
    PRInt32 value;
    nsresult __result = inner.GetDepth(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute char hierarchySeparator; */
  char HierarchySeparator(){
    char value;
    nsresult __result = inner.GetHierarchySeparator(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIMsgGroupRecord inner;

}

