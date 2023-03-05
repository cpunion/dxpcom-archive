/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileUtilities.idl
 */

module mozilla.xpcom.nsIFileUtilities;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;


/* starting interface:    nsIFileUtilities */
const char[] NS_IFILEUTILITIES_IID_STR = "89a31ce0-019a-11d2-815b-006008119d7a";

const nsIID NS_IFILEUTILITIES_IID= 
  {0x89a31ce0, 0x019a, 0x11d2, 
    [ 0x81, 0x5b, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

/**
 * The nsIFileUtilities interface provides access to random file operations.
 * To obtain: QueryInterface on nsIPluginManager.
 */
extern(Windows)
interface nsIFileUtilities : nsISupports {
  static const char[] IID_STR = NS_IFILEUTILITIES_IID_STR;
  static const nsIID IID = NS_IFILEUTILITIES_IID;

  /**
   * Returns the name of the browser executable program.
   *
   * @param aProgramPath - the returned path to the program
   * @result             - NS_OK if this operation was successful
   */
  /* void getProgramPath (out constCharPtr aProgramPath); */
  nsresult GetProgramPath(char * *aProgramPath);

  /**
   * Returns the name of the temporary directory.
   *
   * @param aTempDirPath - the returned path to the temp directory
   * @result             - NS_OK if this operation was successful
   */
  /* void getTempDirPath (out constCharPtr aTempDirPath); */
  nsresult GetTempDirPath(char * *aTempDirPath);

  /**
   * Returns a unique temporary file name.
   *
   * @param aPrefix - a string to prefix to the temporary file name
   * @param aLength - the length of the resulting buffer to receive the data
   * @param aBuffer - the returned temp file name
   * @result        - NS_OK if this operation was successful
   */
  /* void newTempFileName (in string aPrefix, in unsigned long aLength, in charPtr aBuffer); */
  nsresult NewTempFileName(char *aPrefix, PRUint32 aLength, char * aBuffer);

}

