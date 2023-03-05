/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgGroupRecord.idl
 */

module mozilla.xpcom.nsIMsgGroupRecord;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMsgGroupRecord */
const char[] NS_IMSGGROUPRECORD_IID_STR = "4ed03c60-b256-11d2-b7f0-00805f05ffa5";

const nsIID NS_IMSGGROUPRECORD_IID= 
  {0x4ed03c60, 0xb256, 0x11d2, 
    [ 0xb7, 0xf0, 0x00, 0x80, 0x5f, 0x05, 0xff, 0xa5 ]};

extern(Windows)
interface nsIMsgGroupRecord : nsISupports {
  static const char[] IID_STR = NS_IMSGGROUPRECORD_IID_STR;
  static const nsIID IID = NS_IMSGGROUPRECORD_IID;

  /* [noscript] void Init (in voidPtr parent, in string partname, in long long time, in long uniqueid, in long fileoffset, in char delimiter); */
  nsresult Init(void * parent, char *partname, PRInt64 time, PRInt32 uniqueid, PRInt32 fileoffset, char delimiter);

  /* void InitFromParent (in nsIMsgGroupRecord parent, in string saveline, in long savelinelength, in long fileoffset); */
  nsresult InitFromParent(nsIMsgGroupRecord parent, char *saveline, PRInt32 savelinelength, PRInt32 fileoffset);

  /* void InitFromFile (in nsIMsgGroupRecord parent, in string partname, in long long time, in long uniqueid, in long fileoffset); */
  nsresult InitFromFile(nsIMsgGroupRecord parent, char *partname, PRInt64 time, PRInt32 uniqueid, PRInt32 fileoffset);

  /* void InitializeSibling (); */
  nsresult InitializeSibling();

  /* short GroupNameCompare (in string name1, in string name2, in char delimiter, in boolean caseSensitive); */
  nsresult GroupNameCompare(char *name1, char *name2, char delimiter, PRBool caseSensitive, PRInt16 *_retval);

  /* nsIMsgGroupRecord FindDescendent (in string name); */
  nsresult FindDescendent(char *name, nsIMsgGroupRecord *_retval);

  /* readonly attribute nsIMsgGroupRecord parent; */
  nsresult GetParent(nsIMsgGroupRecord  *aParent);

  /* readonly attribute nsIMsgGroupRecord children; */
  nsresult GetChildren(nsIMsgGroupRecord  *aChildren);

  /* readonly attribute nsIMsgGroupRecord sibling; */
  nsresult GetSibling(nsIMsgGroupRecord  *aSibling);

  /* nsIMsgGroupRecord GetSiblingOrAncestorSibling (); */
  nsresult GetSiblingOrAncestorSibling(nsIMsgGroupRecord *_retval);

  /* nsIMsgGroupRecord GetNextAlphabetic (); */
  nsresult GetNextAlphabetic(nsIMsgGroupRecord *_retval);

  /* nsIMsgGroupRecord GetNextAlphabeticNoCategories (); */
  nsresult GetNextAlphabeticNoCategories(nsIMsgGroupRecord *_retval);

  /* readonly attribute string partName; */
  nsresult GetPartName(char * *aPartName);

  /* readonly attribute string fullName; */
  nsresult GetFullName(char * *aFullName);

  /* attribute string prettyName; */
  nsresult GetPrettyName(char * *aPrettyName);
  nsresult SetPrettyName(char * aPrettyName);

  /* readonly attribute long long addTime; */
  nsresult GetAddTime(PRInt64 *aAddTime);

  /* readonly attribute boolean isCategory; */
  nsresult GetIsCategory(PRBool *aIsCategory);

  /* attribute boolean isCategoryContainer; */
  nsresult GetIsCategoryContainer(PRBool *aIsCategoryContainer);
  nsresult SetIsCategoryContainer(PRBool aIsCategoryContainer);

  /* readonly attribute nsIMsgGroupRecord categoryContainer; */
  nsresult GetCategoryContainer(nsIMsgGroupRecord  *aCategoryContainer);

  /* attribute boolean isVirtual; */
  nsresult GetIsVirtual(PRBool *aIsVirtual);
  nsresult SetIsVirtual(PRBool aIsVirtual);

  /* attribute boolean isGroup; */
  nsresult GetIsGroup(PRBool *aIsGroup);
  nsresult SetIsGroup(PRBool aIsGroup);

  /* attribute boolean isExpanded; */
  nsresult GetIsExpanded(PRBool *aIsExpanded);
  nsresult SetIsExpanded(PRBool aIsExpanded);

  /* attribute boolean isDescendentsLoaded; */
  nsresult GetIsDescendentsLoaded(PRBool *aIsDescendentsLoaded);
  nsresult SetIsDescendentsLoaded(PRBool aIsDescendentsLoaded);

  /* attribute boolean HTMLOkGroup; */
  nsresult GetHTMLOkGroup(PRBool *aHTMLOkGroup);
  nsresult SetHTMLOkGroup(PRBool aHTMLOkGroup);

  /* attribute boolean HTMLOkTree; */
  nsresult GetHTMLOkTree(PRBool *aHTMLOkTree);
  nsresult SetHTMLOkTree(PRBool aHTMLOkTree);

  /* attribute boolean needsExtraInfo; */
  nsresult GetNeedsExtraInfo(PRBool *aNeedsExtraInfo);
  nsresult SetNeedsExtraInfo(PRBool aNeedsExtraInfo);

  /* attribute boolean doesNotExistOnServer; */
  nsresult GetDoesNotExistOnServer(PRBool *aDoesNotExistOnServer);
  nsresult SetDoesNotExistOnServer(PRBool aDoesNotExistOnServer);

  /* readonly attribute long uniqueID; */
  nsresult GetUniqueID(PRInt32 *aUniqueID);

  /* attribute long fileOffset; */
  nsresult GetFileOffset(PRInt32 *aFileOffset);
  nsresult SetFileOffset(PRInt32 aFileOffset);

  /* readonly attribute long numKids; */
  nsresult GetNumKids(PRInt32 *aNumKids);

  /* readonly attribute string saveString; */
  nsresult GetSaveString(char * *aSaveString);

  /* readonly attribute boolean dirty; */
  nsresult GetDirty(PRBool *aDirty);

  /* readonly attribute long depth; */
  nsresult GetDepth(PRInt32 *aDepth);

  /* readonly attribute char hierarchySeparator; */
  nsresult GetHierarchySeparator(char *aHierarchySeparator);

}

