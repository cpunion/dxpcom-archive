/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFilePicker.idl
 */

module mozilla.xpcom.nsIFilePicker;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILocalFile; /* forward declaration */

public import mozilla.xpcom.nsIFileURL; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIFilePicker */
const char[] NS_IFILEPICKER_IID_STR = "80faf095-c807-4558-a2cc-185ed70754ea";

const nsIID NS_IFILEPICKER_IID= 
  {0x80faf095, 0xc807, 0x4558, 
    [ 0xa2, 0xcc, 0x18, 0x5e, 0xd7, 0x07, 0x54, 0xea ]};

extern(Windows)
interface nsIFilePicker : nsISupports {
  static const char[] IID_STR = NS_IFILEPICKER_IID_STR;
  static const nsIID IID = NS_IFILEPICKER_IID;

  enum { modeOpen = 0 };

  enum { modeSave = 1 };

  enum { modeGetFolder = 2 };

  enum { modeOpenMultiple = 3 };

  enum { returnOK = 0 };

  enum { returnCancel = 1 };

  enum { returnReplace = 2 };

  enum { filterAll = 1 };

  enum { filterHTML = 2 };

  enum { filterText = 4 };

  enum { filterImages = 8 };

  enum { filterXML = 16 };

  enum { filterXUL = 32 };

  enum { filterApps = 64 };

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
  nsresult Init(nsIDOMWindow parent, nsAString * title, PRInt16 mode);

  /**
  * Append to the  filter list with things from the predefined list
  *
  * @param      filters  mask of filters i.e. (filterAll | filterHTML)
  *
  */
  /* void appendFilters (in long filterMask); */
  nsresult AppendFilters(PRInt32 filterMask);

  /**
  * Add a filter
  *
  * @param      title    name of the filter
  * @param      filter   extensions to filter -- semicolon and space separated
  *
  */
  /* void appendFilter (in AString title, in AString filter); */
  nsresult AppendFilter(nsAString * title, nsAString * filter);

  /**
  * The filename that should be suggested to the user as a default.
  *
  * @throws NS_ERROR_FAILURE on attempts to get
  */
  /* attribute AString defaultString; */
  nsresult GetDefaultString(nsAString * aDefaultString);
  nsresult SetDefaultString(nsAString * aDefaultString);

  /**
  * The extension that should be associated with files of the type we
  * want to work with.  On some platforms, this extension will be
  * automatically appended to filenames the user enters, if needed.  
  */
  /* attribute AString defaultExtension; */
  nsresult GetDefaultExtension(nsAString * aDefaultExtension);
  nsresult SetDefaultExtension(nsAString * aDefaultExtension);

  /**
  * The filter which is currently selected in the File Picker dialog
  *
  * @return Returns the index (0 based) of the selected filter in the filter list. 
  */
  /* attribute long filterIndex; */
  nsresult GetFilterIndex(PRInt32 *aFilterIndex);
  nsresult SetFilterIndex(PRInt32 aFilterIndex);

  /**
  * Set the directory that the file open/save dialog initially displays
  *
  * @param      displayDirectory  the name of the directory
  *
  */
  /* attribute nsILocalFile displayDirectory; */
  nsresult GetDisplayDirectory(nsILocalFile  *aDisplayDirectory);
  nsresult SetDisplayDirectory(nsILocalFile  aDisplayDirectory);

  /**
  * Get the nsILocalFile for the file or directory.
  *
  * @return Returns the file currently selected
  */
  /* readonly attribute nsILocalFile file; */
  nsresult GetFile(nsILocalFile  *aFile);

  /**
  * Get the nsIFileURL for the file or directory.
  *
  * @return Returns the file currently selected
  */
  /* readonly attribute nsIFileURL fileURL; */
  nsresult GetFileURL(nsIFileURL  *aFileURL);

  /**
  * Get the enumerator for the selected files
  * only works in the modeOpenMultiple mode
  *
  * @return Returns the files currently selected
  */
  /* readonly attribute nsISimpleEnumerator files; */
  nsresult GetFiles(nsISimpleEnumerator  *aFiles);

  /**
  * Show File Dialog. The dialog is displayed modally.
  *
  * @return returnOK if the user selects OK, returnCancel if the user selects cancel
  *
  */
  /* short show (); */
  nsresult Show(PRInt16 *_retval);

}

