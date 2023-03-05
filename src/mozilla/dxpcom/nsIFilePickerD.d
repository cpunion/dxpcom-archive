/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFilePicker.idl
 */

module mozilla.dxpcom.nsIFilePickerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFilePicker;


public import mozilla.dxpcom.nsIFilePickerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;

public import mozilla.xpcom.nsIFileURL;

public import mozilla.dxpcom.nsIFileURLD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIFilePicker */
class nsIFilePickerD : public nsISupportsD {

  static const nsIID IID = NS_IFILEPICKER_IID;


  alias nsIFilePicker InnerType;

  this(nsIFilePicker intr){
    super(intr);
    this.inner = intr;
  }

  nsIFilePicker opCast() {
    return inner;
  }

  void opAssign(nsIFilePicker value) {
    inner = value;
  }

  enum { modeOpen = 0 }

  enum { modeSave = 1 }

  enum { modeGetFolder = 2 }

  enum { modeOpenMultiple = 3 }

  enum { returnOK = 0 }

  enum { returnCancel = 1 }

  enum { returnReplace = 2 }

  enum { filterAll = 1 }

  enum { filterHTML = 2 }

  enum { filterText = 4 }

  enum { filterImages = 8 }

  enum { filterXML = 16 }

  enum { filterXUL = 32 }

  enum { filterApps = 64 }

  /**
  * Initialize the file picker widget.  The file picker is not valid until this
  * method is called.
  *
  * @param      parent   nsIDOMWindow parent.  This dialog will be dependent
  *                      on this parent. parent must be non-null.
  * @param      title    The title for the file widget
  * @param      mode     load, save, or get folder
  *
  */
  /* void init (in nsIDOMWindow parent, in AString title, in short mode); */
  void Init(nsIDOMWindowD parent, wchar[] title, PRInt16 mode){
    scope auto _title = new AString(title);
    nsresult __result = inner.Init(parent ? cast(nsIDOMWindow)parent : null, cast(nsAString*)_title, mode);
    CheckException(__result);
  }

  /**
  * Append to the  filter list with things from the predefined list
  *
  * @param      filters  mask of filters i.e. (filterAll | filterHTML)
  *
  */
  /* void appendFilters (in long filterMask); */
  void AppendFilters(PRInt32 filterMask){
    nsresult __result = inner.AppendFilters(filterMask);
    CheckException(__result);
  }

  /**
  * Add a filter
  *
  * @param      title    name of the filter
  * @param      filter   extensions to filter -- semicolon and space separated
  *
  */
  /* void appendFilter (in AString title, in AString filter); */
  void AppendFilter(wchar[] title, wchar[] filter){
    scope auto _title = new AString(title);
    scope auto _filter = new AString(filter);
    nsresult __result = inner.AppendFilter(cast(nsAString*)_title, cast(nsAString*)_filter);
    CheckException(__result);
  }

  /**
  * The filename that should be suggested to the user as a default.
  *
  * @throws NS_ERROR_FAILURE on attempts to get
  */
  /* attribute AString defaultString; */
  wchar[] DefaultString(){
    scope auto value = new AString();
    nsresult __result = inner.GetDefaultString(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DefaultString(wchar[] aDefaultString){
    scope auto value = new AString(aDefaultString);
    nsresult __result = inner.SetDefaultString(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
  * The extension that should be associated with files of the type we
  * want to work with.  On some platforms, this extension will be
  * automatically appended to filenames the user enters, if needed.  
  */
  /* attribute AString defaultExtension; */
  wchar[] DefaultExtension(){
    scope auto value = new AString();
    nsresult __result = inner.GetDefaultExtension(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DefaultExtension(wchar[] aDefaultExtension){
    scope auto value = new AString(aDefaultExtension);
    nsresult __result = inner.SetDefaultExtension(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
  * The filter which is currently selected in the File Picker dialog
  *
  * @return Returns the index (0 based) of the selected filter in the filter list. 
  */
  /* attribute long filterIndex; */
  PRInt32 FilterIndex(){
    PRInt32 value;
    nsresult __result = inner.GetFilterIndex(&value);
    CheckException(__result);
    return value;
  }
  void FilterIndex(PRInt32 aFilterIndex){
    nsresult __result = inner.SetFilterIndex(aFilterIndex);
    CheckException(__result);
  }

  /**
  * Set the directory that the file open/save dialog initially displays
  *
  * @param      displayDirectory  the name of the directory
  *
  */
  /* attribute nsILocalFile displayDirectory; */
  nsILocalFileD  DisplayDirectory(){
    nsILocalFile value;
    nsresult __result = inner.GetDisplayDirectory(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }
  void DisplayDirectory(nsILocalFileD  aDisplayDirectory){
    nsILocalFile value;
    nsresult __result = inner.SetDisplayDirectory(value);
    CheckException(__result);
  }

  /**
  * Get the nsILocalFile for the file or directory.
  *
  * @return Returns the file currently selected
  */
  /* readonly attribute nsILocalFile file; */
  nsILocalFileD  File(){
    nsILocalFile value;
    nsresult __result = inner.GetFile(&value);
    CheckException(__result);
    return new nsILocalFileD(value);
  }

  /**
  * Get the nsIFileURL for the file or directory.
  *
  * @return Returns the file currently selected
  */
  /* readonly attribute nsIFileURL fileURL; */
  nsIFileURLD  FileURL(){
    nsIFileURL value;
    nsresult __result = inner.GetFileURL(&value);
    CheckException(__result);
    return new nsIFileURLD(value);
  }

  /**
  * Get the enumerator for the selected files
  * only works in the modeOpenMultiple mode
  *
  * @return Returns the files currently selected
  */
  /* readonly attribute nsISimpleEnumerator files; */
  nsISimpleEnumeratorD  Files(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetFiles(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

  /**
  * Show File Dialog. The dialog is displayed modally.
  *
  * @return returnOK if the user selects OK, returnCancel if the user selects cancel
  *
  */
  /* short show (); */
  PRInt16 Show(){
    PRInt16 _retval;
    nsresult __result = inner.Show(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIFilePicker inner;

}

