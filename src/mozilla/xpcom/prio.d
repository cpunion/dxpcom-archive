/* Converted to D from prio.h by htod */
module mozilla.xpcom.prio;
/* -*- Mode: C++; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0/LGPL 2.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is the Netscape Portable Runtime (NSPR).
 *
 * The Initial Developer of the Original Code is
 * Netscape Communications Corporation.
 * Portions created by the Initial Developer are Copyright (C) 1998-2000
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either the GNU General Public License Version 2 or later (the "GPL"), or
 * the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 * in which case the provisions of the GPL or the LGPL are applicable instead
 * of those above. If you wish to allow use of your version of this file only
 * under the terms of either the GPL or the LGPL, and not to allow others to
 * use your version of this file under the terms of the MPL, indicate your
 * decision by deleting the provisions above and replace them with the notice
 * and other provisions required by the GPL or the LGPL. If you do not delete
 * the provisions above, a recipient may use your version of this file under
 * the terms of any one of the MPL, the GPL or the LGPL.
 *
 * ***** END LICENSE BLOCK ***** */

/*
 * File:     prio.h
 *
 * Description:    PR i/o related stuff, such as file system access, file
 *         i/o, socket i/o, etc.
 */

//C     #ifndef prio_h___
//C     #define prio_h___

//C     #include "prlong.h"
import mozilla.xpcom.prlong;
//C     #include "prtime.h"
import mozilla.xpcom.prtime;
//C     #include "prinrval.h"
import mozilla.xpcom.prinrval;
//C     #include "prinet.h"
import mozilla.xpcom.prinet;

//C     PR_BEGIN_EXTERN_C

/* Typedefs */
//C     typedef struct PRDir            PRDir;
//C     typedef struct PRDirEntry       PRDirEntry;
//C     #ifdef MOZ_UNICODE
//C     typedef struct PRDirUTF16       PRDirUTF16;
//C     typedef struct PRDirEntryUTF16  PRDirEntryUTF16;
//C     #endif /* MOZ_UNICODE */
//C     typedef struct PRFileDesc       PRFileDesc;
//C     typedef struct PRFileInfo       PRFileInfo;
//C     typedef struct PRFileInfo64     PRFileInfo64;
//C     typedef union  PRNetAddr        PRNetAddr;
//C     typedef struct PRIOMethods      PRIOMethods;
//C     typedef struct PRPollDesc       PRPollDesc;
//C     typedef struct PRFilePrivate    PRFilePrivate;
//C     typedef struct PRSendFileData   PRSendFileData;

/*
***************************************************************************
** The file descriptor.
** This is the primary structure to represent any active open socket,
** whether it be a normal file or a network connection. Such objects
** are stackable (or layerable). Each layer may have its own set of
** method pointers and context private to that layer. All each layer
** knows about its neighbors is how to get to their method table.
***************************************************************************
*/

//C     typedef PRIntn PRDescIdentity;          /* see: Layering file descriptors */
extern (Windows):
alias PRIntn PRDescIdentity;

//C     struct PRFileDesc {
//C         const PRIOMethods *methods;         /* the I/O methods table */
//C         PRFilePrivate *secret;              /* layer dependent data */
//C         PRFileDesc *lower, *higher;         /* pointers to adjacent layers */
//C         void (PR_CALLBACK *dtor)(PRFileDesc *fd);
                                        /* A destructor function for layer */
//C         PRDescIdentity identity;            /* Identity of this particular layer  */
//C     };
alias void PRFilePrivate;

struct PRFileDesc
{
    PRIOMethods *methods;
    PRFilePrivate *secret;
    PRFileDesc *lower;
    PRFileDesc *higher;
    void  function(PRFileDesc *fd)dtor;
    PRDescIdentity identity;
}

/*
***************************************************************************
** PRTransmitFileFlags
**
** Flags for PR_TransmitFile.  Pass PR_TRANSMITFILE_CLOSE_SOCKET to
** PR_TransmitFile if the connection should be closed after the file
** is transmitted.
***************************************************************************
*/
//C     typedef enum PRTransmitFileFlags {
//C         PR_TRANSMITFILE_KEEP_OPEN = 0,    
/* socket is left open after file
                                       * is transmitted. */
//C         PR_TRANSMITFILE_CLOSE_SOCKET = 1  
/* socket is closed after file
                                       * is transmitted. */
//C     } PRTransmitFileFlags;
enum PRTransmitFileFlags
{
    PR_TRANSMITFILE_KEEP_OPEN,
    PR_TRANSMITFILE_CLOSE_SOCKET,
}

/*
**************************************************************************
** Macros for PRNetAddr
**
** Address families: PR_AF_INET, PR_AF_INET6, PR_AF_LOCAL
** IP addresses: PR_INADDR_ANY, PR_INADDR_LOOPBACK, PR_INADDR_BROADCAST
**************************************************************************
*/

//C     #ifdef WIN32

//C     #define PR_AF_INET 2
//C     #define PR_AF_LOCAL 1
const PR_AF_INET = 2;
//C     #define PR_INADDR_ANY (unsigned long)0x00000000
const PR_AF_LOCAL = 1;
//C     #define PR_INADDR_LOOPBACK 0x7f000001
//C     #define PR_INADDR_BROADCAST (unsigned long)0xffffffff
const PR_INADDR_LOOPBACK = 0x7f000001;

//C     #else /* WIN32 */

//C     #define PR_AF_INET AF_INET
//C     #define PR_AF_LOCAL AF_UNIX
//C     #define PR_INADDR_ANY INADDR_ANY
//C     #define PR_INADDR_LOOPBACK INADDR_LOOPBACK
//C     #define PR_INADDR_BROADCAST INADDR_BROADCAST

//C     #endif /* WIN32 */

/*
** Define PR_AF_INET6 in prcpucfg.h with the same
** value as AF_INET6 on platforms with IPv6 support.
** Otherwise define it here.
*/
//C     #ifndef PR_AF_INET6
//C     #define PR_AF_INET6 100
//C     #endif

//C     #ifndef PR_AF_UNSPEC
//C     #define PR_AF_UNSPEC 0
//C     #endif
const PR_AF_UNSPEC = 0;

/*
**************************************************************************
** A network address
**
** Only Internet Protocol (IPv4 and IPv6) addresses are supported.
** The address family must always represent IPv4 (AF_INET, probably == 2)
** or IPv6 (AF_INET6).
**************************************************************************
*************************************************************************/

//C     struct PRIPv6Addr {
//C     	union {
//C     		PRUint8  _S6_u8[16];
//C     		PRUint16 _S6_u16[8];
//C     		PRUint32 _S6_u32[4];
//C     		PRUint64 _S6_u64[2];
//C     	} _S6_un;
union _N2
{
    PRUint8 [16]_S6_u8;
    PRUint16 [8]_S6_u16;
    PRUint32 [4]_S6_u32;
    PRUint64 [2]_S6_u64;
}
//C     };
struct PRIPv6Addr
{
	struct _N2{
		union
		{
			PRUint8 [16]_S6_u8;
			PRUint16 [8]_S6_u16;
			PRUint32 [4]_S6_u32;
			PRUint64 [2]_S6_u64;
		}
	}
	_N2 _S6_un;
}
//C     #define pr_s6_addr		_S6_un._S6_u8
//C     #define pr_s6_addr16	_S6_un._S6_u16
//C     #define pr_s6_addr32	_S6_un._S6_u32
//C     #define pr_s6_addr64 	_S6_un._S6_u64

//C     typedef struct PRIPv6Addr PRIPv6Addr;

//C     union PRNetAddr {
//C         struct {
//C             PRUint16 family;                /* address family (0x00ff maskable) */
//C     #ifdef XP_BEOS
//C             char data[10];                  /* Be has a smaller structure */
//C     #else
//C             char data[14];                  /* raw address data */
//C     #endif
//C         } raw;
struct _N3
{
    PRUint16 family;
    char [14]data;
}

//C         struct {
//C             PRUint16 family;                /* address family (AF_INET) */
//C             PRUint16 port;                  /* port number */
//C             PRUint32 ip;                    /* The actual 32 bits of address */
//C     #ifdef XP_BEOS
//C             char pad[4];                    /* Be has a smaller structure */
//C     #else
//C             char pad[8];
//C     #endif
//C         } inet;
struct _N4
{
    PRUint16 family;
    PRUint16 port;
    PRUint32 ip;
    char [8]pad;
}

//C         struct {
//C             PRUint16 family;                /* address family (AF_INET6) */
//C             PRUint16 port;                  /* port number */
//C             PRUint32 flowinfo;              /* routing information */
//C             PRIPv6Addr ip;                  /* the actual 128 bits of address */
//C             PRUint32 scope_id;              /* set of interfaces for a scope */
//C         } ipv6;
struct _N5
{
    PRUint16 family;
    PRUint16 port;
    PRUint32 flowinfo;
    PRIPv6Addr ip;
    PRUint32 scope_id;
}

//C     #if defined(XP_UNIX) || defined(XP_OS2_EMX)
//C         struct {                            /* Unix domain socket address */
//C             PRUint16 family;                /* address family (AF_UNIX) */
//C     #ifdef XP_OS2
//C             char path[108];                 /* null-terminated pathname */
                                        /* bind fails if size is not 108. */
//C     #else
//C             char path[104];                 /* null-terminated pathname */
//C     #endif
//C         } local;
//C     #endif
//C     };
union PRNetAddr
{
    struct _N3
    {
        PRUint16 family;
        char [14]data;
    }
    _N3 raw;
    struct _N4
    {
        PRUint16 family;
        PRUint16 port;
        PRUint32 ip;
        char [8]pad;
    }
    _N4 inet;
    struct _N5
    {
        PRUint16 family;
        PRUint16 port;
        PRUint32 flowinfo;
        PRIPv6Addr ip;
        PRUint32 scope_id;
    }
    _N5 ipv6;
}

/*
***************************************************************************
** PRSockOption
**
** The file descriptors can have predefined options set after they file
** descriptor is created to change their behavior. Only the options in
** the following enumeration are supported.
***************************************************************************
*/
//C     typedef enum PRSockOption
//C     {
//C         PR_SockOpt_Nonblocking,     /* nonblocking io */
//C         PR_SockOpt_Linger,          /* linger on close if data present */
//C         PR_SockOpt_Reuseaddr,       /* allow local address reuse */
//C         PR_SockOpt_Keepalive,       /* keep connections alive */
//C         PR_SockOpt_RecvBufferSize,  /* send buffer size */
//C         PR_SockOpt_SendBufferSize,  /* receive buffer size */

//C         PR_SockOpt_IpTimeToLive,    /* time to live */
//C         PR_SockOpt_IpTypeOfService, /* type of service and precedence */

//C         PR_SockOpt_AddMember,       /* add an IP group membership */
//C         PR_SockOpt_DropMember,      /* drop an IP group membership */
//C         PR_SockOpt_McastInterface,  /* multicast interface address */
//C         PR_SockOpt_McastTimeToLive, /* multicast timetolive */
//C         PR_SockOpt_McastLoopback,   /* multicast loopback */

//C         PR_SockOpt_NoDelay,         /* don't delay send to coalesce packets */
//C         PR_SockOpt_MaxSegment,      /* maximum segment size */
//C         PR_SockOpt_Broadcast,       /* enable broadcast */
//C         PR_SockOpt_Last
//C     } PRSockOption;
enum PRSockOption
{
    PR_SockOpt_Nonblocking,
    PR_SockOpt_Linger,
    PR_SockOpt_Reuseaddr,
    PR_SockOpt_Keepalive,
    PR_SockOpt_RecvBufferSize,
    PR_SockOpt_SendBufferSize,
    PR_SockOpt_IpTimeToLive,
    PR_SockOpt_IpTypeOfService,
    PR_SockOpt_AddMember,
    PR_SockOpt_DropMember,
    PR_SockOpt_McastInterface,
    PR_SockOpt_McastTimeToLive,
    PR_SockOpt_McastLoopback,
    PR_SockOpt_NoDelay,
    PR_SockOpt_MaxSegment,
    PR_SockOpt_Broadcast,
    PR_SockOpt_Last,
}

//C     typedef struct PRLinger {
//C     	PRBool polarity;		    /* Polarity of the option's setting */
//C     	PRIntervalTime linger;	    /* Time to linger before closing */
//C     } PRLinger;
struct PRLinger
{
    PRBool polarity;
    PRIntervalTime linger;
}

//C     typedef struct PRMcastRequest {
//C     	PRNetAddr mcaddr;			/* IP multicast address of group */
//C     	PRNetAddr ifaddr;			/* local IP address of interface */
//C     } PRMcastRequest;
struct PRMcastRequest
{
    PRNetAddr mcaddr;
    PRNetAddr ifaddr;
}

//C     typedef struct PRSocketOptionData
//C     {
//C         PRSockOption option;
//C         union
//C         {
//C             PRUintn ip_ttl;             /* IP time to live */
//C             PRUintn mcast_ttl;          /* IP multicast time to live */
//C             PRUintn tos;                /* IP type of service and precedence */
//C             PRBool non_blocking;        /* Non-blocking (network) I/O */
//C             PRBool reuse_addr;          /* Allow local address reuse */
//C             PRBool keep_alive;          /* Keep connections alive */
//C             PRBool mcast_loopback;      /* IP multicast loopback */
//C             PRBool no_delay;            /* Don't delay send to coalesce packets */
//C             PRBool broadcast;           /* Enable broadcast */
//C             PRSize max_segment;         /* Maximum segment size */
//C             PRSize recv_buffer_size;    /* Receive buffer size */
//C             PRSize send_buffer_size;    /* Send buffer size */
//C             PRLinger linger;            /* Time to linger on close if data present */
//C             PRMcastRequest add_member;  /* add an IP group membership */
//C             PRMcastRequest drop_member; /* Drop an IP group membership */
//C             PRNetAddr mcast_if;         /* multicast interface address */
//C         } value;
union _N6
{
    PRUintn ip_ttl;
    PRUintn mcast_ttl;
    PRUintn tos;
    PRBool non_blocking;
    PRBool reuse_addr;
    PRBool keep_alive;
    PRBool mcast_loopback;
    PRBool no_delay;
    PRBool broadcast;
    PRSize max_segment;
    PRSize recv_buffer_size;
    PRSize send_buffer_size;
    PRLinger linger;
    PRMcastRequest add_member;
    PRMcastRequest drop_member;
    PRNetAddr mcast_if;
}
//C     } PRSocketOptionData;
struct PRSocketOptionData
{
    int option;
    union _N6
    {
        PRUintn ip_ttl;
        PRUintn mcast_ttl;
        PRUintn tos;
        PRBool non_blocking;
        PRBool reuse_addr;
        PRBool keep_alive;
        PRBool mcast_loopback;
        PRBool no_delay;
        PRBool broadcast;
        PRSize max_segment;
        PRSize recv_buffer_size;
        PRSize send_buffer_size;
        PRLinger linger;
        PRMcastRequest add_member;
        PRMcastRequest drop_member;
        PRNetAddr mcast_if;
    }
    _N6 value;
}

/*
***************************************************************************
** PRIOVec
**
** The I/O vector is used by the write vector method to describe the areas
** that are affected by the ouput operation.
***************************************************************************
*/
//C     typedef struct PRIOVec {
//C         char *iov_base;
//C         int iov_len;
//C     } PRIOVec;
struct PRIOVec
{
    char *iov_base;
    int iov_len;
}

/*
***************************************************************************
** Discover what type of socket is being described by the file descriptor.
***************************************************************************
*/
//C     typedef enum PRDescType
//C     {
//C         PR_DESC_FILE = 1,
//C         PR_DESC_SOCKET_TCP = 2,
//C         PR_DESC_SOCKET_UDP = 3,
//C         PR_DESC_LAYERED = 4,
//C         PR_DESC_PIPE = 5
//C     } PRDescType;
enum PRDescType
{
    PR_DESC_FILE = 1,
    PR_DESC_SOCKET_TCP,
    PR_DESC_SOCKET_UDP,
    PR_DESC_LAYERED,
    PR_DESC_PIPE,
}

//C     typedef enum PRSeekWhence {
//C         PR_SEEK_SET = 0,
//C         PR_SEEK_CUR = 1,
//C         PR_SEEK_END = 2
//C     } PRSeekWhence;
enum PRSeekWhence
{
    PR_SEEK_SET,
    PR_SEEK_CUR,
    PR_SEEK_END,
}

//C     NSPR_API(PRDescType) PR_GetDescType(PRFileDesc *file);
int  PR_GetDescType(PRFileDesc *file);

/*
***************************************************************************
** PRIOMethods
**
** The I/O methods table provides procedural access to the functions of
** the file descriptor. It is the responsibility of a layer implementor
** to provide suitable functions at every entry point. If a layer provides
** no functionality, it should call the next lower(higher) function of the
** same name (e.g., return fd->lower->method->close(fd->lower));
**
** Not all functions are implemented for all types of files. In cases where
** that is true, the function will return a error indication with an error
** code of PR_INVALID_METHOD_ERROR.
***************************************************************************
*/

//C     typedef PRStatus (PR_CALLBACK *PRCloseFN)(PRFileDesc *fd);
alias PRStatus  function(PRFileDesc *fd)PRCloseFN;
//C     typedef PRInt32 (PR_CALLBACK *PRReadFN)(PRFileDesc *fd, void *buf, PRInt32 amount);
alias PRInt32  function(PRFileDesc *fd, void *buf, PRInt32 amount)PRReadFN;
//C     typedef PRInt32 (PR_CALLBACK *PRWriteFN)(PRFileDesc *fd, const void *buf, PRInt32 amount);
alias PRInt32  function(PRFileDesc *fd, void *buf, PRInt32 amount)PRWriteFN;
//C     typedef PRInt32 (PR_CALLBACK *PRAvailableFN)(PRFileDesc *fd);
alias PRInt32  function(PRFileDesc *fd)PRAvailableFN;
//C     typedef PRInt64 (PR_CALLBACK *PRAvailable64FN)(PRFileDesc *fd);
alias PRInt64  function(PRFileDesc *fd)PRAvailable64FN;
//C     typedef PRStatus (PR_CALLBACK *PRFsyncFN)(PRFileDesc *fd);
alias PRStatus  function(PRFileDesc *fd)PRFsyncFN;
//C     typedef PROffset32 (PR_CALLBACK *PRSeekFN)(PRFileDesc *fd, PROffset32 offset, PRSeekWhence how);
alias PROffset32  function(PRFileDesc *fd, PROffset32 offset, int how)PRSeekFN;
//C     typedef PROffset64 (PR_CALLBACK *PRSeek64FN)(PRFileDesc *fd, PROffset64 offset, PRSeekWhence how);
alias PROffset64  function(PRFileDesc *fd, PROffset64 offset, int how)PRSeek64FN;
//C     typedef PRStatus (PR_CALLBACK *PRFileInfoFN)(PRFileDesc *fd, PRFileInfo *info);
alias PRStatus  function(PRFileDesc *fd, PRFileInfo *info)PRFileInfoFN;
//C     typedef PRStatus (PR_CALLBACK *PRFileInfo64FN)(PRFileDesc *fd, PRFileInfo64 *info);
alias PRStatus  function(PRFileDesc *fd, PRFileInfo64 *info)PRFileInfo64FN;
//C     typedef PRInt32 (PR_CALLBACK *PRWritevFN)(
//C         PRFileDesc *fd, const PRIOVec *iov, PRInt32 iov_size,
//C         PRIntervalTime timeout);
alias PRInt32  function(PRFileDesc *fd, PRIOVec *iov, PRInt32 iov_size, PRIntervalTime timeout)PRWritevFN;
//C     typedef PRStatus (PR_CALLBACK *PRConnectFN)(
//C         PRFileDesc *fd, const PRNetAddr *addr, PRIntervalTime timeout);
alias PRStatus  function(PRFileDesc *fd, PRNetAddr *addr, PRIntervalTime timeout)PRConnectFN;
//C     typedef PRFileDesc* (PR_CALLBACK *PRAcceptFN) (
//C         PRFileDesc *fd, PRNetAddr *addr, PRIntervalTime timeout);
alias PRFileDesc * function(PRFileDesc *fd, PRNetAddr *addr, PRIntervalTime timeout)PRAcceptFN;
//C     typedef PRStatus (PR_CALLBACK *PRBindFN)(PRFileDesc *fd, const PRNetAddr *addr);
alias PRStatus  function(PRFileDesc *fd, PRNetAddr *addr)PRBindFN;
//C     typedef PRStatus (PR_CALLBACK *PRListenFN)(PRFileDesc *fd, PRIntn backlog);
alias PRStatus  function(PRFileDesc *fd, PRIntn backlog)PRListenFN;
//C     typedef PRStatus (PR_CALLBACK *PRShutdownFN)(PRFileDesc *fd, PRIntn how);
alias PRStatus  function(PRFileDesc *fd, PRIntn how)PRShutdownFN;
//C     typedef PRInt32 (PR_CALLBACK *PRRecvFN)(
//C         PRFileDesc *fd, void *buf, PRInt32 amount,
//C         PRIntn flags, PRIntervalTime timeout);
alias PRInt32  function(PRFileDesc *fd, void *buf, PRInt32 amount, PRIntn flags, PRIntervalTime timeout)PRRecvFN;
//C     typedef PRInt32 (PR_CALLBACK *PRSendFN) (
//C         PRFileDesc *fd, const void *buf, PRInt32 amount,
//C         PRIntn flags, PRIntervalTime timeout);
alias PRInt32  function(PRFileDesc *fd, void *buf, PRInt32 amount, PRIntn flags, PRIntervalTime timeout)PRSendFN;
//C     typedef PRInt32 (PR_CALLBACK *PRRecvfromFN)(
//C         PRFileDesc *fd, void *buf, PRInt32 amount,
//C         PRIntn flags, PRNetAddr *addr, PRIntervalTime timeout);
alias PRInt32  function(PRFileDesc *fd, void *buf, PRInt32 amount, PRIntn flags, PRNetAddr *addr, PRIntervalTime timeout)PRRecvfromFN;
//C     typedef PRInt32 (PR_CALLBACK *PRSendtoFN)(
//C         PRFileDesc *fd, const void *buf, PRInt32 amount,
//C         PRIntn flags, const PRNetAddr *addr, PRIntervalTime timeout);
alias PRInt32  function(PRFileDesc *fd, void *buf, PRInt32 amount, PRIntn flags, PRNetAddr *addr, PRIntervalTime timeout)PRSendtoFN;
//C     typedef PRInt16 (PR_CALLBACK *PRPollFN)(
//C         PRFileDesc *fd, PRInt16 in_flags, PRInt16 *out_flags);
alias PRInt16  function(PRFileDesc *fd, PRInt16 in_flags, PRInt16 *out_flags)PRPollFN;
//C     typedef PRInt32 (PR_CALLBACK *PRAcceptreadFN)(
//C         PRFileDesc *sd, PRFileDesc **nd, PRNetAddr **raddr,
//C         void *buf, PRInt32 amount, PRIntervalTime t);
alias PRInt32  function(PRFileDesc *sd, PRFileDesc **nd, PRNetAddr **raddr, void *buf, PRInt32 amount, PRIntervalTime t)PRAcceptreadFN;
//C     typedef PRInt32 (PR_CALLBACK *PRTransmitfileFN)(
//C          PRFileDesc *sd, PRFileDesc *fd, const void *headers,
//C          PRInt32 hlen, PRTransmitFileFlags flags, PRIntervalTime t);
alias PRInt32  function(PRFileDesc *sd, PRFileDesc *fd, void *headers, PRInt32 hlen, int flags, PRIntervalTime t)PRTransmitfileFN;
//C     typedef PRStatus (PR_CALLBACK *PRGetsocknameFN)(PRFileDesc *fd, PRNetAddr *addr);
alias PRStatus  function(PRFileDesc *fd, PRNetAddr *addr)PRGetsocknameFN;
//C     typedef PRStatus (PR_CALLBACK *PRGetpeernameFN)(PRFileDesc *fd, PRNetAddr *addr);
alias PRStatus  function(PRFileDesc *fd, PRNetAddr *addr)PRGetpeernameFN;
//C     typedef PRStatus (PR_CALLBACK *PRGetsocketoptionFN)(
//C         PRFileDesc *fd, PRSocketOptionData *data);
alias PRStatus  function(PRFileDesc *fd, PRSocketOptionData *data)PRGetsocketoptionFN;
//C     typedef PRStatus (PR_CALLBACK *PRSetsocketoptionFN)(
//C         PRFileDesc *fd, const PRSocketOptionData *data);
alias PRStatus  function(PRFileDesc *fd, PRSocketOptionData *data)PRSetsocketoptionFN;
//C     typedef PRInt32 (PR_CALLBACK *PRSendfileFN)(
//C     	PRFileDesc *networkSocket, PRSendFileData *sendData,
//C     	PRTransmitFileFlags flags, PRIntervalTime timeout);
alias PRInt32  function(PRFileDesc *networkSocket, PRSendFileData *sendData, int flags, PRIntervalTime timeout)PRSendfileFN;
//C     typedef PRStatus (PR_CALLBACK *PRConnectcontinueFN)(
//C         PRFileDesc *fd, PRInt16 out_flags);
alias PRStatus  function(PRFileDesc *fd, PRInt16 out_flags)PRConnectcontinueFN;
//C     typedef PRIntn (PR_CALLBACK *PRReservedFN)(PRFileDesc *fd);
alias PRIntn  function(PRFileDesc *fd)PRReservedFN;

//C     struct PRIOMethods {
//C         PRDescType file_type;           /* Type of file represented (tos)           */
//C         PRCloseFN close;                /* close file and destroy descriptor        */
//C         PRReadFN read;                  /* read up to specified bytes into buffer   */
//C         PRWriteFN write;                /* write specified bytes from buffer        */
//C         PRAvailableFN available;        /* determine number of bytes available      */
//C         PRAvailable64FN available64;    /*          ditto, 64 bit                   */
//C         PRFsyncFN fsync;                /* flush all buffers to permanent store     */
//C         PRSeekFN seek;                  /* position the file to the desired place   */
//C         PRSeek64FN seek64;              /*           ditto, 64 bit                  */
//C         PRFileInfoFN fileInfo;          /* Get information about an open file       */
//C         PRFileInfo64FN fileInfo64;      /*           ditto, 64 bit                  */
//C         PRWritevFN writev;              /* Write segments as described by iovector  */
//C         PRConnectFN connect;            /* Connect to the specified (net) address   */
//C         PRAcceptFN accept;              /* Accept a connection for a (net) peer     */
//C         PRBindFN bind;                  /* Associate a (net) address with the fd    */
//C         PRListenFN listen;              /* Prepare to listen for (net) connections  */
//C         PRShutdownFN shutdown;          /* Shutdown a (net) connection              */
//C         PRRecvFN recv;                  /* Solicit up the the specified bytes       */
//C         PRSendFN send;                  /* Send all the bytes specified             */
//C         PRRecvfromFN recvfrom;          /* Solicit (net) bytes and report source    */
//C         PRSendtoFN sendto;              /* Send bytes to (net) address specified    */
//C         PRPollFN poll;                  /* Test the fd to see if it is ready        */
//C         PRAcceptreadFN acceptread;      /* Accept and read on a new (net) fd        */
//C         PRTransmitfileFN transmitfile;  /* Transmit at entire file                  */
//C         PRGetsocknameFN getsockname;    /* Get (net) address associated with fd     */
//C         PRGetpeernameFN getpeername;    /* Get peer's (net) address                 */
//C         PRReservedFN reserved_fn_6;     /* reserved for future use */
//C         PRReservedFN reserved_fn_5;     /* reserved for future use */
//C         PRGetsocketoptionFN getsocketoption;
                                    /* Get current setting of specified option  */
//C         PRSetsocketoptionFN setsocketoption;
                                    /* Set value of specified option            */
//C         PRSendfileFN sendfile;			/* Send a (partial) file with header/trailer*/
//C         PRConnectcontinueFN connectcontinue;
                                    /* Continue a nonblocking connect */
//C         PRReservedFN reserved_fn_3;		/* reserved for future use */
//C         PRReservedFN reserved_fn_2;		/* reserved for future use */
//C         PRReservedFN reserved_fn_1;		/* reserved for future use */
//C         PRReservedFN reserved_fn_0;		/* reserved for future use */
//C     };
struct PRIOMethods
{
    int file_type;
    PRCloseFN close;
    PRReadFN read;
    PRWriteFN write;
    PRAvailableFN available;
    PRAvailable64FN available64;
    PRFsyncFN fsync;
    PRSeekFN seek;
    PRSeek64FN seek64;
    PRFileInfoFN fileInfo;
    PRFileInfo64FN fileInfo64;
    PRWritevFN writev;
    PRConnectFN connect;
    PRAcceptFN accept;
    PRBindFN bind;
    PRListenFN listen;
    PRShutdownFN shutdown;
    PRRecvFN recv;
    PRSendFN send;
    PRRecvfromFN recvfrom;
    PRSendtoFN sendto;
    PRPollFN poll;
    PRAcceptreadFN acceptread;
    PRTransmitfileFN transmitfile;
    PRGetsocknameFN getsockname;
    PRGetpeernameFN getpeername;
    PRReservedFN reserved_fn_6;
    PRReservedFN reserved_fn_5;
    PRGetsocketoptionFN getsocketoption;
    PRSetsocketoptionFN setsocketoption;
    PRSendfileFN sendfile;
    PRConnectcontinueFN connectcontinue;
    PRReservedFN reserved_fn_3;
    PRReservedFN reserved_fn_2;
    PRReservedFN reserved_fn_1;
    PRReservedFN reserved_fn_0;
}

/*
 **************************************************************************
 * FUNCTION: PR_GetSpecialFD
 * DESCRIPTION: Get the file descriptor that represents the standard input,
 *              output, or error stream.
 * INPUTS:
 *     PRSpecialFD id
 *         A value indicating the type of stream desired:
 *             PR_StandardInput: standard input
 *             PR_StandardOuput: standard output
 *             PR_StandardError: standard error
 * OUTPUTS: none
 * RETURNS: PRFileDesc *
 *     If the argument is valid, PR_GetSpecialFD returns a file descriptor
 *     that represents the corresponding standard I/O stream.  Otherwise,
 *     PR_GetSpecialFD returns NULL and sets error PR_INVALID_ARGUMENT_ERROR.
 **************************************************************************
 */

//C     typedef enum PRSpecialFD
//C     {
//C         PR_StandardInput,          /* standard input */
//C         PR_StandardOutput,         /* standard output */
//C         PR_StandardError           /* standard error */
//C     } PRSpecialFD;
enum PRSpecialFD
{
    PR_StandardInput,
    PR_StandardOutput,
    PR_StandardError,
}

//C     NSPR_API(PRFileDesc*) PR_GetSpecialFD(PRSpecialFD id);
PRFileDesc * PR_GetSpecialFD(int id);

//C     #define PR_STDIN	PR_GetSpecialFD(PR_StandardInput)
//C     #define PR_STDOUT	PR_GetSpecialFD(PR_StandardOutput)
//C     #define PR_STDERR	PR_GetSpecialFD(PR_StandardError)

/*
 **************************************************************************
 * Layering file descriptors
 *
 * File descriptors may be layered. Each layer has it's own identity.
 * Identities are allocated by the runtime and are to be associated
 * (by the layer implementor) with all layers that are of that type.
 * It is then possible to scan the chain of layers and find a layer
 * that one recongizes and therefore predict that it will implement
 * a desired protocol.
 *
 * There are three well-known identities:
 *      PR_INVALID_IO_LAYER => an invalid layer identity, for error return
 *      PR_TOP_IO_LAYER     => the identity of the top of the stack
 *      PR_NSPR_IO_LAYER    => the identity used by NSPR proper
 * PR_TOP_IO_LAYER may be used as a shorthand for identifying the topmost
 * layer of an existing stack. Ie., the following two constructs are
 * equivalent.
 *
 *      rv = PR_PushIOLayer(stack, PR_TOP_IO_LAYER, my_layer);
 *      rv = PR_PushIOLayer(stack, PR_GetLayersIdentity(stack), my_layer)
 *
 * A string may be associated with the creation of the identity. It
 * will be copied by the runtime. If queried the runtime will return
 * a reference to that copied string (not yet another copy). There
 * is no facility for deleting an identity.
 **************************************************************************
 */

//C     #define PR_IO_LAYER_HEAD (PRDescIdentity)-3
//C     #define PR_INVALID_IO_LAYER (PRDescIdentity)-1
//C     #define PR_TOP_IO_LAYER (PRDescIdentity)-2
//C     #define PR_NSPR_IO_LAYER (PRDescIdentity)0

//C     NSPR_API(PRDescIdentity) PR_GetUniqueIdentity(const char *layer_name);
PRDescIdentity  PR_GetUniqueIdentity(char *layer_name);
//C     NSPR_API(const char*) PR_GetNameForIdentity(PRDescIdentity ident);
char * PR_GetNameForIdentity(PRDescIdentity ident);
//C     NSPR_API(PRDescIdentity) PR_GetLayersIdentity(PRFileDesc* fd);
PRDescIdentity  PR_GetLayersIdentity(PRFileDesc *fd);
//C     NSPR_API(PRFileDesc*) PR_GetIdentitiesLayer(PRFileDesc* fd_stack, PRDescIdentity id);
PRFileDesc * PR_GetIdentitiesLayer(PRFileDesc *fd_stack, PRDescIdentity id);

/*
 **************************************************************************
 * PR_GetDefaultIOMethods: Accessing the default methods table.
 * You may get a pointer to the default methods table by calling this function.
 * You may then select any elements from that table with which to build your
 * layer's methods table. You may NOT modify the table directly.
 **************************************************************************
 */
//C     NSPR_API(const PRIOMethods *) PR_GetDefaultIOMethods(void);
PRIOMethods * PR_GetDefaultIOMethods();

/*
 **************************************************************************
 * Creating a layer
 *
 * A new layer may be allocated by calling PR_CreateIOLayerStub(). The
 * file descriptor returned will contain the pointer to the methods table
 * provided. The runtime will not modify the table nor test its correctness.
 **************************************************************************
 */
//C     NSPR_API(PRFileDesc*) PR_CreateIOLayerStub(
//C         PRDescIdentity ident, const PRIOMethods *methods);
PRFileDesc * PR_CreateIOLayerStub(PRDescIdentity ident, PRIOMethods *methods);

/*
 **************************************************************************
 * Creating a layer
 *
 * A new stack may be created by calling PR_CreateIOLayer(). The
 * file descriptor returned will point to the top of the stack, which has
 * the layer 'fd' as the topmost layer.
 * 
 * NOTE: This function creates a new style stack, which has a fixed, dummy
 * header. The old style stack, created by a call to PR_PushIOLayer,
 * results in modifying contents of the top layer of the stack, when
 * pushing and popping layers of the stack.
 **************************************************************************
 */
//C     NSPR_API(PRFileDesc*) PR_CreateIOLayer(PRFileDesc* fd);
PRFileDesc * PR_CreateIOLayer(PRFileDesc *fd);

/*
 **************************************************************************
 * Pushing a layer
 *
 * A file descriptor (perhaps allocated using PR_CreateIOLayerStub()) may
 * be pushed into an existing stack of file descriptors at any point the
 * caller deems appropriate. The new layer will be inserted into the stack
 * just above the layer with the indicated identity.
 *
 * Note: Even if the identity parameter indicates the top-most layer of
 * the stack, the value of the file descriptor describing the original
 * stack will not change.
 **************************************************************************
 */
//C     NSPR_API(PRStatus) PR_PushIOLayer(
//C         PRFileDesc *fd_stack, PRDescIdentity id, PRFileDesc *layer);
PRStatus  PR_PushIOLayer(PRFileDesc *fd_stack, PRDescIdentity id, PRFileDesc *layer);

/*
 **************************************************************************
 * Popping a layer
 *
 * A layer may be popped from a stack by indicating the identity of the
 * layer to be removed. If found, a pointer to the removed object will
 * be returned to the caller. The object then becomes the responsibility
 * of the caller.
 *
 * Note: Even if the identity indicates the top layer of the stack, the
 * reference returned will not be the file descriptor for the stack and
 * that file descriptor will remain valid.
 **************************************************************************
 */
//C     NSPR_API(PRFileDesc*) PR_PopIOLayer(PRFileDesc *fd_stack, PRDescIdentity id);
PRFileDesc * PR_PopIOLayer(PRFileDesc *fd_stack, PRDescIdentity id);

/*
 **************************************************************************
 * FUNCTION:    PR_Open
 * DESCRIPTION:    Open a file for reading, writing, or both.
 * INPUTS:
 *     const char *name
 *         The path name of the file to be opened
 *     PRIntn flags
 *         The file status flags.
 *         It is a bitwise OR of the following bit flags (only one of
 *         the first three flags below may be used):
 *		PR_RDONLY        Open for reading only.
 *		PR_WRONLY        Open for writing only.
 *		PR_RDWR          Open for reading and writing.
 *		PR_CREATE_FILE   If the file does not exist, the file is created
 *                              If the file exists, this flag has no effect.
 *      PR_SYNC          If set, each write will wait for both the file data
 *                              and file status to be physically updated.
 *		PR_APPEND        The file pointer is set to the end of
 *                              the file prior to each write.
 *		PR_TRUNCATE      If the file exists, its length is truncated to 0.
 *      PR_EXCL          With PR_CREATE_FILE, if the file does not exist,
 *                              the file is created. If the file already 
 *                              exists, no action and NULL is returned
 *
 *     PRIntn mode
 *         The access permission bits of the file mode, if the file is
 *         created when PR_CREATE_FILE is on.
 * OUTPUTS:    None
 * RETURNS:    PRFileDesc *
 *     If the file is successfully opened,
 *     returns a pointer to the PRFileDesc
 *     created for the newly opened file.
 *     Returns a NULL pointer if the open
 *     failed.
 * SIDE EFFECTS:
 * RESTRICTIONS:
 * MEMORY:
 *     The return value, if not NULL, points to a dynamically allocated
 *     PRFileDesc object.
 * ALGORITHM:
 **************************************************************************
 */

/* Open flags */
//C     #define PR_RDONLY       0x01
//C     #define PR_WRONLY       0x02
const PR_RDONLY = 0x01;
//C     #define PR_RDWR         0x04
const PR_WRONLY = 0x02;
//C     #define PR_CREATE_FILE  0x08
const PR_RDWR = 0x04;
//C     #define PR_APPEND       0x10
const PR_CREATE_FILE = 0x08;
//C     #define PR_TRUNCATE     0x20
const PR_APPEND = 0x10;
//C     #define PR_SYNC         0x40
const PR_TRUNCATE = 0x20;
//C     #define PR_EXCL         0x80
const PR_SYNC = 0x40;

const PR_EXCL = 0x80;
/*
** File modes ....
**
** CAVEAT: 'mode' is currently only applicable on UNIX platforms.
** The 'mode' argument may be ignored by PR_Open on other platforms.
**
**   00400   Read by owner.
**   00200   Write by owner.
**   00100   Execute (search if a directory) by owner.
**   00040   Read by group.
**   00020   Write by group.
**   00010   Execute by group.
**   00004   Read by others.
**   00002   Write by others
**   00001   Execute by others.
**
*/

//C     NSPR_API(PRFileDesc*) PR_Open(const char *name, PRIntn flags, PRIntn mode);
PRFileDesc * PR_Open(char *name, PRIntn flags, PRIntn mode);

/*
 **************************************************************************
 * FUNCTION: PR_OpenFile
 * DESCRIPTION:
 *     Open a file for reading, writing, or both.
 *     PR_OpenFile has the same prototype as PR_Open but implements
 *     the specified file mode where possible.
 **************************************************************************
 */

/* File mode bits */
//C     #define PR_IRWXU 00700  /* read, write, execute/search by owner */
//C     #define PR_IRUSR 00400  /* read permission, owner */
const PR_IRWXU = 00700;
//C     #define PR_IWUSR 00200  /* write permission, owner */
const PR_IRUSR = 00400;
//C     #define PR_IXUSR 00100  /* execute/search permission, owner */
const PR_IWUSR = 00200;
//C     #define PR_IRWXG 00070  /* read, write, execute/search by group */
const PR_IXUSR = 00100;
//C     #define PR_IRGRP 00040  /* read permission, group */
const PR_IRWXG = 00070;
//C     #define PR_IWGRP 00020  /* write permission, group */
const PR_IRGRP = 00040;
//C     #define PR_IXGRP 00010  /* execute/search permission, group */
const PR_IWGRP = 00020;
//C     #define PR_IRWXO 00007  /* read, write, execute/search by others */
const PR_IXGRP = 00010;
//C     #define PR_IROTH 00004  /* read permission, others */
const PR_IRWXO = 00007;
//C     #define PR_IWOTH 00002  /* write permission, others */
const PR_IROTH = 00004;
//C     #define PR_IXOTH 00001  /* execute/search permission, others */
const PR_IWOTH = 00002;

const PR_IXOTH = 00001;
//C     NSPR_API(PRFileDesc*) PR_OpenFile(
//C         const char *name, PRIntn flags, PRIntn mode);
PRFileDesc * PR_OpenFile(char *name, PRIntn flags, PRIntn mode);

//C     #ifdef MOZ_UNICODE
/*
 * EXPERIMENTAL: This function may be removed in a future release.
 */
//C     NSPR_API(PRFileDesc*) PR_OpenFileUTF16(
//C         const PRUnichar *name, PRIntn flags, PRIntn mode);
//C     #endif /* MOZ_UNICODE */

/*
 **************************************************************************
 * FUNCTION: PR_Close
 * DESCRIPTION:
 *     Close a file or socket.
 * INPUTS:
 *     PRFileDesc *fd
 *         a pointer to a PRFileDesc.
 * OUTPUTS:
 *     None.
 * RETURN:
 *     PRStatus
 * SIDE EFFECTS:
 * RESTRICTIONS:
 *     None.
 * MEMORY:
 *     The dynamic memory pointed to by the argument fd is freed.
 **************************************************************************
 */

//C     NSPR_API(PRStatus)    PR_Close(PRFileDesc *fd);
PRStatus  PR_Close(PRFileDesc *fd);

/*
 **************************************************************************
 * FUNCTION: PR_Read
 * DESCRIPTION:
 *     Read bytes from a file or socket.
 *     The operation will block until either an end of stream indication is
 *     encountered, some positive number of bytes are transferred, or there
 *     is an error. No more than 'amount' bytes will be transferred.
 * INPUTS:
 *     PRFileDesc *fd
 *         pointer to the PRFileDesc object for the file or socket
 *     void *buf
 *         pointer to a buffer to hold the data read in.
 *     PRInt32 amount
 *         the size of 'buf' (in bytes)
 * OUTPUTS:
 * RETURN:
 *     PRInt32
 *         a positive number indicates the number of bytes actually read in.
 *         0 means end of file is reached or the network connection is closed.
 *         -1 indicates a failure. The reason for the failure is obtained
 *         by calling PR_GetError().
 * SIDE EFFECTS:
 *     data is written into the buffer pointed to by 'buf'.
 * RESTRICTIONS:
 *     None.
 * MEMORY:
 *     N/A
 * ALGORITHM:
 *     N/A
 **************************************************************************
 */

//C     NSPR_API(PRInt32) PR_Read(PRFileDesc *fd, void *buf, PRInt32 amount);
PRInt32  PR_Read(PRFileDesc *fd, void *buf, PRInt32 amount);

/*
 ***************************************************************************
 * FUNCTION: PR_Write
 * DESCRIPTION:
 *     Write a specified number of bytes to a file or socket.  The thread
 *     invoking this function blocks until all the data is written.
 * INPUTS:
 *     PRFileDesc *fd
 *         pointer to a PRFileDesc object that refers to a file or socket
 *     const void *buf
 *         pointer to the buffer holding the data
 *     PRInt32 amount
 *         amount of data in bytes to be written from the buffer
 * OUTPUTS:
 *     None.
 * RETURN: PRInt32
 *     A positive number indicates the number of bytes successfully written.
 *     A -1 is an indication that the operation failed. The reason
 *     for the failure is obtained by calling PR_GetError().
 ***************************************************************************
 */

//C     NSPR_API(PRInt32) PR_Write(PRFileDesc *fd,const void *buf,PRInt32 amount);
PRInt32  PR_Write(PRFileDesc *fd, void *buf, PRInt32 amount);

/*
 ***************************************************************************
 * FUNCTION: PR_Writev
 * DESCRIPTION:
 *     Write data to a socket.  The data is organized in a PRIOVec array. The
 *     operation will block until all the data is written or the operation
 *     fails.
 * INPUTS:
 *     PRFileDesc *fd
 *         Pointer that points to a PRFileDesc object for a socket.
 *     const PRIOVec *iov
 *         An array of PRIOVec.  PRIOVec is a struct with the following
 *         two fields:
 *             char *iov_base;
 *             int iov_len;
 *     PRInt32 iov_size
 *         Number of elements in the iov array. The value of this
 *         argument must not be greater than PR_MAX_IOVECTOR_SIZE.
 *         If it is, the method will fail (PR_BUFFER_OVERFLOW_ERROR).
 *     PRIntervalTime timeout
 *       Time limit for completion of the entire write operation.
 * OUTPUTS:
 *     None
 * RETURN:
 *     A positive number indicates the number of bytes successfully written.
 *     A -1 is an indication that the operation failed. The reason
 *     for the failure is obtained by calling PR_GetError().
 ***************************************************************************
 */

//C     #define PR_MAX_IOVECTOR_SIZE 16   /* 'iov_size' must be <= */

const PR_MAX_IOVECTOR_SIZE = 16;
//C     NSPR_API(PRInt32) PR_Writev(
//C         PRFileDesc *fd, const PRIOVec *iov, PRInt32 iov_size,
//C         PRIntervalTime timeout);
PRInt32  PR_Writev(PRFileDesc *fd, PRIOVec *iov, PRInt32 iov_size, PRIntervalTime timeout);

/*
 ***************************************************************************
 * FUNCTION: PR_Delete
 * DESCRIPTION:
 *     Delete a file from the filesystem. The operation may fail if the
 *     file is open.
 * INPUTS:
 *     const char *name
 *         Path name of the file to be deleted.
 * OUTPUTS:
 *     None.
 * RETURN: PRStatus
 *     The function returns PR_SUCCESS if the file is successfully
 *     deleted, otherwise it returns PR_FAILURE.
 ***************************************************************************
 */

//C     NSPR_API(PRStatus) PR_Delete(const char *name);
PRStatus  PR_Delete(char *name);

/**************************************************************************/

//C     typedef enum PRFileType
//C     {
//C         PR_FILE_FILE = 1,
//C         PR_FILE_DIRECTORY = 2,
//C         PR_FILE_OTHER = 3
//C     } PRFileType;
enum PRFileType
{
    PR_FILE_FILE = 1,
    PR_FILE_DIRECTORY,
    PR_FILE_OTHER,
}

//C     struct PRFileInfo {
//C         PRFileType type;        /* Type of file */
//C         PROffset32 size;        /* Size, in bytes, of file's contents */
//C         PRTime creationTime;    /* Creation time per definition of PRTime */
//C         PRTime modifyTime;      /* Last modification time per definition of PRTime */
//C     };
struct PRFileInfo
{
    int type;
    PROffset32 size;
    PRTime creationTime;
    PRTime modifyTime;
}

//C     struct PRFileInfo64 {
//C         PRFileType type;        /* Type of file */
//C         PROffset64 size;        /* Size, in bytes, of file's contents */
//C         PRTime creationTime;    /* Creation time per definition of PRTime */
//C         PRTime modifyTime;      /* Last modification time per definition of PRTime */
//C     };
struct PRFileInfo64
{
    int type;
    PROffset64 size;
    PRTime creationTime;
    PRTime modifyTime;
}

/****************************************************************************
 * FUNCTION: PR_GetFileInfo, PR_GetFileInfo64
 * DESCRIPTION:
 *     Get the information about the file with the given path name. This is
 *     applicable only to NSFileDesc describing 'file' types (see
 * INPUTS:
 *     const char *fn
 *         path name of the file
 * OUTPUTS:
 *     PRFileInfo *info
 *         Information about the given file is written into the file
 *         information object pointer to by 'info'.
 * RETURN: PRStatus
 *     PR_GetFileInfo returns PR_SUCCESS if file information is successfully
 *     obtained, otherwise it returns PR_FAILURE.
 ***************************************************************************
 */

//C     NSPR_API(PRStatus) PR_GetFileInfo(const char *fn, PRFileInfo *info);
PRStatus  PR_GetFileInfo(char *fn, PRFileInfo *info);
//C     NSPR_API(PRStatus) PR_GetFileInfo64(const char *fn, PRFileInfo64 *info);
PRStatus  PR_GetFileInfo64(char *fn, PRFileInfo64 *info);

//C     #ifdef MOZ_UNICODE
/*
 * EXPERIMENTAL: This function may be removed in a future release.
 */
//C     NSPR_API(PRStatus) PR_GetFileInfo64UTF16(const PRUnichar *fn, PRFileInfo64 *info);
//C     #endif /* MOZ_UNICODE */

/*
 **************************************************************************
 * FUNCTION: PR_GetOpenFileInfo, PR_GetOpenFileInfo64
 * DESCRIPTION:
 *     Get information about an open file referred to by the
 *     given PRFileDesc object.
 * INPUTS:
 *     const PRFileDesc *fd
 *          A reference to a valid, open file.
 * OUTPUTS:
 *     Same as PR_GetFileInfo, PR_GetFileInfo64
 * RETURN: PRStatus
 *     PR_GetFileInfo returns PR_SUCCESS if file information is successfully
 *     obtained, otherwise it returns PR_FAILURE.
 ***************************************************************************
 */

//C     NSPR_API(PRStatus) PR_GetOpenFileInfo(PRFileDesc *fd, PRFileInfo *info);
PRStatus  PR_GetOpenFileInfo(PRFileDesc *fd, PRFileInfo *info);
//C     NSPR_API(PRStatus) PR_GetOpenFileInfo64(PRFileDesc *fd, PRFileInfo64 *info);
PRStatus  PR_GetOpenFileInfo64(PRFileDesc *fd, PRFileInfo64 *info);

/*
 **************************************************************************
 * FUNCTION: PR_Rename
 * DESCRIPTION:
 *     Rename a file from the old name 'from' to the new name 'to'.
 * INPUTS:
 *     const char *from
 *         The old name of the file to be renamed.
 *     const char *to
 *         The new name of the file.
 * OUTPUTS:
 *     None.
 * RETURN: PRStatus
 **************************************************************************
 */

//C     NSPR_API(PRStatus)    PR_Rename(const char *from, const char *to);
PRStatus  PR_Rename(char *from, char *to);

/*
 *************************************************************************
 * FUNCTION: PR_Access
 * DESCRIPTION:
 *     Determine accessibility of a file.
 * INPUTS:
 *     const char *name
 *         path name of the file
 *     PRAccessHow how
 *         specifies which access permission to check for.
 *         It can be one of the following values:
 *             PR_ACCESS_READ_OK       Test for read permission
 *             PR_ACCESS_WRITE_OK      Test for write permission
 *             PR_ACCESS_EXISTS        Check existence of file
 * OUTPUTS:
 *     None.
 * RETURN: PRStatus
 *     PR_SUCCESS is returned if the requested access is permitted.
 *     Otherwise, PR_FAILURE is returned. Additional information
 *     regarding the reason for the failure may be retrieved from
 *     PR_GetError().
 *************************************************************************
 */

//C     typedef enum PRAccessHow {
//C         PR_ACCESS_EXISTS = 1,
//C         PR_ACCESS_WRITE_OK = 2,
//C         PR_ACCESS_READ_OK = 3
//C     } PRAccessHow;
enum PRAccessHow
{
    PR_ACCESS_EXISTS = 1,
    PR_ACCESS_WRITE_OK,
    PR_ACCESS_READ_OK,
}

//C     NSPR_API(PRStatus) PR_Access(const char *name, PRAccessHow how);
PRStatus  PR_Access(char *name, int how);

/*
 *************************************************************************
 * FUNCTION: PR_Seek, PR_Seek64
 * DESCRIPTION:
 *     Moves read-write file offset
 * INPUTS:
 *     PRFileDesc *fd
 *         Pointer to a PRFileDesc object.
 *     PROffset32, PROffset64 offset
 *         Specifies a value, in bytes, that is used in conjunction
 *         with the 'whence' parameter to set the file pointer.  A
 *         negative value causes seeking in the reverse direction.
 *     PRSeekWhence whence
 *         Specifies how to interpret the 'offset' parameter in setting
 *         the file pointer associated with the 'fd' parameter.
 *         Values for the 'whence' parameter are:
 *             PR_SEEK_SET  Sets the file pointer to the value of the
 *                          'offset' parameter
 *             PR_SEEK_CUR  Sets the file pointer to its current location
 *                          plus the value of the offset parameter.
 *             PR_SEEK_END  Sets the file pointer to the size of the
 *                          file plus the value of the offset parameter.
 * OUTPUTS:
 *     None.
 * RETURN: PROffset32, PROffset64
 *     Upon successful completion, the resulting pointer location,
 *     measured in bytes from the beginning of the file, is returned.
 *     If the PR_Seek() function fails, the file offset remains
 *     unchanged, and the returned value is -1. The error code can
 *     then be retrieved via PR_GetError().
 *************************************************************************
 */

//C     NSPR_API(PROffset32) PR_Seek(PRFileDesc *fd, PROffset32 offset, PRSeekWhence whence);
PROffset32  PR_Seek(PRFileDesc *fd, PROffset32 offset, int whence);
//C     NSPR_API(PROffset64) PR_Seek64(PRFileDesc *fd, PROffset64 offset, PRSeekWhence whence);
PROffset64  PR_Seek64(PRFileDesc *fd, PROffset64 offset, int whence);

/*
 ************************************************************************
 * FUNCTION: PR_Available
 * DESCRIPTION:
 *     Determine the amount of data in bytes available for reading
 *     in the given file or socket.
 * INPUTS:
 *     PRFileDesc *fd
 *         Pointer to a PRFileDesc object that refers to a file or
 *         socket.
 * OUTPUTS:
 *     None
 * RETURN: PRInt32, PRInt64
 *     Upon successful completion, PR_Available returns the number of
 *     bytes beyond the current read pointer that is available for
 *     reading.  Otherwise, it returns a -1 and the reason for the
 *     failure can be retrieved via PR_GetError().
 ************************************************************************
 */

//C     NSPR_API(PRInt32) PR_Available(PRFileDesc *fd);
PRInt32  PR_Available(PRFileDesc *fd);
//C     NSPR_API(PRInt64) PR_Available64(PRFileDesc *fd);
PRInt64  PR_Available64(PRFileDesc *fd);

/*
 ************************************************************************
 * FUNCTION: PR_Sync
 * DESCRIPTION:
 *     Sync any buffered data for a fd to its backing device (disk).
 * INPUTS:
 *     PRFileDesc *fd
 *         Pointer to a PRFileDesc object that refers to a file or
 *         socket
 * OUTPUTS:
 *     None
 * RETURN: PRStatus
 *     PR_SUCCESS is returned if the requested access is permitted.
 *     Otherwise, PR_FAILURE is returned.
 ************************************************************************
 */

//C     NSPR_API(PRStatus)	PR_Sync(PRFileDesc *fd);
PRStatus  PR_Sync(PRFileDesc *fd);

/************************************************************************/

//C     struct PRDirEntry {
//C         const char *name;        /* name of entry, relative to directory name */
//C     };
struct PRDirEntry
{
    char *name;
}

//C     #ifdef MOZ_UNICODE
//C     struct PRDirEntryUTF16 {
//C         const PRUnichar *name;   
/* name of entry in UTF16, relative to
                              * directory name */
//C     };
//C     #endif /* MOZ_UNICODE */

//C     #if !defined(NO_NSPR_10_SUPPORT)
//C     #define PR_DirName(dirEntry)	(dirEntry->name)
//C     #endif

/*
 *************************************************************************
 * FUNCTION: PR_OpenDir
 * DESCRIPTION:
 *     Open the directory by the given name
 * INPUTS:
 *     const char *name
 *         path name of the directory to be opened
 * OUTPUTS:
 *     None
 * RETURN: PRDir *
 *     If the directory is sucessfully opened, a PRDir object is
 *     dynamically allocated and a pointer to it is returned.
 *     If the directory cannot be opened, a NULL pointer is returned.
 * MEMORY:
 *     Upon successful completion, the return value points to
 *     dynamically allocated memory.
 *************************************************************************
 */

//C     NSPR_API(PRDir*) PR_OpenDir(const char *name);
alias void PRDir;
PRDir * PR_OpenDir(char *name);

//C     #ifdef MOZ_UNICODE
/*
 * EXPERIMENTAL: This function may be removed in a future release.
 */
//C     NSPR_API(PRDirUTF16*) PR_OpenDirUTF16(const PRUnichar *name);
//C     #endif /* MOZ_UNICODE */

/*
 *************************************************************************
 * FUNCTION: PR_ReadDir
 * DESCRIPTION:
 * INPUTS:
 *     PRDir *dir
 *         pointer to a PRDir object that designates an open directory
 *     PRDirFlags flags
 *           PR_SKIP_NONE     Do not skip any files
 *           PR_SKIP_DOT      Skip the directory entry "." that
 *                            represents the current directory
 *           PR_SKIP_DOT_DOT  Skip the directory entry ".." that
 *                            represents the parent directory.
 *           PR_SKIP_BOTH     Skip both '.' and '..'
 *           PR_SKIP_HIDDEN   Skip hidden files
 * OUTPUTS:
 * RETURN: PRDirEntry*
 *     Returns a pointer to the next entry in the directory.  Returns
 *     a NULL pointer upon reaching the end of the directory or when an
 *     error occurs. The actual reason can be retrieved via PR_GetError().
 *************************************************************************
 */

//C     typedef enum PRDirFlags {
//C         PR_SKIP_NONE = 0x0,
//C         PR_SKIP_DOT = 0x1,
//C         PR_SKIP_DOT_DOT = 0x2,
//C         PR_SKIP_BOTH = 0x3,
//C         PR_SKIP_HIDDEN = 0x4
//C     } PRDirFlags;
enum PRDirFlags
{
    PR_SKIP_NONE,
    PR_SKIP_DOT,
    PR_SKIP_DOT_DOT,
    PR_SKIP_BOTH,
    PR_SKIP_HIDDEN,
}

//C     NSPR_API(PRDirEntry*) PR_ReadDir(PRDir *dir, PRDirFlags flags);
PRDirEntry * PR_ReadDir(PRDir *dir, int flags);

//C     #ifdef MOZ_UNICODE
/*
 * EXPERIMENTAL: This function may be removed in a future release.
 */
//C     NSPR_API(PRDirEntryUTF16*) PR_ReadDirUTF16(PRDirUTF16 *dir, PRDirFlags flags);
//C     #endif /* MOZ_UNICODE */

/*
 *************************************************************************
 * FUNCTION: PR_CloseDir
 * DESCRIPTION:
 *     Close the specified directory.
 * INPUTS:
 *     PRDir *dir
 *        The directory to be closed.
 * OUTPUTS:
 *     None
 * RETURN: PRStatus
 *        If successful, will return a status of PR_SUCCESS. Otherwise
 *        a value of PR_FAILURE. The reason for the failure may be re-
 *        trieved using PR_GetError().
 *************************************************************************
 */

//C     NSPR_API(PRStatus) PR_CloseDir(PRDir *dir);
PRStatus  PR_CloseDir(PRDir *dir);

//C     #ifdef MOZ_UNICODE
/*
 * EXPERIMENTAL: This function may be removed in a future release.
 */
//C     NSPR_API(PRStatus) PR_CloseDirUTF16(PRDirUTF16 *dir);
//C     #endif /* MOZ_UNICODE */

/*
 *************************************************************************
 * FUNCTION: PR_MkDir
 * DESCRIPTION:
 *     Create a new directory with the given name and access mode.
 * INPUTS:
 *     const char *name
 *        The name of the directory to be created. All the path components
 *        up to but not including the leaf component must already exist.
 *     PRIntn mode
 *        See 'mode' definiton in PR_Open().
 * OUTPUTS:
 *     None
 * RETURN: PRStatus
 *        If successful, will return a status of PR_SUCCESS. Otherwise
 *        a value of PR_FAILURE. The reason for the failure may be re-
 *        trieved using PR_GetError().
 *************************************************************************
 */

//C     NSPR_API(PRStatus) PR_MkDir(const char *name, PRIntn mode);
PRStatus  PR_MkDir(char *name, PRIntn mode);

/*
 *************************************************************************
 * FUNCTION: PR_MakeDir
 * DESCRIPTION:
 *     Create a new directory with the given name and access mode.
 *     PR_MakeDir has the same prototype as PR_MkDir but implements
 *     the specified access mode where possible.
 *************************************************************************
 */

//C     NSPR_API(PRStatus) PR_MakeDir(const char *name, PRIntn mode);
PRStatus  PR_MakeDir(char *name, PRIntn mode);

/*
 *************************************************************************
 * FUNCTION: PR_RmDir
 * DESCRIPTION:
 *     Remove a directory by the given name.
 * INPUTS:
 *     const char *name
 *        The name of the directory to be removed. All the path components
 *        must already exist. Only the leaf component will be removed.
 * OUTPUTS:
 *     None
 * RETURN: PRStatus
 *        If successful, will return a status of PR_SUCCESS. Otherwise
 *        a value of PR_FAILURE. The reason for the failure may be re-
 *        trieved using PR_GetError().
 **************************************************************************
 */

//C     NSPR_API(PRStatus) PR_RmDir(const char *name);
PRStatus  PR_RmDir(char *name);

/*
 *************************************************************************
 * FUNCTION: PR_NewUDPSocket
 * DESCRIPTION:
 *     Create a new UDP socket.
 * INPUTS:
 *     None
 * OUTPUTS:
 *     None
 * RETURN: PRFileDesc*
 *     Upon successful completion, PR_NewUDPSocket returns a pointer
 *     to the PRFileDesc created for the newly opened UDP socket.
 *     Returns a NULL pointer if the creation of a new UDP socket failed.
 *
 **************************************************************************
 */

//C     NSPR_API(PRFileDesc*)    PR_NewUDPSocket(void);
PRFileDesc * PR_NewUDPSocket();

/*
 *************************************************************************
 * FUNCTION: PR_NewTCPSocket
 * DESCRIPTION:
 *     Create a new TCP socket.
 * INPUTS:
 *     None
 * OUTPUTS:
 *     None
 * RETURN: PRFileDesc*
 *     Upon successful completion, PR_NewTCPSocket returns a pointer
 *     to the PRFileDesc created for the newly opened TCP socket.
 *     Returns a NULL pointer if the creation of a new TCP socket failed.
 *
 **************************************************************************
 */

//C     NSPR_API(PRFileDesc*)    PR_NewTCPSocket(void);
PRFileDesc * PR_NewTCPSocket();

/*
 *************************************************************************
 * FUNCTION: PR_OpenUDPSocket
 * DESCRIPTION:
 *     Create a new UDP socket of the specified address family.
 * INPUTS:
 *     PRIntn af
 *       Address family
 * OUTPUTS:
 *     None
 * RETURN: PRFileDesc*
 *     Upon successful completion, PR_OpenUDPSocket returns a pointer
 *     to the PRFileDesc created for the newly opened UDP socket.
 *     Returns a NULL pointer if the creation of a new UDP socket failed.
 *
 **************************************************************************
 */

//C     NSPR_API(PRFileDesc*)    PR_OpenUDPSocket(PRIntn af);
PRFileDesc * PR_OpenUDPSocket(PRIntn af);

/*
 *************************************************************************
 * FUNCTION: PR_OpenTCPSocket
 * DESCRIPTION:
 *     Create a new TCP socket of the specified address family.
 * INPUTS:
 *     PRIntn af
 *       Address family
 * OUTPUTS:
 *     None
 * RETURN: PRFileDesc*
 *     Upon successful completion, PR_NewTCPSocket returns a pointer
 *     to the PRFileDesc created for the newly opened TCP socket.
 *     Returns a NULL pointer if the creation of a new TCP socket failed.
 *
 **************************************************************************
 */

//C     NSPR_API(PRFileDesc*)    PR_OpenTCPSocket(PRIntn af);
PRFileDesc * PR_OpenTCPSocket(PRIntn af);

/*
 *************************************************************************
 * FUNCTION: PR_Connect
 * DESCRIPTION:
 *     Initiate a connection on a socket.
 * INPUTS:
 *     PRFileDesc *fd
 *       Points to a PRFileDesc object representing a socket
 *     PRNetAddr *addr
 *       Specifies the address of the socket in its own communication
 *       space.
 *     PRIntervalTime timeout
 *       Time limit for completion of the connect operation.
 * OUTPUTS:
 *     None
 * RETURN: PRStatus
 *     Upon successful completion of connection initiation, PR_Connect
 *     returns PR_SUCCESS.  Otherwise, it returns PR_FAILURE.  Further
 *     failure information can be obtained by calling PR_GetError().
 **************************************************************************
 */

//C     NSPR_API(PRStatus) PR_Connect(
//C         PRFileDesc *fd, const PRNetAddr *addr, PRIntervalTime timeout);
PRStatus  PR_Connect(PRFileDesc *fd, PRNetAddr *addr, PRIntervalTime timeout);

/*
 *************************************************************************
 * FUNCTION: PR_ConnectContinue
 * DESCRIPTION:
 *     Continue a nonblocking connect.  After a nonblocking connect
 *     is initiated with PR_Connect() (which fails with
 *     PR_IN_PROGRESS_ERROR), one should call PR_Poll() on the socket,
 *     with the in_flags PR_POLL_WRITE | PR_POLL_EXCEPT.  When
 *     PR_Poll() returns, one calls PR_ConnectContinue() on the
 *     socket to determine whether the nonblocking connect has
 *     completed or is still in progress.  Repeat the PR_Poll(),
 *     PR_ConnectContinue() sequence until the nonblocking connect
 *     has completed.
 * INPUTS:
 *     PRFileDesc *fd
 *         the file descriptor representing a socket
 *     PRInt16 out_flags
 *         the out_flags field of the poll descriptor returned by
 *         PR_Poll()
 * RETURN: PRStatus
 *     If the nonblocking connect has successfully completed,
 *     PR_ConnectContinue returns PR_SUCCESS.  If PR_ConnectContinue()
 *     returns PR_FAILURE, call PR_GetError():
 *     - PR_IN_PROGRESS_ERROR: the nonblocking connect is still in
 *       progress and has not completed yet.  The caller should poll
 *       on the file descriptor for the in_flags
 *       PR_POLL_WRITE|PR_POLL_EXCEPT and retry PR_ConnectContinue
 *       later when PR_Poll() returns.
 *     - Other errors: the nonblocking connect has failed with this
 *       error code.
 */

//C     NSPR_API(PRStatus)    PR_ConnectContinue(PRFileDesc *fd, PRInt16 out_flags);
PRStatus  PR_ConnectContinue(PRFileDesc *fd, PRInt16 out_flags);

/*
 *************************************************************************
 * THIS FUNCTION IS DEPRECATED.  USE PR_ConnectContinue INSTEAD.
 *
 * FUNCTION: PR_GetConnectStatus
 * DESCRIPTION:
 *     Get the completion status of a nonblocking connect.  After
 *     a nonblocking connect is initiated with PR_Connect() (which
 *     fails with PR_IN_PROGRESS_ERROR), one should call PR_Poll()
 *     on the socket, with the in_flags PR_POLL_WRITE | PR_POLL_EXCEPT.
 *     When PR_Poll() returns, one calls PR_GetConnectStatus on the
 *     PRPollDesc structure to determine whether the nonblocking
 *     connect has succeeded or failed.
 * INPUTS:
 *     const PRPollDesc *pd
 *         Pointer to a PRPollDesc whose fd member is the socket,
 *         and in_flags must contain PR_POLL_WRITE and PR_POLL_EXCEPT.
 *         PR_Poll() should have been called and set the out_flags.
 * RETURN: PRStatus
 *     If the nonblocking connect has successfully completed,
 *     PR_GetConnectStatus returns PR_SUCCESS.  If PR_GetConnectStatus()
 *     returns PR_FAILURE, call PR_GetError():
 *     - PR_IN_PROGRESS_ERROR: the nonblocking connect is still in
 *       progress and has not completed yet.
 *     - Other errors: the nonblocking connect has failed with this
 *       error code.
 */

//C     NSPR_API(PRStatus)    PR_GetConnectStatus(const PRPollDesc *pd);
PRStatus  PR_GetConnectStatus(PRPollDesc *pd);

/*
 *************************************************************************
 * FUNCTION: PR_Accept
 * DESCRIPTION:
 *     Accept a connection on a socket.
 * INPUTS:
 *     PRFileDesc *fd
 *       Points to a PRFileDesc object representing the rendezvous socket
 *       on which the caller is willing to accept new connections.
 *     PRIntervalTime timeout
 *       Time limit for completion of the accept operation.
 * OUTPUTS:
 *     PRNetAddr *addr
 *       Returns the address of the connecting entity in its own
 *       communication space. It may be NULL.
 * RETURN: PRFileDesc*
 *     Upon successful acceptance of a connection, PR_Accept
 *     returns a valid file descriptor. Otherwise, it returns NULL.
 *     Further failure information can be obtained by calling PR_GetError().
 **************************************************************************
 */

//C     NSPR_API(PRFileDesc*) PR_Accept(
//C         PRFileDesc *fd, PRNetAddr *addr, PRIntervalTime timeout);
PRFileDesc * PR_Accept(PRFileDesc *fd, PRNetAddr *addr, PRIntervalTime timeout);

/*
 *************************************************************************
 * FUNCTION: PR_Bind
 * DESCRIPTION:
 *    Bind an address to a socket.
 * INPUTS:
 *     PRFileDesc *fd
 *       Points to a PRFileDesc object representing a socket.
 *     PRNetAddr *addr
 *       Specifies the address to which the socket will be bound.
 * OUTPUTS:
 *     None
 * RETURN: PRStatus
 *     Upon successful binding of an address to a socket, PR_Bind
 *     returns PR_SUCCESS.  Otherwise, it returns PR_FAILURE.  Further
 *     failure information can be obtained by calling PR_GetError().
 **************************************************************************
 */

//C     NSPR_API(PRStatus) PR_Bind(PRFileDesc *fd, const PRNetAddr *addr);
PRStatus  PR_Bind(PRFileDesc *fd, PRNetAddr *addr);

/*
 *************************************************************************
 * FUNCTION: PR_Listen
 * DESCRIPTION:
 *    Listen for connections on a socket.
 * INPUTS:
 *     PRFileDesc *fd
 *       Points to a PRFileDesc object representing a socket that will be
 *       used to listen for new connections.
 *     PRIntn backlog
 *       Specifies the maximum length of the queue of pending connections.
 * OUTPUTS:
 *     None
 * RETURN: PRStatus
 *     Upon successful completion of listen request, PR_Listen
 *     returns PR_SUCCESS.  Otherwise, it returns PR_FAILURE.  Further
 *     failure information can be obtained by calling PR_GetError().
 **************************************************************************
 */

//C     NSPR_API(PRStatus) PR_Listen(PRFileDesc *fd, PRIntn backlog);
PRStatus  PR_Listen(PRFileDesc *fd, PRIntn backlog);

/*
 *************************************************************************
 * FUNCTION: PR_Shutdown
 * DESCRIPTION:
 *    Shut down part of a full-duplex connection on a socket.
 * INPUTS:
 *     PRFileDesc *fd
 *       Points to a PRFileDesc object representing a connected socket.
 *     PRIntn how
 *       Specifies the kind of disallowed operations on the socket.
 *           PR_SHUTDOWN_RCV - Further receives will be disallowed
 *           PR_SHUTDOWN_SEND - Further sends will be disallowed
 *           PR_SHUTDOWN_BOTH - Further sends and receives will be disallowed
 * OUTPUTS:
 *     None
 * RETURN: PRStatus
 *     Upon successful completion of shutdown request, PR_Shutdown
 *     returns PR_SUCCESS.  Otherwise, it returns PR_FAILURE.  Further
 *     failure information can be obtained by calling PR_GetError().
 **************************************************************************
 */

//C     typedef enum PRShutdownHow
//C     {
//C         PR_SHUTDOWN_RCV = 0,      /* disallow further receives */
//C         PR_SHUTDOWN_SEND = 1,     /* disallow further sends */
//C         PR_SHUTDOWN_BOTH = 2      /* disallow further receives and sends */
//C     } PRShutdownHow;
enum PRShutdownHow
{
    PR_SHUTDOWN_RCV,
    PR_SHUTDOWN_SEND,
    PR_SHUTDOWN_BOTH,
}

//C     NSPR_API(PRStatus)    PR_Shutdown(PRFileDesc *fd, PRShutdownHow how);
PRStatus  PR_Shutdown(PRFileDesc *fd, int how);

/*
 *************************************************************************
 * FUNCTION: PR_Recv
 * DESCRIPTION:
 *    Receive a specified number of bytes from a connected socket.
 *     The operation will block until some positive number of bytes are 
 *     transferred, a time out has occurred, or there is an error. 
 *     No more than 'amount' bytes will be transferred.
 * INPUTS:
 *     PRFileDesc *fd
 *       points to a PRFileDesc object representing a socket.
 *     void *buf
 *       pointer to a buffer to hold the data received.
 *     PRInt32 amount
 *       the size of 'buf' (in bytes)
 *     PRIntn flags
 *       must be zero or PR_MSG_PEEK.
 *     PRIntervalTime timeout
 *       Time limit for completion of the receive operation.
 * OUTPUTS:
 *     None
 * RETURN: PRInt32
 *         a positive number indicates the number of bytes actually received.
 *         0 means the network connection is closed.
 *         -1 indicates a failure. The reason for the failure is obtained
 *         by calling PR_GetError().
 **************************************************************************
 */

//C     #define PR_MSG_PEEK 0x2

const PR_MSG_PEEK = 0x2;
//C     NSPR_API(PRInt32)    PR_Recv(PRFileDesc *fd, void *buf, PRInt32 amount,
//C                     PRIntn flags, PRIntervalTime timeout);
PRInt32  PR_Recv(PRFileDesc *fd, void *buf, PRInt32 amount, PRIntn flags, PRIntervalTime timeout);

/*
 *************************************************************************
 * FUNCTION: PR_Send
 * DESCRIPTION:
 *    Send a specified number of bytes from a connected socket.
 *     The operation will block until all bytes are 
 *     processed, a time out has occurred, or there is an error. 
 * INPUTS:
 *     PRFileDesc *fd
 *       points to a PRFileDesc object representing a socket.
 *     void *buf
 *       pointer to a buffer from where the data is sent.
 *     PRInt32 amount
 *       the size of 'buf' (in bytes)
 *     PRIntn flags
 *        (OBSOLETE - must always be zero)
 *     PRIntervalTime timeout
 *       Time limit for completion of the send operation.
 * OUTPUTS:
 *     None
 * RETURN: PRInt32
 *     A positive number indicates the number of bytes successfully processed.
 *     This number must always equal 'amount'. A -1 is an indication that the
 *     operation failed. The reason for the failure is obtained by calling
 *     PR_GetError().
 **************************************************************************
 */

//C     NSPR_API(PRInt32)    PR_Send(PRFileDesc *fd, const void *buf, PRInt32 amount,
//C                                     PRIntn flags, PRIntervalTime timeout);
PRInt32  PR_Send(PRFileDesc *fd, void *buf, PRInt32 amount, PRIntn flags, PRIntervalTime timeout);

/*
 *************************************************************************
 * FUNCTION: PR_RecvFrom
 * DESCRIPTION:
 *     Receive up to a specified number of bytes from socket which may
 *     or may not be connected.
 *     The operation will block until one or more bytes are 
 *     transferred, a time out has occurred, or there is an error. 
 *     No more than 'amount' bytes will be transferred.
 * INPUTS:
 *     PRFileDesc *fd
 *       points to a PRFileDesc object representing a socket.
 *     void *buf
 *       pointer to a buffer to hold the data received.
 *     PRInt32 amount
 *       the size of 'buf' (in bytes)
 *     PRIntn flags
 *        (OBSOLETE - must always be zero)
 *     PRNetAddr *addr
 *       Specifies the address of the sending peer. It may be NULL.
 *     PRIntervalTime timeout
 *       Time limit for completion of the receive operation.
 * OUTPUTS:
 *     None
 * RETURN: PRInt32
 *         a positive number indicates the number of bytes actually received.
 *         0 means the network connection is closed.
 *         -1 indicates a failure. The reason for the failure is obtained
 *         by calling PR_GetError().
 **************************************************************************
 */

//C     NSPR_API(PRInt32) PR_RecvFrom(
//C         PRFileDesc *fd, void *buf, PRInt32 amount, PRIntn flags,
//C         PRNetAddr *addr, PRIntervalTime timeout);
PRInt32  PR_RecvFrom(PRFileDesc *fd, void *buf, PRInt32 amount, PRIntn flags, PRNetAddr *addr, PRIntervalTime timeout);

/*
 *************************************************************************
 * FUNCTION: PR_SendTo
 * DESCRIPTION:
 *    Send a specified number of bytes from an unconnected socket.
 *    The operation will block until all bytes are 
 *    sent, a time out has occurred, or there is an error. 
 * INPUTS:
 *     PRFileDesc *fd
 *       points to a PRFileDesc object representing an unconnected socket.
 *     void *buf
 *       pointer to a buffer from where the data is sent.
 *     PRInt32 amount
 *       the size of 'buf' (in bytes)
 *     PRIntn flags
 *        (OBSOLETE - must always be zero)
 *     PRNetAddr *addr
 *       Specifies the address of the peer.
.*     PRIntervalTime timeout
 *       Time limit for completion of the send operation.
 * OUTPUTS:
 *     None
 * RETURN: PRInt32
 *     A positive number indicates the number of bytes successfully sent.
 *     -1 indicates a failure. The reason for the failure is obtained
 *     by calling PR_GetError().
 **************************************************************************
 */

//C     NSPR_API(PRInt32) PR_SendTo(
//C         PRFileDesc *fd, const void *buf, PRInt32 amount, PRIntn flags,
//C         const PRNetAddr *addr, PRIntervalTime timeout);
PRInt32  PR_SendTo(PRFileDesc *fd, void *buf, PRInt32 amount, PRIntn flags, PRNetAddr *addr, PRIntervalTime timeout);

/*
*************************************************************************
** FUNCTION: PR_TransmitFile
** DESCRIPTION:
**    Transmitfile sends a complete file (sourceFile) across a socket 
**    (networkSocket).  If headers is non-NULL, the headers will be sent across
**    the socket prior to sending the file.
** 
**    Optionally, the PR_TRANSMITFILE_CLOSE_SOCKET flag may be passed to
**    transmitfile.  This flag specifies that transmitfile should close the
**    socket after sending the data.
**
** INPUTS:
**    PRFileDesc *networkSocket
**        The socket to send data over
**    PRFileDesc *sourceFile
**        The file to send
**    const void *headers
**        A pointer to headers to be sent before sending data
**    PRInt32       hlen
**        length of header buffers in bytes.
**    PRTransmitFileFlags       flags
**        If the flags indicate that the connection should be closed,
**        it will be done immediately after transferring the file, unless
**        the operation is unsuccessful. 
.*     PRIntervalTime timeout
 *        Time limit for completion of the transmit operation.
**
** RETURNS:
**    Returns the number of bytes written or -1 if the operation failed.
**    If an error occurs while sending the file, the PR_TRANSMITFILE_CLOSE_
**    SOCKET flag is ignored. The reason for the failure is obtained
**    by calling PR_GetError().
**************************************************************************
*/

//C     NSPR_API(PRInt32) PR_TransmitFile(
//C         PRFileDesc *networkSocket, PRFileDesc *sourceFile,
//C         const void *headers, PRInt32 hlen, PRTransmitFileFlags flags,
//C         PRIntervalTime timeout);
PRInt32  PR_TransmitFile(PRFileDesc *networkSocket, PRFileDesc *sourceFile, void *headers, PRInt32 hlen, int flags, PRIntervalTime timeout);

/*
*************************************************************************
** FUNCTION: PR_SendFile
** DESCRIPTION:
**    PR_SendFile sends data from a file (sendData->fd) across a socket 
**    (networkSocket).  If specified, a header and/or trailer buffer are sent
**	  before and after the file, respectively. The file offset, number of bytes
** 	  of file data to send, the header and trailer buffers are specified in the
**	  sendData argument.
** 
**    Optionally, if the PR_TRANSMITFILE_CLOSE_SOCKET flag is passed, the
**    socket is closed after successfully sending the data.
**
** INPUTS:
**    PRFileDesc *networkSocket
**        The socket to send data over
**    PRSendFileData *sendData
**        Contains the FD, file offset and length, header and trailer
**		  buffer specifications.
**    PRTransmitFileFlags       flags
**        If the flags indicate that the connection should be closed,
**        it will be done immediately after transferring the file, unless
**        the operation is unsuccessful. 
.*     PRIntervalTime timeout
 *        Time limit for completion of the send operation.
**
** RETURNS:
**    Returns the number of bytes written or -1 if the operation failed.
**    If an error occurs while sending the file, the PR_TRANSMITFILE_CLOSE_
**    SOCKET flag is ignored. The reason for the failure is obtained
**    by calling PR_GetError().
**************************************************************************
*/

//C     struct PRSendFileData {
//C     	PRFileDesc	*fd;			/* file to send							*/
//C     	PRUint32	file_offset;	/* file offset							*/
//C     	PRSize		file_nbytes;	/* number of bytes of file data to send	*/
								/* if 0, send data from file_offset to	*/
								/* end-of-file.							*/
//C     	const void	*header;		/* header buffer						*/
//C     	PRInt32		hlen;			/* header len							*/
//C     	const void	*trailer;		/* trailer buffer						*/
//C     	PRInt32		tlen;			/* trailer len							*/
//C     };
struct PRSendFileData
{
    PRFileDesc *fd;
    PRUint32 file_offset;
    PRSize file_nbytes;
    void *header;
    PRInt32 hlen;
    void *trailer;
    PRInt32 tlen;
}


//C     NSPR_API(PRInt32) PR_SendFile(
//C         PRFileDesc *networkSocket, PRSendFileData *sendData,
//C     	PRTransmitFileFlags flags, PRIntervalTime timeout);
PRInt32  PR_SendFile(PRFileDesc *networkSocket, PRSendFileData *sendData, int flags, PRIntervalTime timeout);

/*
*************************************************************************
** FUNCTION: PR_AcceptRead
** DESCRIPTION:
**    AcceptRead accepts a new connection, returns the newly created
**    socket's descriptor and also returns the connecting peer's address.
**    AcceptRead, as its name suggests, also receives the first block of data 
**    sent by the peer.
**
** INPUTS:
**    PRFileDesc *listenSock
**        A socket descriptor that has been called with the PR_Listen() 
**        function, also known as the rendezvous socket.
**    void *buf
**        A pointer to a buffer to receive data sent by the client.  This 
**        buffer must be large enough to receive <amount> bytes of data
**        and two PRNetAddr structures, plus an extra 32 bytes. See:
**        PR_ACCEPT_READ_BUF_OVERHEAD.
**    PRInt32 amount
**        The number of bytes of client data to receive.  Does not include
**        the size of the PRNetAddr structures.  If 0, no data will be read
**        from the client.
**    PRIntervalTime timeout
**        The timeout interval only applies to the read portion of the 
**        operation.  PR_AcceptRead will block indefinitely until the 
**        connection is accepted; the read will timeout after the timeout 
**        interval elapses.
** OUTPUTS:
**    PRFileDesc **acceptedSock
**        The file descriptor for the newly connected socket.  This parameter
**        will only be valid if the function return does not indicate failure.
**    PRNetAddr  **peerAddr,
**        The address of the remote socket.  This parameter will only be
**        valid if the function return does not indicate failure.  The
**        returned address is not guaranteed to be properly aligned.
** 
** RETURNS:
**     The number of bytes read from the client or -1 on failure.  The reason 
**     for the failure is obtained by calling PR_GetError().
**************************************************************************
**/
       
/* define buffer overhead constant. Add this value to the user's 
** data length when allocating a buffer to accept data.
**    Example:
**    #define USER_DATA_SIZE 10
**    char buf[USER_DATA_SIZE + PR_ACCEPT_READ_BUF_OVERHEAD];
**    bytesRead = PR_AcceptRead( s, fd, &a, &p, USER_DATA_SIZE, ...);
*/
//C     #define PR_ACCEPT_READ_BUF_OVERHEAD (32+(2*sizeof(PRNetAddr)))

//C     NSPR_API(PRInt32) PR_AcceptRead(
//C         PRFileDesc *listenSock, PRFileDesc **acceptedSock,
//C         PRNetAddr **peerAddr, void *buf, PRInt32 amount, PRIntervalTime timeout);
PRInt32  PR_AcceptRead(PRFileDesc *listenSock, PRFileDesc **acceptedSock, PRNetAddr **peerAddr, void *buf, PRInt32 amount, PRIntervalTime timeout);

/*
*************************************************************************
** FUNCTION: PR_NewTCPSocketPair
** DESCRIPTION:
**    Create a new TCP socket pair. The returned descriptors can be used
**    interchangeably; they are interconnected full-duplex descriptors: data
**    written to one can be read from the other and vice-versa.
**
** INPUTS:
**    None
** OUTPUTS:
**    PRFileDesc *fds[2]
**        The file descriptor pair for the newly created TCP sockets.
** RETURN: PRStatus
**     Upon successful completion of TCP socket pair, PR_NewTCPSocketPair 
**     returns PR_SUCCESS.  Otherwise, it returns PR_FAILURE.  Further
**     failure information can be obtained by calling PR_GetError().
** XXX can we implement this on windoze and mac?
**************************************************************************
**/
//C     NSPR_API(PRStatus) PR_NewTCPSocketPair(PRFileDesc *fds[2]);
PRStatus  PR_NewTCPSocketPair(PRFileDesc **fds);

/*
*************************************************************************
** FUNCTION: PR_GetSockName
** DESCRIPTION:
**    Get socket name.  Return the network address for this socket.
**
** INPUTS:
**     PRFileDesc *fd
**       Points to a PRFileDesc object representing the socket.
** OUTPUTS:
**     PRNetAddr *addr
**       Returns the address of the socket in its own communication space.
** RETURN: PRStatus
**     Upon successful completion, PR_GetSockName returns PR_SUCCESS.  
**     Otherwise, it returns PR_FAILURE.  Further failure information can 
**     be obtained by calling PR_GetError().
**************************************************************************
**/
//C     NSPR_API(PRStatus)	PR_GetSockName(PRFileDesc *fd, PRNetAddr *addr);
PRStatus  PR_GetSockName(PRFileDesc *fd, PRNetAddr *addr);

/*
*************************************************************************
** FUNCTION: PR_GetPeerName
** DESCRIPTION:
**    Get name of the connected peer.  Return the network address for the 
**    connected peer socket.
**
** INPUTS:
**     PRFileDesc *fd
**       Points to a PRFileDesc object representing the connected peer.
** OUTPUTS:
**     PRNetAddr *addr
**       Returns the address of the connected peer in its own communication
**       space.
** RETURN: PRStatus
**     Upon successful completion, PR_GetPeerName returns PR_SUCCESS.  
**     Otherwise, it returns PR_FAILURE.  Further failure information can 
**     be obtained by calling PR_GetError().
**************************************************************************
**/
//C     NSPR_API(PRStatus)	PR_GetPeerName(PRFileDesc *fd, PRNetAddr *addr);
PRStatus  PR_GetPeerName(PRFileDesc *fd, PRNetAddr *addr);

//C     NSPR_API(PRStatus)	PR_GetSocketOption(
//C         PRFileDesc *fd, PRSocketOptionData *data);
PRStatus  PR_GetSocketOption(PRFileDesc *fd, PRSocketOptionData *data);

//C     NSPR_API(PRStatus)	PR_SetSocketOption(
//C         PRFileDesc *fd, const PRSocketOptionData *data);
PRStatus  PR_SetSocketOption(PRFileDesc *fd, PRSocketOptionData *data);

/*
 *********************************************************************
 *
 * File descriptor inheritance
 *
 *********************************************************************
 */

/*
 ************************************************************************
 * FUNCTION: PR_SetFDInheritable
 * DESCRIPTION:
 *    Set the inheritance attribute of a file descriptor.
 *
 * INPUTS:
 *     PRFileDesc *fd
 *       Points to a PRFileDesc object.
 *     PRBool inheritable
 *       If PR_TRUE, the file descriptor fd is set to be inheritable
 *       by a child process.  If PR_FALSE, the file descriptor is set
 *       to be not inheritable by a child process.
 * RETURN: PRStatus
 *     Upon successful completion, PR_SetFDInheritable returns PR_SUCCESS.  
 *     Otherwise, it returns PR_FAILURE.  Further failure information can 
 *     be obtained by calling PR_GetError().
 *************************************************************************
 */
//C     NSPR_API(PRStatus) PR_SetFDInheritable(
//C         PRFileDesc *fd,
//C         PRBool inheritable);
PRStatus  PR_SetFDInheritable(PRFileDesc *fd, PRBool inheritable);

/*
 ************************************************************************
 * FUNCTION: PR_GetInheritedFD
 * DESCRIPTION:
 *    Get an inherited file descriptor with the specified name.
 *
 * INPUTS:
 *     const char *name
 *       The name of the inherited file descriptor.
 * RETURN: PRFileDesc *
 *     Upon successful completion, PR_GetInheritedFD returns the
 *     inherited file descriptor with the specified name.  Otherwise,  
 *     it returns NULL.  Further failure information can be obtained
 *     by calling PR_GetError().
 *************************************************************************
 */
//C     NSPR_API(PRFileDesc *) PR_GetInheritedFD(const char *name);
PRFileDesc * PR_GetInheritedFD(char *name);

/*
 *********************************************************************
 *
 * Memory-mapped files
 *
 *********************************************************************
 */

//C     typedef struct PRFileMap PRFileMap;

/*
 * protection options for read and write accesses of a file mapping
 */
//C     typedef enum PRFileMapProtect {
//C         PR_PROT_READONLY,     /* read only */
//C         PR_PROT_READWRITE,    /* readable, and write is shared */
//C         PR_PROT_WRITECOPY     /* readable, and write is private (copy-on-write) */
//C     } PRFileMapProtect;
enum PRFileMapProtect
{
    PR_PROT_READONLY,
    PR_PROT_READWRITE,
    PR_PROT_WRITECOPY,
}

//C     NSPR_API(PRFileMap *) PR_CreateFileMap(
//C         PRFileDesc *fd,
//C         PRInt64 size,
//C         PRFileMapProtect prot);
alias void PRFileMap;
PRFileMap * PR_CreateFileMap(PRFileDesc *fd, PRInt64 size, int prot);

/*
 * return the alignment (in bytes) of the offset argument to PR_MemMap
 */
//C     NSPR_API(PRInt32) PR_GetMemMapAlignment(void);
PRInt32  PR_GetMemMapAlignment();

//C     NSPR_API(void *) PR_MemMap(
//C         PRFileMap *fmap,
//C         PROffset64 offset,  
/* must be aligned and sized according to the
                         * return value of PR_GetMemMapAlignment() */
//C         PRUint32 len);
void * PR_MemMap(PRFileMap *fmap, PROffset64 offset, PRUint32 len);

//C     NSPR_API(PRStatus) PR_MemUnmap(void *addr, PRUint32 len);
PRStatus  PR_MemUnmap(void *addr, PRUint32 len);

//C     NSPR_API(PRStatus) PR_CloseFileMap(PRFileMap *fmap);
PRStatus  PR_CloseFileMap(PRFileMap *fmap);

/*
 ******************************************************************
 *
 * Interprocess communication
 *
 ******************************************************************
 */

/*
 * Creates an anonymous pipe and returns file descriptors for the
 * read and write ends of the pipe.
 */

//C     NSPR_API(PRStatus) PR_CreatePipe(
//C         PRFileDesc **readPipe,
//C         PRFileDesc **writePipe
//C     );
PRStatus  PR_CreatePipe(PRFileDesc **readPipe, PRFileDesc **writePipe);

/************************************************************************/
/************** The following definitions are for poll ******************/
/************************************************************************/

//C     struct PRPollDesc {
//C         PRFileDesc* fd;
//C         PRInt16 in_flags;
//C         PRInt16 out_flags;
//C     };
struct PRPollDesc
{
    PRFileDesc *fd;
    PRInt16 in_flags;
    PRInt16 out_flags;
}

/*
** Bit values for PRPollDesc.in_flags or PRPollDesc.out_flags. Binary-or
** these together to produce the desired poll request.
*/

//C     #if defined(_PR_POLL_BACKCOMPAT)

//C     #include <poll.h>
//C     #define PR_POLL_READ    POLLIN
//C     #define PR_POLL_WRITE   POLLOUT
//C     #define PR_POLL_EXCEPT  POLLPRI
//C     #define PR_POLL_ERR     POLLERR     /* only in out_flags */
//C     #define PR_POLL_NVAL    POLLNVAL    /* only in out_flags when fd is bad */
//C     #define PR_POLL_HUP     POLLHUP     /* only in out_flags */

//C     #else  /* _PR_POLL_BACKCOMPAT */

//C     #define PR_POLL_READ    0x1
//C     #define PR_POLL_WRITE   0x2
const PR_POLL_READ = 0x1;
//C     #define PR_POLL_EXCEPT  0x4
const PR_POLL_WRITE = 0x2;
//C     #define PR_POLL_ERR     0x8         /* only in out_flags */
const PR_POLL_EXCEPT = 0x4;
//C     #define PR_POLL_NVAL    0x10        /* only in out_flags when fd is bad */
const PR_POLL_ERR = 0x8;
//C     #define PR_POLL_HUP     0x20        /* only in out_flags */
const PR_POLL_NVAL = 0x10;

const PR_POLL_HUP = 0x20;
//C     #endif  /* _PR_POLL_BACKCOMPAT */

/*
*************************************************************************
** FUNCTION:    PR_Poll
** DESCRIPTION:
**
** The call returns as soon as I/O is ready on one or more of the underlying
** socket objects. A count of the number of ready descriptors is
** returned unless a timeout occurs in which case zero is returned.
**
** PRPollDesc.fd should be set to a pointer to a PRFileDesc object
** representing a socket. This field can be set to NULL to indicate to
** PR_Poll that this PRFileDesc object should be ignored.
** PRPollDesc.in_flags should be set to the desired request
** (read/write/except or some combination). Upon successful return from
** this call PRPollDesc.out_flags will be set to indicate what kind of
** i/o can be performed on the respective descriptor. PR_Poll() uses the
** out_flags fields as scratch variables during the call. If PR_Poll()
** returns 0 or -1, the out_flags fields do not contain meaningful values
** and must not be used.
**
** INPUTS:
**      PRPollDesc *pds         A pointer to an array of PRPollDesc
**
**      PRIntn npds             The number of elements in the array
**                              If this argument is zero PR_Poll is
**                              equivalent to a PR_Sleep(timeout).
**
**      PRIntervalTime timeout  Amount of time the call will block waiting
**                              for I/O to become ready. If this time expires
**                              w/o any I/O becoming ready, the result will
**                              be zero.
**
** OUTPUTS:    None
** RETURN:
**      PRInt32                 Number of PRPollDesc's with events or zero
**                              if the function timed out or -1 on failure.
**                              The reason for the failure is obtained by
**                              calling PR_GetError().
**************************************************************************
*/
//C     NSPR_API(PRInt32) PR_Poll(
//C         PRPollDesc *pds, PRIntn npds, PRIntervalTime timeout);
PRInt32  PR_Poll(PRPollDesc *pds, PRIntn npds, PRIntervalTime timeout);

/*
**************************************************************************
**
** Pollable events
**
** A pollable event is a special kind of file descriptor.
** The only I/O operation you can perform on a pollable event
** is to poll it with the PR_POLL_READ flag.  You can't
** read from or write to a pollable event.
**
** The purpose of a pollable event is to combine event waiting
** with I/O waiting in a single PR_Poll call.  Pollable events
** are implemented using a pipe or a pair of TCP sockets
** connected via the loopback address, therefore setting and
** waiting for pollable events are expensive operating system
** calls.  Do not use pollable events for general thread
** synchronization. Use condition variables instead.
**
** A pollable event has two states: set and unset.  Events
** are not queued, so there is no notion of an event count.
** A pollable event is either set or unset.
**
** A new pollable event is created by a PR_NewPollableEvent
** call and is initially in the unset state.
**
** PR_WaitForPollableEvent blocks the calling thread until
** the pollable event is set, and then it atomically unsets
** the pollable event before it returns.
**
** To set a pollable event, call PR_SetPollableEvent.
**
** One can call PR_Poll with the PR_POLL_READ flag on a pollable
** event.  When the pollable event is set, PR_Poll returns with
** the PR_POLL_READ flag set in the out_flags.
**
** To close a pollable event, call PR_DestroyPollableEvent
** (not PR_Close).
**
**************************************************************************
*/

//C     NSPR_API(PRFileDesc *) PR_NewPollableEvent(void);
PRFileDesc * PR_NewPollableEvent();

//C     NSPR_API(PRStatus) PR_DestroyPollableEvent(PRFileDesc *event);
PRStatus  PR_DestroyPollableEvent(PRFileDesc *event);

//C     NSPR_API(PRStatus) PR_SetPollableEvent(PRFileDesc *event);
PRStatus  PR_SetPollableEvent(PRFileDesc *event);

//C     NSPR_API(PRStatus) PR_WaitForPollableEvent(PRFileDesc *event);
PRStatus  PR_WaitForPollableEvent(PRFileDesc *event);

//C     PR_END_EXTERN_C

//C     #endif /* prio_h___ */
