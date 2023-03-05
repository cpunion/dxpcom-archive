/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILocalFile.idl
 */

module mozilla.xpcom.nsILocalFile;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIFile;


/* starting interface:    nsILocalFile */
const char[] NS_ILOCALFILE_IID_STR = "aa610f20-a889-11d3-8c81-000064657374";

const nsIID NS_ILOCALFILE_IID= 
  {0xaa610f20, 0xa889, 0x11d3, 
    [ 0x8c, 0x81, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * This interface adds methods to nsIFile that are particular to a file
 * that is accessible via the local file system.
 *
 * It follows the same string conventions as nsIFile.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsILocalFile : nsIFile {
  static const char[] IID_STR = NS_ILOCALFILE_IID_STR;
  static const nsIID IID = NS_ILOCALFILE_IID;

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
  nsresult InitWithPath(nsAString * filePath);

  /* [noscript] void initWithNativePath (in ACString filePath); */
  nsresult InitWithNativePath(nsACString * filePath);

  /**
     *  initWithFile
     *
     *  Initialize this object with another file
     *
     *   @param aFile
     *       the file this becomes equivalent to
     */
  /* void initWithFile (in nsILocalFile aFile); */
  nsresult InitWithFile(nsILocalFile aFile);

  /**
     *  followLinks
     *
     *  This attribute will determine if the nsLocalFile will auto
     *  resolve symbolic links.  By default, this value will be false
     *  on all non unix systems.  On unix, this attribute is effectively
     *  a noop.  
     */
  /* attribute PRBool followLinks; */
  nsresult GetFollowLinks(PRBool *aFollowLinks);
  nsresult SetFollowLinks(PRBool aFollowLinks);

  /* [noscript] PRFileDescStar openNSPRFileDesc (in long flags, in long mode); */
  nsresult OpenNSPRFileDesc(PRInt32 flags, PRInt32 mode, PRFileDesc * *_retval);

  /* [noscript] FILE openANSIFileDesc (in string mode); */
  nsresult OpenANSIFileDesc(char *mode, FILE * *_retval);

  /* [noscript] PRLibraryStar load (); */
  nsresult Load(PRLibrary * *_retval);

  /* readonly attribute PRInt64 diskSpaceAvailable; */
  nsresult GetDiskSpaceAvailable(PRInt64 *aDiskSpaceAvailable);

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
  nsresult AppendRelativePath(nsAString * relativeFilePath);

  /* [noscript] void appendRelativeNativePath (in ACString relativeFilePath); */
  nsresult AppendRelativeNativePath(nsACString * relativeFilePath);

  /**
     *  Accessor to a null terminated string which will specify
     *  the file in a persistent manner for disk storage.
     *
     *  The character set of this attribute is undefined.  DO NOT TRY TO
     *  INTERPRET IT AS HUMAN READABLE TEXT!
     */
  /* attribute ACString persistentDescriptor; */
  nsresult GetPersistentDescriptor(nsACString * aPersistentDescriptor);
  nsresult SetPersistentDescriptor(nsACString * aPersistentDescriptor);

  /** 
     *  reveal
     *
     *  Ask the operating system to open the folder which contains
     *  this file or folder. This routine only works on platforms which 
     *  support the ability to open a folder...
     */
  /* void reveal (); */
  nsresult Reveal();

  /** 
     *  launch
     *
     *  Ask the operating system to attempt to open the file. 
     *  this really just simulates "double clicking" the file on your platform.
     *  This routine only works on platforms which support this functionality.
     */
  /* void launch (); */
  nsresult Launch();

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
  nsresult GetRelativeDescriptor(nsILocalFile fromFile, nsACString * _retval);

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
  nsresult SetRelativeDescriptor(nsILocalFile fromFile, nsACString * relativeDesc);

}

