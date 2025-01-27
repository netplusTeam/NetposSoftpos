.class public interface abstract Lorg/jline/terminal/impl/jna/solaris/CLibrary;
.super Ljava/lang/Object;
.source "CLibrary.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;,
        Lorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;
    }
.end annotation


# static fields
.field public static final B0:I = 0x0

.field public static final B110:I = 0x3

.field public static final B1200:I = 0x11

.field public static final B134:I = 0x4

.field public static final B150:I = 0x5

.field public static final B1800:I = 0x12

.field public static final B19200:I = 0x16

.field public static final B200:I = 0x6

.field public static final B2400:I = 0x13

.field public static final B300:I = 0x7

.field public static final B38400:I = 0x17

.field public static final B4800:I = 0x14

.field public static final B50:I = 0x1

.field public static final B600:I = 0x10

.field public static final B75:I = 0x2

.field public static final B9600:I = 0x15

.field public static final BRKINT:I = 0x2

.field public static final BS0:I = 0x0

.field public static final BS1:I = 0x20000

.field public static final BSDLY:I = 0x20000

.field public static final CBAUD:I = 0x10017

.field public static final CLOCAL:I = 0x4000

.field public static final CR0:I = 0x0

.field public static final CR1:I = 0x1000

.field public static final CR2:I = 0x2000

.field public static final CR3:I = 0x3000

.field public static final CRDLY:I = 0x3000

.field public static final CREAD:I = 0x200

.field public static final CS5:I = 0x0

.field public static final CS6:I = 0x20

.field public static final CS7:I = 0x40

.field public static final CS8:I = 0x60

.field public static final CSIZE:I = 0x60

.field public static final CSTOPB:I = 0x100

.field public static final ECHO:I = 0x10

.field public static final ECHOCTL:I = 0x1000

.field public static final ECHOE:I = 0x20

.field public static final ECHOK:I = 0x40

.field public static final ECHOKE:I = 0x4000

.field public static final ECHONL:I = 0x100

.field public static final ECHOPRT:I = 0x2000

.field public static final EXTA:I = 0xb19200

.field public static final EXTB:I = 0xb38400

.field public static final EXTPROC:I = 0x200000

.field public static final FF0:I = 0x0

.field public static final FF1:I = 0x100000

.field public static final FFDLY:I = 0x100000

.field public static final FLUSHO:I = 0x10000

.field public static final HUPCL:I = 0x2000

.field public static final ICANON:I = 0x2

.field public static final ICRNL:I = 0x400

.field public static final IEXTEN:I = 0x100000

.field public static final IGNBRK:I = 0x1

.field public static final IGNCR:I = 0x200

.field public static final IGNPAR:I = 0x4

.field public static final IMAXBEL:I = 0x20000

.field public static final INLCR:I = 0x100

.field public static final INPCK:I = 0x20

.field public static final ISIG:I = 0x1

.field public static final ISTRIP:I = 0x40

.field public static final IUCLC:I = 0x1000

.field public static final IUTF8:I = 0x40000

.field public static final IXANY:I = 0x4000

.field public static final IXOFF:I = 0x10000

.field public static final IXON:I = 0x2000

.field public static final NL0:I = 0x0

.field public static final NL1:I = 0x400

.field public static final NLDLY:I = 0x400

.field public static final NOFLSH:I = 0x200

.field public static final OCRNL:I = 0x10

.field public static final OFDEL:I = 0x200

.field public static final OFILL:I = 0x100

.field public static final OLCUC:I = 0x2

.field public static final ONLCR:I = 0x4

.field public static final ONLRET:I = 0x40

.field public static final ONOCR:I = 0x20

.field public static final OPOST:I = 0x1

.field public static final PARENB:I = 0x400

.field public static final PARMRK:I = 0x10

.field public static final PARODD:I = 0x1000

.field public static final PENDIN:I = 0x40000

.field public static final TAB0:I = 0x0

.field public static final TAB1:I = 0x4000

.field public static final TAB2:I = 0x10000

.field public static final TAB3:I = 0x14000

.field public static final TABDLY:I = 0x14000

.field public static final TCSADRAIN:I = 0x1

.field public static final TCSAFLUSH:I = 0x2

.field public static final TCSANOW:I = 0x0

.field public static final TIOCGWINSZ:I = 0x5468

.field public static final TIOCSWINSZ:I = 0x5467

.field public static final TOSTOP:I = 0x400

.field public static final VDISCARD:I = 0xd

.field public static final VEOF:I = 0x4

.field public static final VEOL:I = 0xb

.field public static final VEOL2:I = 0x10

.field public static final VERASE:I = 0x2

.field public static final VINTR:I = 0x0

.field public static final VKILL:I = 0x3

.field public static final VLNEXT:I = 0xf

.field public static final VMIN:I = 0x6

.field public static final VQUIT:I = 0x1

.field public static final VREPRINT:I = 0xc

.field public static final VSTART:I = 0x8

.field public static final VSTOP:I = 0x9

.field public static final VSUSP:I = 0xa

.field public static final VSWTC:I = 0x7

.field public static final VT0:I = 0x0

.field public static final VT1:I = 0x40000

.field public static final VTDLY:I = 0x40000

.field public static final VTIME:I = 0x5

.field public static final VWERASE:I = 0xe

.field public static final XCASE:I = 0x4

.field public static final XTABS:I = 0x14000

.field public static final _TIOC:I = 0x5400


# virtual methods
.method public abstract ioctl(IJLorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract isatty(I)I
.end method

.method public abstract openpty([I[I[BLorg/jline/terminal/impl/jna/solaris/CLibrary$termios;Lorg/jline/terminal/impl/jna/solaris/CLibrary$winsize;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract tcgetattr(ILorg/jline/terminal/impl/jna/solaris/CLibrary$termios;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract tcsetattr(IILorg/jline/terminal/impl/jna/solaris/CLibrary$termios;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract ttyname_r(I[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method
