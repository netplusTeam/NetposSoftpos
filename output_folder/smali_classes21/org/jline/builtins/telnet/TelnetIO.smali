.class public Lorg/jline/builtins/telnet/TelnetIO;
.super Ljava/lang/Object;
.source "TelnetIO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/telnet/TelnetIO$IACHandler;
    }
.end annotation


# static fields
.field protected static final AO:I = 0xf5

.field protected static final AUTHENTICATION:I = 0x25

.field protected static final AYT:I = 0xf6

.field protected static final BRK:I = 0xf3

.field private static final DEFAULT_HEIGHT:I = 0x19

.field private static final DEFAULT_WIDTH:I = 0x50

.field protected static final DM:I = 0xf2

.field protected static final DO:I = 0xfd

.field protected static final DONT:I = 0xfe

.field protected static final EC:I = 0xf7

.field protected static final ECHO:I = 0x1

.field protected static final EL:I = 0xf8

.field protected static final ENCRYPT:I = 0x26

.field protected static final EXT_ASCII:I = 0x11

.field protected static final GA:I = 0xf9

.field protected static final IAC:I = 0xff

.field protected static final IP:I = 0xf4

.field protected static final IS:I = 0x0

.field protected static final LINEMODE:I = 0x22

.field protected static final LM_EDIT:I = 0x1

.field protected static final LM_FORWARDMASK:I = 0x2

.field protected static final LM_MODE:I = 0x1

.field protected static final LM_MODEACK:I = 0x4

.field protected static final LM_SLC:I = 0x3

.field protected static final LM_SLC_ABORT:I = 0x7

.field protected static final LM_SLC_ACK:I = 0x80

.field protected static final LM_SLC_AO:I = 0x4

.field protected static final LM_SLC_AYT:I = 0x5

.field protected static final LM_SLC_BRK:I = 0x2

.field protected static final LM_SLC_CANTCHANGE:I = 0x1

.field protected static final LM_SLC_DEFAULT:I = 0x3

.field protected static final LM_SLC_EOF:I = 0x8

.field protected static final LM_SLC_EOR:I = 0x6

.field protected static final LM_SLC_FLUSHIN:I = 0x40

.field protected static final LM_SLC_FLUSHOUT:I = 0x20

.field protected static final LM_SLC_IP:I = 0x3

.field protected static final LM_SLC_LEVELBITS:I = 0x3

.field protected static final LM_SLC_NOSUPPORT:I = 0x0

.field protected static final LM_SLC_SUSP:I = 0x9

.field protected static final LM_SLC_SYNCH:I = 0x1

.field protected static final LM_SLC_VALUE:I = 0x2

.field protected static final LM_TRAPSIG:I = 0x2

.field private static final LOG:Ljava/util/logging/Logger;

.field protected static final LOGOUT:I = 0x12

.field protected static final NAWS:I = 0x1f

.field protected static final NEWENV:I = 0x27

.field protected static final NE_ESC:I = 0x2

.field protected static final NE_INFO:I = 0x2

.field protected static final NE_IN_END:I = -0x3

.field protected static final NE_IN_ERROR:I = -0x2

.field protected static final NE_USERVAR:I = 0x3

.field protected static final NE_VALUE:I = 0x1

.field protected static final NE_VAR:I = 0x0

.field protected static final NE_VAR_DEFINED:I = 0x1

.field protected static final NE_VAR_DEFINED_EMPTY:I = 0x0

.field protected static final NE_VAR_NAME_MAXLENGTH:I = 0x32

.field protected static final NE_VAR_OK:I = 0x2

.field protected static final NE_VAR_UNDEFINED:I = -0x1

.field protected static final NE_VAR_VALUE_MAXLENGTH:I = 0x3e8

.field protected static final NOP:I = 0xf1

.field protected static final SB:I = 0xfa

.field protected static final SE:I = 0xf0

.field protected static final SEND:I = 0x1

.field protected static final SEND_LOC:I = 0x17

.field private static final SMALLEST_BELIEVABLE_HEIGHT:I = 0x6

.field private static final SMALLEST_BELIEVABLE_WIDTH:I = 0x14

.field protected static final SUPGA:I = 0x3

.field protected static final TTYPE:I = 0x18

.field protected static final WILL:I = 0xfb

.field protected static final WONT:I = 0xfc


# instance fields
.field private connection:Lorg/jline/builtins/telnet/Connection;

.field private connectionData:Lorg/jline/builtins/telnet/ConnectionData;

.field private crFlag:Z

.field private iacHandler:Lorg/jline/builtins/telnet/TelnetIO$IACHandler;

.field private in:Ljava/io/DataInputStream;

.field private initializing:Z

.field private localAddress:Ljava/net/InetAddress;

.field private noIac:Z

.field private out:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 286
    const-class v0, Lorg/jline/builtins/telnet/TelnetIO;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jline/builtins/telnet/TelnetIO;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->noIac:Z

    .line 311
    return-void
.end method

.method private IamHere()V
    .locals 4

    .line 572
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Yes]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO;->write(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/TelnetIO;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lorg/jline/builtins/telnet/TelnetIO;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "IamHere()"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 577
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lorg/jline/builtins/telnet/TelnetIO;)I
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/telnet/TelnetIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO;->rawread()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/jline/builtins/telnet/TelnetIO;)V
    .locals 0
    .param p0, "x0"    # Lorg/jline/builtins/telnet/TelnetIO;

    .line 78
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO;->IamHere()V

    return-void
.end method

.method static synthetic access$200(Lorg/jline/builtins/telnet/TelnetIO;)V
    .locals 0
    .param p0, "x0"    # Lorg/jline/builtins/telnet/TelnetIO;

    .line 78
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO;->nvtBreak()V

    return-void
.end method

.method static synthetic access$300(Lorg/jline/builtins/telnet/TelnetIO;)I
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/telnet/TelnetIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO;->read16int()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/jline/builtins/telnet/TelnetIO;II)V
    .locals 0
    .param p0, "x0"    # Lorg/jline/builtins/telnet/TelnetIO;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/jline/builtins/telnet/TelnetIO;->setTerminalGeometry(II)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/logging/Logger;
    .locals 1

    .line 78
    sget-object v0, Lorg/jline/builtins/telnet/TelnetIO;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jline/builtins/telnet/TelnetIO;)Lorg/jline/builtins/telnet/ConnectionData;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/telnet/TelnetIO;

    .line 78
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    return-object v0
.end method

.method static synthetic access$700(Lorg/jline/builtins/telnet/TelnetIO;I)V
    .locals 0
    .param p0, "x0"    # Lorg/jline/builtins/telnet/TelnetIO;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lorg/jline/builtins/telnet/TelnetIO;->rawWrite(I)V

    return-void
.end method

.method private initTelnetCommunication()V
    .locals 5

    .line 536
    const-string v0, "initTelnetCommunication()"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jline/builtins/telnet/TelnetIO;->initializing:Z

    .line 539
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/jline/builtins/telnet/TelnetIO;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    invoke-virtual {v2}, Lorg/jline/builtins/telnet/ConnectionData;->isLineMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, p0, Lorg/jline/builtins/telnet/TelnetIO;->iacHandler:Lorg/jline/builtins/telnet/TelnetIO$IACHandler;

    invoke-virtual {v2}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->doLineModeInit()V

    .line 541
    sget-object v2, Lorg/jline/builtins/telnet/TelnetIO;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Line mode initialized."

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_0
    iget-object v2, p0, Lorg/jline/builtins/telnet/TelnetIO;->iacHandler:Lorg/jline/builtins/telnet/TelnetIO$IACHandler;

    invoke-virtual {v2}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->doCharacterModeInit()V

    .line 544
    sget-object v2, Lorg/jline/builtins/telnet/TelnetIO;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Character mode initialized."

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 547
    :goto_0
    iget-object v2, p0, Lorg/jline/builtins/telnet/TelnetIO;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    invoke-virtual {v2}, Lorg/jline/builtins/telnet/ConnectionData;->getSocket()Ljava/net/Socket;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 548
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/TelnetIO;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :try_start_1
    iget-object v2, p0, Lorg/jline/builtins/telnet/TelnetIO;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    invoke-virtual {v2}, Lorg/jline/builtins/telnet/ConnectionData;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 555
    :catchall_0
    move-exception v2

    .line 556
    :try_start_2
    iget-object v3, p0, Lorg/jline/builtins/telnet/TelnetIO;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    invoke-virtual {v3}, Lorg/jline/builtins/telnet/ConnectionData;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 559
    goto :goto_1

    .line 557
    :catch_0
    move-exception v1

    .line 558
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/jline/builtins/telnet/TelnetIO;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    throw v2

    .line 550
    :catch_1
    move-exception v2

    .line 556
    :try_start_3
    iget-object v2, p0, Lorg/jline/builtins/telnet/TelnetIO;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    invoke-virtual {v2}, Lorg/jline/builtins/telnet/ConnectionData;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 559
    :goto_2
    goto :goto_3

    .line 557
    :catch_2
    move-exception v2

    .line 558
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Lorg/jline/builtins/telnet/TelnetIO;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    .end local v2    # "ex":Ljava/lang/Exception;
    nop

    .line 561
    :goto_3
    iput-boolean v1, p0, Lorg/jline/builtins/telnet/TelnetIO;->initializing:Z

    .line 562
    return-void
.end method

.method private nvtBreak()V
    .locals 3

    .line 583
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->connection:Lorg/jline/builtins/telnet/Connection;

    new-instance v1, Lorg/jline/builtins/telnet/ConnectionEvent;

    sget-object v2, Lorg/jline/builtins/telnet/ConnectionEvent$Type;->CONNECTION_BREAK:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    invoke-direct {v1, v0, v2}, Lorg/jline/builtins/telnet/ConnectionEvent;-><init>(Lorg/jline/builtins/telnet/Connection;Lorg/jline/builtins/telnet/ConnectionEvent$Type;)V

    invoke-virtual {v0, v1}, Lorg/jline/builtins/telnet/Connection;->processConnectionEvent(Lorg/jline/builtins/telnet/ConnectionEvent;)V

    .line 584
    return-void
.end method

.method private rawWrite(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 442
    return-void
.end method

.method private rawread()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    const/4 v0, 0x0

    .line 511
    .local v0, "b":I
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 512
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    invoke-virtual {v1}, Lorg/jline/builtins/telnet/ConnectionData;->activity()V

    .line 513
    return v0
.end method

.method private read16int()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 492
    .local v0, "c":I
    return v0
.end method

.method private setTerminalGeometry(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 595
    const/16 v0, 0x14

    if-ge p1, v0, :cond_0

    .line 596
    const/16 p1, 0x50

    .line 598
    :cond_0
    const/4 v0, 0x6

    if-ge p2, v0, :cond_1

    .line 599
    const/16 p2, 0x19

    .line 602
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    invoke-virtual {v0, p1, p2}, Lorg/jline/builtins/telnet/ConnectionData;->setTerminalGeometry(II)V

    .line 603
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->connection:Lorg/jline/builtins/telnet/Connection;

    new-instance v1, Lorg/jline/builtins/telnet/ConnectionEvent;

    sget-object v2, Lorg/jline/builtins/telnet/ConnectionEvent$Type;->CONNECTION_TERMINAL_GEOMETRY_CHANGED:Lorg/jline/builtins/telnet/ConnectionEvent$Type;

    invoke-direct {v1, v0, v2}, Lorg/jline/builtins/telnet/ConnectionEvent;-><init>(Lorg/jline/builtins/telnet/Connection;Lorg/jline/builtins/telnet/ConnectionEvent$Type;)V

    invoke-virtual {v0, v1}, Lorg/jline/builtins/telnet/Connection;->processConnectionEvent(Lorg/jline/builtins/telnet/ConnectionEvent;)V

    .line 605
    return-void
.end method

.method private stripCRSeq(I)I
    .locals 1
    .param p1, "input"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 525
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO;->rawread()I

    .line 526
    const/16 v0, 0xa

    return v0

    .line 528
    :cond_0
    return p1
.end method


# virtual methods
.method public closeInput()V
    .locals 1

    .line 478
    :try_start_0
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 482
    :goto_0
    return-void
.end method

.method public closeOutput()V
    .locals 4

    .line 428
    const/16 v0, 0xff

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO;->write(I)V

    .line 429
    const/16 v0, 0xfd

    invoke-virtual {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO;->write(I)V

    .line 430
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO;->write(I)V

    .line 433
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lorg/jline/builtins/telnet/TelnetIO;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "closeOutput()"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 417
    return-void
.end method

.method public initIO()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    new-instance v0, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;

    invoke-direct {v0, p0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;-><init>(Lorg/jline/builtins/telnet/TelnetIO;)V

    iput-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->iacHandler:Lorg/jline/builtins/telnet/TelnetIO$IACHandler;

    .line 317
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    invoke-virtual {v1}, Lorg/jline/builtins/telnet/ConnectionData;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->in:Ljava/io/DataInputStream;

    .line 318
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lorg/jline/builtins/telnet/TelnetIO;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    invoke-virtual {v2}, Lorg/jline/builtins/telnet/ConnectionData;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->out:Ljava/io/DataOutputStream;

    .line 321
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    invoke-virtual {v0}, Lorg/jline/builtins/telnet/ConnectionData;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->localAddress:Ljava/net/InetAddress;

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->crFlag:Z

    .line 324
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO;->initTelnetCommunication()V

    .line 325
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO;->rawread()I

    move-result v0

    .line 454
    .local v0, "c":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jline/builtins/telnet/TelnetIO;->noIac:Z

    .line 455
    :goto_0
    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    iget-boolean v2, p0, Lorg/jline/builtins/telnet/TelnetIO;->noIac:Z

    if-nez v2, :cond_1

    .line 460
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO;->rawread()I

    move-result v0

    .line 461
    if-eq v0, v1, :cond_0

    .line 462
    iget-object v1, p0, Lorg/jline/builtins/telnet/TelnetIO;->iacHandler:Lorg/jline/builtins/telnet/TelnetIO$IACHandler;

    invoke-virtual {v1, v0}, Lorg/jline/builtins/telnet/TelnetIO$IACHandler;->handleC(I)V

    .line 463
    invoke-direct {p0}, Lorg/jline/builtins/telnet/TelnetIO;->rawread()I

    move-result v0

    goto :goto_0

    .line 465
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jline/builtins/telnet/TelnetIO;->noIac:Z

    goto :goto_0

    .line 468
    :cond_1
    invoke-direct {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO;->stripCRSeq(I)I

    move-result v1

    return v1
.end method

.method public setConnection(Lorg/jline/builtins/telnet/Connection;)V
    .locals 1
    .param p1, "con"    # Lorg/jline/builtins/telnet/Connection;

    .line 328
    iput-object p1, p0, Lorg/jline/builtins/telnet/TelnetIO;->connection:Lorg/jline/builtins/telnet/Connection;

    .line 329
    invoke-virtual {p1}, Lorg/jline/builtins/telnet/Connection;->getConnectionData()Lorg/jline/builtins/telnet/ConnectionData;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->connectionData:Lorg/jline/builtins/telnet/ConnectionData;

    .line 330
    return-void
.end method

.method public setEcho(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 608
    return-void
.end method

.method public write(B)V
    .locals 2
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->crFlag:Z

    const/16 v1, 0xd

    if-nez v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 348
    if-ne p1, v1, :cond_1

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->crFlag:Z

    goto :goto_0

    .line 351
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/TelnetIO;->crFlag:Z

    .line 353
    :goto_0
    return-void
.end method

.method public write(C)V
    .locals 1
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO;->write(B)V

    .line 398
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO;->write(B)V

    .line 364
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/telnet/TelnetIO;->write([B)V

    .line 408
    return-void
.end method

.method public write([B)V
    .locals 3
    .param p1, "sequence"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 374
    .local v2, "b":B
    invoke-virtual {p0, v2}, Lorg/jline/builtins/telnet/TelnetIO;->write(B)V

    .line 373
    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    :cond_0
    return-void
.end method

.method public write([I)V
    .locals 4
    .param p1, "sequence"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 386
    .local v2, "i":I
    int-to-byte v3, v2

    invoke-virtual {p0, v3}, Lorg/jline/builtins/telnet/TelnetIO;->write(B)V

    .line 385
    .end local v2    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method
