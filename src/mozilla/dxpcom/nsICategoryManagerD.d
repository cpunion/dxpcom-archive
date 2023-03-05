/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICategoryManager.idl
 */

module mozilla.dxpcom.nsICategoryManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICategoryManager;


public import mozilla.dxpcom.nsICategoryManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsICategoryManager */
class nsICategoryManagerD : public nsISupportsD {

  static const nsIID IID = NS_ICATEGORYMANAGER_IID;


  alias nsICategoryManager InnerType;

  this(nsICategoryManager intr){
    super(intr);
    this.inner = intr;
  }

  nsICategoryManager opCast() {
    return inner;
  }

  void opAssign(nsICategoryManager value) {
    inner = value;
  }

  /**
     * Get the value for the given category's entry.
     * @param aCategory The name of the category ("protocol")
     * @param aEntry The entry you're looking for ("http")
     * @return The value.
     */
  /* string getCategoryEntry (in string aCategory, in string aEntry); */
  char* GetCategoryEntry(char*aCategory, char*aEntry){
    char* _retval;
    nsresult __result = inner.GetCategoryEntry(aCategory, aEntry, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Add an entry to a category.
     * @param aCategory The name of the category ("protocol")
     * @param aEntry The entry to be added ("http")
     * @param aValue The value for the entry ("moz.httprulez.1")
     * @param aPersist Should this data persist between invocations?
     * @param aReplace Should we replace an existing entry?
     * @return Previous entry, if any
     */
  /* string addCategoryEntry (in string aCategory, in string aEntry, in string aValue, in boolean aPersist, in boolean aReplace); */
  char* AddCategoryEntry(char*aCategory, char*aEntry, char*aValue, PRBool aPersist, PRBool aReplace){
    char* _retval;
    nsresult __result = inner.AddCategoryEntry(aCategory, aEntry, aValue, aPersist, aReplace, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Delete an entry from the category.
     * @param aCategory The name of the category ("protocol")
     * @param aEntry The entry to be added ("http")
     * @param aPersist Delete persistent data from registry, if present?
     */
  /* void deleteCategoryEntry (in string aCategory, in string aEntry, in boolean aPersist); */
  void DeleteCategoryEntry(char*aCategory, char*aEntry, PRBool aPersist){
    nsresult __result = inner.DeleteCategoryEntry(aCategory, aEntry, aPersist);
    CheckException(__result);
  }

  /**
     * Delete a category and all entries.
     * @param aCategory The category to be deleted.
     */
  /* void deleteCategory (in string aCategory); */
  void DeleteCategory(char*aCategory){
    nsresult __result = inner.DeleteCategory(aCategory);
    CheckException(__result);
  }

  /**
     * Enumerate the entries in a category.
     * @param aCategory The category to be enumerated.
     * @return a simple enumerator, each result QIs to
     *         nsISupportsCString.
     */
  /* nsISimpleEnumerator enumerateCategory (in string aCategory); */
  nsISimpleEnumeratorD  EnumerateCategory(char*aCategory){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.EnumerateCategory(aCategory, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * Enumerate all existing categories
     * @param aCategory The category to be enumerated.
     * @return a simple enumerator, each result QIs to
     *         nsISupportsCString.
     */
  /* nsISimpleEnumerator enumerateCategories (); */
  nsISimpleEnumeratorD  EnumerateCategories(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.EnumerateCategories(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsICategoryManager inner;

}

