/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICategoryManager.idl
 */

module mozilla.xpcom.nsICategoryManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISimpleEnumerator;


/* starting interface:    nsICategoryManager */
const char[] NS_ICATEGORYMANAGER_IID_STR = "3275b2cd-af6d-429a-80d7-f0c5120342ac";

const nsIID NS_ICATEGORYMANAGER_IID= 
  {0x3275b2cd, 0xaf6d, 0x429a, 
    [ 0x80, 0xd7, 0xf0, 0xc5, 0x12, 0x03, 0x42, 0xac ]};

extern(Windows)
interface nsICategoryManager : nsISupports {
  static const char[] IID_STR = NS_ICATEGORYMANAGER_IID_STR;
  static const nsIID IID = NS_ICATEGORYMANAGER_IID;

  /**
     * Get the value for the given category's entry.
     * @param aCategory The name of the category ("protocol")
     * @param aEntry The entry you're looking for ("http")
     * @return The value.
     */
  /* string getCategoryEntry (in string aCategory, in string aEntry); */
  nsresult GetCategoryEntry(char *aCategory, char *aEntry, char **_retval);

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
  nsresult AddCategoryEntry(char *aCategory, char *aEntry, char *aValue, PRBool aPersist, PRBool aReplace, char **_retval);

  /**
     * Delete an entry from the category.
     * @param aCategory The name of the category ("protocol")
     * @param aEntry The entry to be added ("http")
     * @param aPersist Delete persistent data from registry, if present?
     */
  /* void deleteCategoryEntry (in string aCategory, in string aEntry, in boolean aPersist); */
  nsresult DeleteCategoryEntry(char *aCategory, char *aEntry, PRBool aPersist);

  /**
     * Delete a category and all entries.
     * @param aCategory The category to be deleted.
     */
  /* void deleteCategory (in string aCategory); */
  nsresult DeleteCategory(char *aCategory);

  /**
     * Enumerate the entries in a category.
     * @param aCategory The category to be enumerated.
     * @return a simple enumerator, each result QIs to
     *         nsISupportsCString.
     */
  /* nsISimpleEnumerator enumerateCategory (in string aCategory); */
  nsresult EnumerateCategory(char *aCategory, nsISimpleEnumerator *_retval);

  /**
     * Enumerate all existing categories
     * @param aCategory The category to be enumerated.
     * @return a simple enumerator, each result QIs to
     *         nsISupportsCString.
     */
  /* nsISimpleEnumerator enumerateCategories (); */
  nsresult EnumerateCategories(nsISimpleEnumerator *_retval);

}

