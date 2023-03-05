/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFormHistory.idl
 */

module mozilla.dxpcom.nsIFormHistoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFormHistory;


public import mozilla.dxpcom.nsIFormHistoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIFormHistory2 */
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
class nsIFormHistory2D : public nsISupportsD {

  static const nsIID IID = NS_IFORMHISTORY2_IID;


  alias nsIFormHistory2 InnerType;

  this(nsIFormHistory2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIFormHistory2 opCast() {
    return inner;
  }

  void opAssign(nsIFormHistory2 value) {
    inner = value;
  }

  /**
   * Returns true if the form history has any entries.
   */
  /* readonly attribute boolean hasEntries; */
  PRBool HasEntries(){
    PRBool value;
    nsresult __result = inner.GetHasEntries(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Adds a name and value pair to the form history.
   */
  /* void addEntry (in AString name, in AString value); */
  void AddEntry(wchar[] name, wchar[] value){
    scope auto _name = new AString(name);
    scope auto _value = new AString(value);
    nsresult __result = inner.AddEntry(cast(nsAString*)_name, cast(nsAString*)_value);
    CheckException(__result);
  }

  /**
   * Removes a name and value pair from the form history.
   */
  /* void removeEntry (in AString name, in AString value); */
  void RemoveEntry(wchar[] name, wchar[] value){
    scope auto _name = new AString(name);
    scope auto _value = new AString(value);
    nsresult __result = inner.RemoveEntry(cast(nsAString*)_name, cast(nsAString*)_value);
    CheckException(__result);
  }

  /**
   * Removes all entries that are paired with a name.
   */
  /* void removeEntriesForName (in AString name); */
  void RemoveEntriesForName(wchar[] name){
    scope auto _name = new AString(name);
    nsresult __result = inner.RemoveEntriesForName(cast(nsAString*)_name);
    CheckException(__result);
  }

  /**
   * Removes all entries in the entire form history.
   */
  /* void removeAllEntries (); */
  void RemoveAllEntries(){
    nsresult __result = inner.RemoveAllEntries();
    CheckException(__result);
  }

  /**
   * Returns true if there is no entry that is paired with a name.
   */
  /* boolean nameExists (in AString name); */
  PRBool NameExists(wchar[] name){
    scope auto _name = new AString(name);
    PRBool _retval;
    nsresult __result = inner.NameExists(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Gets whether a name and value pair exists in the form history.
   */
  /* boolean entryExists (in AString name, in AString value); */
  PRBool EntryExists(wchar[] name, wchar[] value){
    scope auto _name = new AString(name);
    scope auto _value = new AString(value);
    PRBool _retval;
    nsresult __result = inner.EntryExists(cast(nsAString*)_name, cast(nsAString*)_value, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIFormHistory2 inner;

}


/* starting wrapper class:    nsIFormHistoryImporter */
/**
 * nsIFormHistoryImporter is an interface for importing a Mork formhistory.dat
 * file into the new form history storage.
 */
class nsIFormHistoryImporterD : public nsISupportsD {

  static const nsIID IID = NS_IFORMHISTORYIMPORTER_IID;


  alias nsIFormHistoryImporter InnerType;

  this(nsIFormHistoryImporter intr){
    super(intr);
    this.inner = intr;
  }

  nsIFormHistoryImporter opCast() {
    return inner;
  }

  void opAssign(nsIFormHistoryImporter value) {
    inner = value;
  }

  /**
   * Import the given Mork form history file.
   *  @param file     The Mork form history file to import
   *  @param history  A reference to the nsIFormHistory.  This is
   *                  supplied since the importer is invoked during
   *                  form history initialization.
   */
  /* void importFormHistory (in nsIFile file, in nsIFormHistory2 formHistory); */
  void ImportFormHistory(nsIFileD file, nsIFormHistory2D formHistory){
    nsresult __result = inner.ImportFormHistory(file ? cast(nsIFile)file : null, formHistory ? cast(nsIFormHistory2)formHistory : null);
    CheckException(__result);
  }

private:
  nsIFormHistoryImporter inner;

}

