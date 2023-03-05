/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFile.idl
 */

module mozilla.xpcom.nsIFile;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIFile */
const char[] NS_IFILE_IID_STR = "c8c0a080-0868-11d3-915f-d9d889d48e3c";

const nsIID NS_IFILE_IID= 
  {0xc8c0a080, 0x0868, 0x11d3, 
    [ 0x91, 0x5f, 0xd9, 0xd8, 0x89, 0xd4, 0x8e, 0x3c ]};

/**
 * This is the only correct cross-platform way to specify a file.
 * Strings are not such a way. If you grew up on windows or unix, you
 * may think they are.  Welcome to reality.
 *
 * All methods with string parameters have two forms.  The preferred
 * form operates on UCS-2 encoded characters strings.  An alternate
 * form operates on characters strings encoded in the "native" charset.
 *
 * A string containing characters encoded in the native charset cannot
 * be safely passed to javascript via xpconnect.  Therefore, the "native
 * methods" are not scriptable. 
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIFile : nsISupports {
  static const char[] IID_STR = NS_IFILE_IID_STR;
  static const nsIID IID = NS_IFILE_IID;

  /**
     *  Create Types
     *
     *  NORMAL_FILE_TYPE - A normal file.
     *  DIRECTORY_TYPE   - A directory/folder.
     */
  enum { NORMAL_FILE_TYPE = 0U };

  enum { DIRECTORY_TYPE = 1U };

  /**
     *  append[Native]
     *
     *  This function is used for constructing a descendent of the
     *  current nsIFile.
     *
     *   @param node
     *       A string which is intended to be a child node of the nsIFile.
     *       For the |appendNative| method, the node must be in the native
     *       filesystem charset.
     */
  /* void append (in AString node); */
  nsresult Append(nsAString * node);

  /* [noscript] void appendNative (in ACString node); */
  nsresult AppendNative(nsACString * node);

  /**
     *  Normalize the pathName (e.g. removing .. and . components on Unix).
     */
  /* void normalize (); */
  nsresult Normalize();

  /**
     *  create
     *
     *  This function will create a new file or directory in the
     *  file system. Any nodes that have not been created or
     *  resolved, will be.  If the file or directory already
     *  exists create() will return NS_ERROR_FILE_ALREADY_EXISTS.
     *
     *   @param type
     *       This specifies the type of file system object
     *       to be made.  The only two types at this time
     *       are file and directory which are defined above.
     *       If the type is unrecongnized, we will return an
     *       error (NS_ERROR_FILE_UNKNOWN_TYPE).
     *
     *   @param permissions
     *       The unix style octal permissions.  This may
     *       be ignored on systems that do not need to do
     *       permissions.
     */
  /* void create (in unsigned long type, in unsigned long permissions); */
  nsresult Create(PRUint32 type, PRUint32 permissions);

  /**
     *  Accessor to the leaf name of the file itself.      
     *  For the |nativeLeafName| method, the nativeLeafName must 
     *  be in the native filesystem charset.
     */
  /* attribute AString leafName; */
  nsresult GetLeafName(nsAString * aLeafName);
  nsresult SetLeafName(nsAString * aLeafName);

  /* [noscript] attribute ACString nativeLeafName; */
  nsresult GetNativeLeafName(nsACString * aNativeLeafName);
  nsresult SetNativeLeafName(nsACString * aNativeLeafName);

  /**
     *  copyTo[Native]
     *
     *  This will copy this file to the specified newParentDir.
     *  If a newName is specified, the file will be renamed.
     *  If 'this' is not created we will return an error
     *  (NS_ERROR_FILE_TARGET_DOES_NOT_EXIST).
     *
     *  copyTo may fail if the file already exists in the destination 
     *  directory.
     *
     *  copyTo will NOT resolve aliases/shortcuts during the copy.
     *
     *   @param newParentDir
     *       This param is the destination directory. If the
     *       newParentDir is null, copyTo() will use the parent
     *       directory of this file. If the newParentDir is not
     *       empty and is not a directory, an error will be
     *       returned (NS_ERROR_FILE_DESTINATION_NOT_DIR). For the 
     *       |CopyToNative| method, the newName must be in the 
     *       native filesystem charset.
     *
     *   @param newName
     *       This param allows you to specify a new name for
     *       the file to be copied. This param may be empty, in
     *       which case the current leaf name will be used.
     */
  /* void copyTo (in nsIFile newParentDir, in AString newName); */
  nsresult CopyTo(nsIFile newParentDir, nsAString * newName);

  /* [noscript] void CopyToNative (in nsIFile newParentDir, in ACString newName); */
  nsresult CopyToNative(nsIFile newParentDir, nsACString * newName);

  /**
     *  copyToFollowingLinks[Native]
     *
     *  This function is identical to copyTo with the exception that,
     *  as the name implies, it follows symbolic links.  The XP_UNIX
     *  implementation always follow symbolic links when copying.  For 
     *  the |CopyToFollowingLinks| method, the newName must be in the 
     *  native filesystem charset.
     */
  /* void copyToFollowingLinks (in nsIFile newParentDir, in AString newName); */
  nsresult CopyToFollowingLinks(nsIFile newParentDir, nsAString * newName);

  /* [noscript] void copyToFollowingLinksNative (in nsIFile newParentDir, in ACString newName); */
  nsresult CopyToFollowingLinksNative(nsIFile newParentDir, nsACString * newName);

  /**
     *  moveTo[Native]
     *
     *  A method to move this file or directory to newParentDir.
     *  If a newName is specified, the file or directory will be renamed.
     *  If 'this' is not created we will return an error
     *  (NS_ERROR_FILE_TARGET_DOES_NOT_EXIST).
     *  If 'this' is a file, and the destination file already exists, moveTo
     *  will replace the old file.
     *
     *  moveTo will NOT resolve aliases/shortcuts during the copy.
     *  moveTo will do the right thing and allow copies across volumes.
     *  moveTo will return an error (NS_ERROR_FILE_DIR_NOT_EMPTY) if 'this' is
     *  a directory and the destination directory is not empty.
     *  moveTo will return an error (NS_ERROR_FILE_ACCESS_DENIED) if 'this' is
     *  a directory and the destination directory is not writable.
     *
     *   @param newParentDir
     *       This param is the destination directory. If the
     *       newParentDir is empty, moveTo() will rename the file
     *       within its current directory. If the newParentDir is
     *       not empty and does not name a directory, an error will
     *       be returned (NS_ERROR_FILE_DESTINATION_NOT_DIR).  For 
     *       the |moveToNative| method, the newName must be in the 
     *       native filesystem charset.
     *
     *   @param newName
     *       This param allows you to specify a new name for
     *       the file to be moved. This param may be empty, in
     *       which case the current leaf name will be used.
     */
  /* void moveTo (in nsIFile newParentDir, in AString newName); */
  nsresult MoveTo(nsIFile newParentDir, nsAString * newName);

  /* [noscript] void moveToNative (in nsIFile newParentDir, in ACString newName); */
  nsresult MoveToNative(nsIFile newParentDir, nsACString * newName);

  /**
     *  This will try to delete this file.  The 'recursive' flag
     *  must be PR_TRUE to delete directories which are not empty.
     *
     *  This will not resolve any symlinks.
     */
  /* void remove (in boolean recursive); */
  nsresult Remove(PRBool recursive);

  /**
     *  Attributes of nsIFile.
     */
  /* attribute unsigned long permissions; */
  nsresult GetPermissions(PRUint32 *aPermissions);
  nsresult SetPermissions(PRUint32 aPermissions);

  /* attribute unsigned long permissionsOfLink; */
  nsresult GetPermissionsOfLink(PRUint32 *aPermissionsOfLink);
  nsresult SetPermissionsOfLink(PRUint32 aPermissionsOfLink);

  /**
     *  File Times are to be in milliseconds from
     *  midnight (00:00:00), January 1, 1970 Greenwich Mean
     *  Time (GMT).
     */
  /* attribute PRInt64 lastModifiedTime; */
  nsresult GetLastModifiedTime(PRInt64 *aLastModifiedTime);
  nsresult SetLastModifiedTime(PRInt64 aLastModifiedTime);

  /* attribute PRInt64 lastModifiedTimeOfLink; */
  nsresult GetLastModifiedTimeOfLink(PRInt64 *aLastModifiedTimeOfLink);
  nsresult SetLastModifiedTimeOfLink(PRInt64 aLastModifiedTimeOfLink);

  /**
     *  WARNING!  On the Mac, getting/setting the file size with nsIFile
     *  only deals with the size of the data fork.  If you need to
     *  know the size of the combined data and resource forks use the
     *  GetFileSizeWithResFork() method defined on nsILocalFileMac.
     */
  /* attribute PRInt64 fileSize; */
  nsresult GetFileSize(PRInt64 *aFileSize);
  nsresult SetFileSize(PRInt64 aFileSize);

  /* readonly attribute PRInt64 fileSizeOfLink; */
  nsresult GetFileSizeOfLink(PRInt64 *aFileSizeOfLink);

  /**
     *  target & path
     *
     *  Accessor to the string path.  The native version of these
     *  strings are not guaranteed to be a usable path to pass to
     *  NSPR or the C stdlib.  There are problems that affect
     *  platforms on which a path does not fully specify a file
     *  because two volumes can have the same name (e.g., XP_MAC).
     *  This is solved by holding "private", native data in the
     *  nsIFile implementation.  This native data is lost when
     *  you convert to a string.
     *
     *      DO NOT PASS TO USE WITH NSPR OR STDLIB!
     *
     *  target
     *      Find out what the symlink points at.  Will give error
     *      (NS_ERROR_FILE_INVALID_PATH) if not a symlink.
     *
     *  path
     *      Find out what the nsIFile points at.
     *
     *  Note that the ACString attributes are returned in the 
     *  native filesystem charset.
     *
     */
  /* readonly attribute AString target; */
  nsresult GetTarget(nsAString * aTarget);

  /* [noscript] readonly attribute ACString nativeTarget; */
  nsresult GetNativeTarget(nsACString * aNativeTarget);

  /* readonly attribute AString path; */
  nsresult GetPath(nsAString * aPath);

  /* [noscript] readonly attribute ACString nativePath; */
  nsresult GetNativePath(nsACString * aNativePath);

  /* boolean exists (); */
  nsresult Exists(PRBool *_retval);

  /* boolean isWritable (); */
  nsresult IsWritable(PRBool *_retval);

  /* boolean isReadable (); */
  nsresult IsReadable(PRBool *_retval);

  /* boolean isExecutable (); */
  nsresult IsExecutable(PRBool *_retval);

  /* boolean isHidden (); */
  nsresult IsHidden(PRBool *_retval);

  /* boolean isDirectory (); */
  nsresult IsDirectory(PRBool *_retval);

  /* boolean isFile (); */
  nsresult IsFile(PRBool *_retval);

  /* boolean isSymlink (); */
  nsresult IsSymlink(PRBool *_retval);

  /**
     * Not a regular file, not a directory, not a symlink.
     */
  /* boolean isSpecial (); */
  nsresult IsSpecial(PRBool *_retval);

  /**
     *  createUnique
     *  
     *  This function will create a new file or directory in the
     *  file system. Any nodes that have not been created or
     *  resolved, will be.  If this file already exists, we try
     *  variations on the leaf name "suggestedName" until we find
     *  one that did not already exist.
     *
     *  If the search for nonexistent files takes too long
     *  (thousands of the variants already exist), we give up and
     *  return NS_ERROR_FILE_TOO_BIG.
     *
     *   @param type
     *       This specifies the type of file system object
     *       to be made.  The only two types at this time
     *       are file and directory which are defined above.
     *       If the type is unrecongnized, we will return an
     *       error (NS_ERROR_FILE_UNKNOWN_TYPE).
     *
     *   @param permissions
     *       The unix style octal permissions.  This may
     *       be ignored on systems that do not need to do
     *       permissions.
     */
  /* void createUnique (in unsigned long type, in unsigned long permissions); */
  nsresult CreateUnique(PRUint32 type, PRUint32 permissions);

  /**
      * clone()
      *
      * This function will allocate and initialize a nsIFile object to the
      * exact location of the |this| nsIFile.
      *
      *   @param file
      *          A nsIFile which this object will be initialize
      *          with.
      *
      */
  /* nsIFile clone (); */
  nsresult Clone(nsIFile *_retval);

  /**
     *  Will determine if the inFile equals this.
     */
  /* boolean equals (in nsIFile inFile); */
  nsresult Equals(nsIFile inFile, PRBool *_retval);

  /**
     *  Will determine if inFile is a descendant of this file
     *  If |recur| is true, look in subdirectories too
     */
  /* boolean contains (in nsIFile inFile, in boolean recur); */
  nsresult Contains(nsIFile inFile, PRBool recur, PRBool *_retval);

  /**
     *  Parent will be null when this is at the top of the volume.
     */
  /* readonly attribute nsIFile parent; */
  nsresult GetParent(nsIFile  *aParent);

  /**
     *  Returns an enumeration of the elements in a directory. Each
     *  element in the enumeration is an nsIFile.
     *
     *   @return NS_ERROR_FILE_NOT_DIRECTORY if the current nsIFile does
     *           not specify a directory.
     */
  /* readonly attribute nsISimpleEnumerator directoryEntries; */
  nsresult GetDirectoryEntries(nsISimpleEnumerator  *aDirectoryEntries);

}

