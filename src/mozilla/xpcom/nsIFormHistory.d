/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFormHistory.idl
 */

module mozilla.xpcom.nsIFormHistory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIFormHistory2 */
const char[] NS_IFORMHISTORY2_IID_STR = "a61f0a62-ae0a-4382-b474-d259442ca80c";

const nsIID NS_IFORMHISTORY2_IID= 
  {0xa61f0a62, 0xae0a, 0x4382, 
    [ 0xb4, 0x74, 0xd2, 0x59, 0x44, 0x2c, 0xa8, 0x0c ]};

/**
 * The nsIFormHistory object is a service which holds a set of name/value
 * pairs.  The names correspond to form field names, and the values correspond
 * to values the user has submitted.  So, several values may exist for a single
 * name.
 *
 * Note: this interface provides no means to access stored values.
 * Stored values are used by the FormFillController to generate
 * autocomplete matches.
 */
extern(Windows)
interface nsIFormHistory2 : nsISupports {
  static const char[] IID_STR = NS_IFORMHISTORY2_IID_STR;
  static const nsIID IID = NS_IFORMHISTORY2_IID;

  /**
   * Returns true if the form history has any entries.
   */
  /* readonly attribute boolean hasEntries; */
  nsresult GetHasEntries(PRBool *aHasEntries);

  /**
   * Adds a name and value pair to the form history.
   */
  /* void addEntry (in AString name, in AString value); */
  nsresult AddEntry(nsAString * name, nsAString * value);

  /**
   * Removes a name and value pair from the form history.
   */
  /* void removeEntry (in AString name, in AString value); */
  nsresult RemoveEntry(nsAString * name, nsAString * value);

  /**
   * Removes all entries that are paired with a name.
   */
  /* void removeEntriesForName (in AString name); */
  nsresult RemoveEntriesForName(nsAString * name);

  /**
   * Removes all entries in the entire form history.
   */
  /* void removeAllEntries (); */
  nsresult RemoveAllEntries();

  /**
   * Returns true if there is no entry that is paired with a name.
   */
  /* boolean nameExists (in AString name); */
  nsresult NameExists(nsAString * name, PRBool *_retval);

  /**
   * Gets whether a name and value pair exists in the form history.
   */
  /* boolean entryExists (in AString name, in AString value); */
  nsresult EntryExists(nsAString * name, nsAString * value, PRBool *_retval);

}


/* starting interface:    nsIFormHistoryImporter */
const char[] NS_IFORMHISTORYIMPORTER_IID_STR = "9e811188-6a5b-4d96-a92d-1bac66a41898";

const nsIID NS_IFORMHISTORYIMPORTER_IID= 
  {0x9e811188, 0x6a5b, 0x4d96, 
    [ 0xa9, 0x2d, 0x1b, 0xac, 0x66, 0xa4, 0x18, 0x98 ]};

/**
 * nsIFormHistoryImporter is an interface for importing a Mork formhistory.dat
 * file into the new form history storage.
 */
extern(Windows)
interface nsIFormHistoryImporter : nsISupports {
  static const char[] IID_STR = NS_IFORMHISTORYIMPORTER_IID_STR;
  static const nsIID IID = NS_IFORMHISTORYIMPORTER_IID;

  /**
   * Import the given Mork form history file.
   *  @param file     The Mork form history file to import
   *  @param history  A reference to the nsIFormHistory.  This is
   *                  supplied since the importer is invoked during
   *                  form history initialization.
   */
  /* void importFormHistory (in nsIFile file, in nsIFormHistory2 formHistory); */
  nsresult ImportFormHistory(nsIFile file, nsIFormHistory2 formHistory);

}

