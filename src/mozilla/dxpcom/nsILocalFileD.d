/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILocalFile.idl
 */

module mozilla.dxpcom.nsILocalFileD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILocalFile;


public import mozilla.dxpcom.nsILocalFileD;

public import mozilla.xpcom.nsIFile;
public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsILocalFile */
/**
 * This interface adds methods to nsIFile that are particular to a file
 * that is accessible via the local file system.
 *
 * It follows the same string conventions as nsIFile.
 *
 * @status FROZEN
 */
class nsILocalFileD : public nsIFileD {

  static const nsIID IID = NS_ILOCALFILE_IID;


  alias nsILocalFile InnerType;

  this(nsILocalFile intr){
    super(intr);
    this.inner = intr;
  }

  nsILocalFile opCast() {
    return inner;
  }

  void opAssign(nsILocalFile value) {
    inner = value;
  }

  /**
     *  initWith[Native]Path
     *
     *  This function will initialize the nsILocalFile object.  Any
     *  internal state information will be reset.  
     *
     *  NOTE: This function has a known bug on the macintosh and
     *  other OSes which do not represent file locations as paths.
     *  If you do use this function, be very aware of this problem!
     *
     *   @param filePath       
     *       A string which specifies a full file path to a 
     *       location.  Relative paths will be treated as an
     *       error (NS_ERROR_FILE_UNRECOGNIZED_PATH).  For 
     *       initWithNativePath, the filePath must be in the native
     *       filesystem charset.
     */
  /* void initWithPath (in AString filePath); */
  void InitWithPath(wchar[] filePath){
    scope auto _filePath = new AString(filePath);
    nsresult __result = inner.InitWithPath(cast(nsAString*)_filePath);
    CheckException(__result);
  }

  /* [noscript] void initWithNativePath (in ACString filePath); */
  void InitWithNativePath(char[] filePath){
    scope auto _filePath = new ACString(filePath);
    nsresult __result = inner.InitWithNativePath(cast(nsACString*)_filePath);
    CheckException(__result);
  }

  /**
     *  initWithFile
     *
     *  Initialize this object with another file
     *
     *   @param aFile
     *       the file this becomes equivalent to
     */
  /* void initWithFile (in nsILocalFile aFile); */
  void InitWithFile(nsILocalFileD aFile){
    nsresult __result = inner.InitWithFile(aFile ? cast(nsILocalFile)aFile : null);
    CheckException(__result);
  }

  /**
     *  followLinks
     *
     *  This attribute will determine if the nsLocalFile will auto
     *  resolve symbolic links.  By default, this value will be false
     *  on all non unix systems.  On unix, this attribute is effectively
     *  a noop.  
     */
  /* attribute PRBool followLinks; */
  PRBool FollowLinks(){
    PRBool value;
    nsresult __result = inner.GetFollowLinks(&value);
    CheckException(__result);
    return value;
  }
  void FollowLinks(PRBool aFollowLinks){
    PRBool value;
    nsresult __result = inner.SetFollowLinks(value);
    CheckException(__result);
  }

  /* [noscript] PRFileDescStar openNSPRFileDesc (in long flags, in long mode); */
  PRFileDesc * OpenNSPRFileDesc(PRInt32 flags, PRInt32 mode){
PRFileDesc * _retval;
    nsresult __result = inner.OpenNSPRFileDesc(flags, mode, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] FILE openANSIFileDesc (in string mode); */
  FILE * OpenANSIFileDesc(char*mode){
FILE * _retval;
    nsresult __result = inner.OpenANSIFileDesc(mode, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] PRLibraryStar load (); */
  PRLibrary * Load(){
PRLibrary * _retval;
    nsresult __result = inner.Load(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute PRInt64 diskSpaceAvailable; */
  PRInt64 DiskSpaceAvailable(){
    PRInt64 value;
    nsresult __result = inner.GetDiskSpaceAvailable(&value);
    CheckException(__result);
    return value;
  }

  /**
     *  appendRelative[Native]Path
     *
     *  Append a relative path to the current path of the nsILocalFile object.
     *
     *   @param relativeFilePath
     *       relativeFilePath is a native relative path. For security reasons,
     *       this cannot contain .. or cannot start with a directory separator.
     *       For the |appendRelativeNativePath| method, the relativeFilePath 
     *       must be in the native filesystem charset.
     */
  /* void appendRelativePath (in AString relativeFilePath); */
  void AppendRelativePath(wchar[] relativeFilePath){
    scope auto _relativeFilePath = new AString(relativeFilePath);
    nsresult __result = inner.AppendRelativePath(cast(nsAString*)_relativeFilePath);
    CheckException(__result);
  }

  /* [noscript] void appendRelativeNativePath (in ACString relativeFilePath); */
  void AppendRelativeNativePath(char[] relativeFilePath){
    scope auto _relativeFilePath = new ACString(relativeFilePath);
    nsresult __result = inner.AppendRelativeNativePath(cast(nsACString*)_relativeFilePath);
    CheckException(__result);
  }

  /**
     *  Accessor to a null terminated string which will specify
     *  the file in a persistent manner for disk storage.
     *
     *  The character set of this attribute is undefined.  DO NOT TRY TO
     *  INTERPRET IT AS HUMAN READABLE TEXT!
     */
  /* attribute ACString persistentDescriptor; */
  char[] PersistentDescriptor(){
    scope auto value = new ACString();
    nsresult __result = inner.GetPersistentDescriptor(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void PersistentDescriptor(char[] aPersistentDescriptor){
    scope auto value = new ACString(aPersistentDescriptor);
    nsresult __result = inner.SetPersistentDescriptor(cast(nsACString*)value);
    CheckException(__result);
  }

  /** 
     *  reveal
     *
     *  Ask the operating system to open the folder which contains
     *  this file or folder. This routine only works on platforms which 
     *  support the ability to open a folder...
     */
  /* void reveal (); */
  void Reveal(){
    nsresult __result = inner.Reveal();
    CheckException(__result);
  }

  /** 
     *  launch
     *
     *  Ask the operating system to attempt to open the file. 
     *  this really just simulates "double clicking" the file on your platform.
     *  This routine only works on platforms which support this functionality.
     */
  /* void launch (); */
  void Launch(){
    nsresult __result = inner.Launch();
    CheckException(__result);
  }

  /**
     *  getRelativeDescriptor
     *
     *  Returns a relative file path in an opaque, XP format. It is therefore
     *  not a native path.
     *
     *  The character set of the string returned from this function is
     *  undefined.  DO NOT TRY TO INTERPRET IT AS HUMAN READABLE TEXT!
     *
     *   @param fromFile
     *       the file from which the descriptor is relative.
     *       There is no defined result if this param is null.
     */
  /* ACString getRelativeDescriptor (in nsILocalFile fromFile); */
  char[] GetRelativeDescriptor(nsILocalFileD fromFile){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetRelativeDescriptor(fromFile ? cast(nsILocalFile)fromFile : null, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     *  setRelativeDescriptor
     *
     *  Initializes the file to the location relative to fromFile using
     *  a string returned by getRelativeDescriptor.
     *
     *   @param fromFile
     *       the file to which the descriptor is relative
     *   @param relative
     *       the relative descriptor obtained from getRelativeDescriptor
     */
  /* void setRelativeDescriptor (in nsILocalFile fromFile, in ACString relativeDesc); */
  void SetRelativeDescriptor(nsILocalFileD fromFile, char[] relativeDesc){
    scope auto _relativeDesc = new ACString(relativeDesc);
    nsresult __result = inner.SetRelativeDescriptor(fromFile ? cast(nsILocalFile)fromFile : null, cast(nsACString*)_relativeDesc);
    CheckException(__result);
  }

private:
  nsILocalFile inner;

}

