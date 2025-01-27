.class public Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;
.super Lcom/sun/jna/Structure;
.source "CLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/solaris/CLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "termios"
.end annotation


# instance fields
.field public c_cc:[B

.field public c_cflag:I

.field public c_iflag:I

.field public c_lflag:I

.field public c_oflag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 76
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Attributes;)V
    .locals 16
    .param p1, "t"    # Lorg/jline/terminal/Attributes;

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 76
    const/16 v2, 0x20

    new-array v3, v2, [B

    iput-object v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    .line 94
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 95
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->BRKINT:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/4 v6, 0x2

    invoke-direct {v0, v3, v6, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 96
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->IGNPAR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/4 v7, 0x4

    invoke-direct {v0, v3, v7, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 97
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->PARMRK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/16 v8, 0x10

    invoke-direct {v0, v3, v8, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 98
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->INPCK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    invoke-direct {v0, v3, v2, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 99
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->ISTRIP:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/16 v9, 0x40

    invoke-direct {v0, v3, v9, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 100
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/16 v10, 0x100

    invoke-direct {v0, v3, v10, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 101
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/16 v11, 0x200

    invoke-direct {v0, v3, v11, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 102
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/16 v12, 0x400

    invoke-direct {v0, v3, v12, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 103
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->IXON:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/16 v13, 0x2000

    invoke-direct {v0, v3, v13, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 104
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->IXOFF:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/high16 v14, 0x10000

    invoke-direct {v0, v3, v14, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 105
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->IXANY:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/16 v15, 0x4000

    invoke-direct {v0, v3, v15, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 106
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->IMAXBEL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/high16 v14, 0x20000

    invoke-direct {v0, v3, v14, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 107
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->IUTF8:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    const/high16 v6, 0x40000

    invoke-direct {v0, v3, v6, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    .line 109
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    invoke-direct {v0, v3, v5, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 110
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    invoke-direct {v0, v3, v7, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 111
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->OCRNL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    invoke-direct {v0, v3, v8, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 112
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->ONOCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    invoke-direct {v0, v3, v2, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 113
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->ONLRET:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    invoke-direct {v0, v3, v9, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 114
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->OFILL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    invoke-direct {v0, v3, v10, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 115
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->NLDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    invoke-direct {v0, v3, v12, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 116
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->TABDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    const v7, 0x14000

    invoke-direct {v0, v3, v7, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 117
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->CRDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    const/16 v7, 0x3000

    invoke-direct {v0, v3, v7, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 118
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->FFDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    const/high16 v7, 0x100000

    invoke-direct {v0, v3, v7, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 119
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->BSDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    invoke-direct {v0, v3, v14, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 120
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->VTDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    invoke-direct {v0, v3, v6, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 121
    sget-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->OFDEL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    invoke-direct {v0, v3, v11, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    .line 123
    sget-object v3, Lorg/jline/terminal/Attributes$ControlFlag;->CS5:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    const/4 v14, 0x0

    invoke-direct {v0, v3, v14, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    .line 124
    sget-object v3, Lorg/jline/terminal/Attributes$ControlFlag;->CS6:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    invoke-direct {v0, v3, v2, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    .line 125
    sget-object v3, Lorg/jline/terminal/Attributes$ControlFlag;->CS7:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    invoke-direct {v0, v3, v9, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    .line 126
    sget-object v3, Lorg/jline/terminal/Attributes$ControlFlag;->CS8:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    const/16 v14, 0x60

    invoke-direct {v0, v3, v14, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    .line 127
    sget-object v3, Lorg/jline/terminal/Attributes$ControlFlag;->CSTOPB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    invoke-direct {v0, v3, v10, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    .line 128
    sget-object v3, Lorg/jline/terminal/Attributes$ControlFlag;->CREAD:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    invoke-direct {v0, v3, v11, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    .line 129
    sget-object v3, Lorg/jline/terminal/Attributes$ControlFlag;->PARENB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    invoke-direct {v0, v3, v12, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    .line 130
    sget-object v3, Lorg/jline/terminal/Attributes$ControlFlag;->PARODD:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    const/16 v14, 0x1000

    invoke-direct {v0, v3, v14, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    .line 131
    sget-object v3, Lorg/jline/terminal/Attributes$ControlFlag;->HUPCL:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    invoke-direct {v0, v3, v13, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    .line 132
    sget-object v3, Lorg/jline/terminal/Attributes$ControlFlag;->CLOCAL:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    invoke-direct {v0, v3, v15, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    .line 134
    sget-object v3, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOKE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    invoke-direct {v0, v3, v15, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v3

    iput v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 135
    sget-object v3, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v3

    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    invoke-direct {v0, v3, v2, v4}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 136
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOK:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    invoke-direct {v0, v2, v9, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 137
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    invoke-direct {v0, v2, v8, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 138
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHONL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    invoke-direct {v0, v2, v10, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 139
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOPRT:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    invoke-direct {v0, v2, v13, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 140
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOCTL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    invoke-direct {v0, v2, v14, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 141
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    invoke-direct {v0, v2, v5, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 142
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 143
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    invoke-direct {v0, v2, v7, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 144
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->EXTPROC:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    const/high16 v4, 0x200000

    invoke-direct {v0, v2, v4, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 145
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->TOSTOP:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    invoke-direct {v0, v2, v12, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 146
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->FLUSHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    const/high16 v4, 0x10000

    invoke-direct {v0, v2, v4, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 147
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->PENDIN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    invoke-direct {v0, v2, v6, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 148
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->NOFLSH:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    invoke-direct {v0, v2, v11, v3}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->setFlag(ZII)I

    move-result v2

    iput v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    .line 150
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x4

    aput-byte v3, v2, v4

    .line 151
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xb

    aput-byte v3, v2, v4

    .line 152
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOL2:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    .line 153
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    .line 154
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xe

    aput-byte v3, v2, v4

    .line 155
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    .line 156
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VREPRINT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xc

    aput-byte v3, v2, v4

    .line 157
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 158
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 159
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xa

    aput-byte v3, v2, v4

    .line 160
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSTART:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x8

    aput-byte v3, v2, v4

    .line 161
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSTOP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x9

    aput-byte v3, v2, v4

    .line 162
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xf

    aput-byte v3, v2, v4

    .line 163
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VDISCARD:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xd

    aput-byte v3, v2, v4

    .line 164
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v2, v4

    .line 165
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v2, v4

    .line 166
    return-void
.end method

.method private addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V
    .locals 1
    .param p1, "value"    # I
    .param p4, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(I",
            "Ljava/util/EnumSet<",
            "TT;>;TT;I)V"
        }
    .end annotation

    .line 258
    .local p2, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TT;>;"
    .local p3, "flag":Ljava/lang/Enum;, "TT;"
    and-int v0, p1, p4

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    return-void
.end method

.method private setFlag(ZII)I
    .locals 1
    .param p1, "flag"    # Z
    .param p2, "value"    # I
    .param p3, "org"    # I

    .line 169
    if-eqz p1, :cond_0

    or-int v0, p3, p2

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    return v0
.end method


# virtual methods
.method protected getFieldOrder()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    const-string v0, "c_iflag"

    const-string v1, "c_oflag"

    const-string v2, "c_cflag"

    const-string v3, "c_lflag"

    const-string v4, "c_cc"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toAttributes()Lorg/jline/terminal/Attributes;
    .locals 16

    .line 173
    move-object/from16 v0, p0

    new-instance v1, Lorg/jline/terminal/Attributes;

    invoke-direct {v1}, Lorg/jline/terminal/Attributes;-><init>()V

    .line 175
    .local v1, "attr":Lorg/jline/terminal/Attributes;
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getInputFlags()Ljava/util/EnumSet;

    move-result-object v2

    .line 176
    .local v2, "iflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$InputFlag;>;"
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    const/4 v5, 0x1

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 177
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 178
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->BRKINT:Lorg/jline/terminal/Attributes$InputFlag;

    const/4 v6, 0x2

    invoke-direct {v0, v3, v2, v4, v6}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 179
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IGNPAR:Lorg/jline/terminal/Attributes$InputFlag;

    const/4 v7, 0x4

    invoke-direct {v0, v3, v2, v4, v7}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 180
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->PARMRK:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v8, 0x10

    invoke-direct {v0, v3, v2, v4, v8}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 181
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->INPCK:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v9, 0x20

    invoke-direct {v0, v3, v2, v4, v9}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 182
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->ISTRIP:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v10, 0x40

    invoke-direct {v0, v3, v2, v4, v10}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 183
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v11, 0x100

    invoke-direct {v0, v3, v2, v4, v11}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 184
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v12, 0x200

    invoke-direct {v0, v3, v2, v4, v12}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 185
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v13, 0x400

    invoke-direct {v0, v3, v2, v4, v13}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 186
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IXON:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v14, 0x2000

    invoke-direct {v0, v3, v2, v4, v14}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 187
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IXOFF:Lorg/jline/terminal/Attributes$InputFlag;

    const/high16 v15, 0x10000

    invoke-direct {v0, v3, v2, v4, v15}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 188
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IXANY:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v15, 0x4000

    invoke-direct {v0, v3, v2, v4, v15}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 189
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IMAXBEL:Lorg/jline/terminal/Attributes$InputFlag;

    const/high16 v6, 0x20000

    invoke-direct {v0, v3, v2, v4, v6}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 190
    iget v3, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_iflag:I

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IUTF8:Lorg/jline/terminal/Attributes$InputFlag;

    const/high16 v15, 0x40000

    invoke-direct {v0, v3, v2, v4, v15}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 192
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getOutputFlags()Ljava/util/EnumSet;

    move-result-object v3

    .line 193
    .local v3, "oflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$OutputFlag;>;"
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v14, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-direct {v0, v4, v3, v14, v5}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 194
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v14, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-direct {v0, v4, v3, v14, v7}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 195
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v14, Lorg/jline/terminal/Attributes$OutputFlag;->OCRNL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-direct {v0, v4, v3, v14, v8}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 196
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v14, Lorg/jline/terminal/Attributes$OutputFlag;->ONOCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-direct {v0, v4, v3, v14, v9}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 197
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v14, Lorg/jline/terminal/Attributes$OutputFlag;->ONLRET:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-direct {v0, v4, v3, v14, v10}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 198
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v14, Lorg/jline/terminal/Attributes$OutputFlag;->OFILL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-direct {v0, v4, v3, v14, v11}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 199
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v14, Lorg/jline/terminal/Attributes$OutputFlag;->NLDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-direct {v0, v4, v3, v14, v13}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 200
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v14, Lorg/jline/terminal/Attributes$OutputFlag;->TABDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    const v7, 0x14000

    invoke-direct {v0, v4, v3, v14, v7}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 201
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$OutputFlag;->CRDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v14, 0x3000

    invoke-direct {v0, v4, v3, v7, v14}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 202
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$OutputFlag;->FFDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    const/high16 v14, 0x100000

    invoke-direct {v0, v4, v3, v7, v14}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 203
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$OutputFlag;->BSDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-direct {v0, v4, v3, v7, v6}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 204
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v6, Lorg/jline/terminal/Attributes$OutputFlag;->VTDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-direct {v0, v4, v3, v6, v15}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 205
    iget v4, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_oflag:I

    sget-object v6, Lorg/jline/terminal/Attributes$OutputFlag;->OFDEL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-direct {v0, v4, v3, v6, v12}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 207
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getControlFlags()Ljava/util/EnumSet;

    move-result-object v4

    .line 208
    .local v4, "cflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$ControlFlag;>;"
    iget v6, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$ControlFlag;->CS5:Lorg/jline/terminal/Attributes$ControlFlag;

    const/4 v15, 0x0

    invoke-direct {v0, v6, v4, v7, v15}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 209
    iget v6, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$ControlFlag;->CS6:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-direct {v0, v6, v4, v7, v9}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 210
    iget v6, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$ControlFlag;->CS7:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-direct {v0, v6, v4, v7, v10}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 211
    iget v6, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$ControlFlag;->CS8:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v15, 0x60

    invoke-direct {v0, v6, v4, v7, v15}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 212
    iget v6, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$ControlFlag;->CSTOPB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-direct {v0, v6, v4, v7, v11}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 213
    iget v6, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$ControlFlag;->CREAD:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-direct {v0, v6, v4, v7, v12}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 214
    iget v6, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$ControlFlag;->PARENB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-direct {v0, v6, v4, v7, v13}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 215
    iget v6, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$ControlFlag;->PARODD:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v15, 0x1000

    invoke-direct {v0, v6, v4, v7, v15}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 216
    iget v6, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$ControlFlag;->HUPCL:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v12, 0x2000

    invoke-direct {v0, v6, v4, v7, v12}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 217
    iget v6, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cflag:I

    sget-object v7, Lorg/jline/terminal/Attributes$ControlFlag;->CLOCAL:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v12, 0x4000

    invoke-direct {v0, v6, v4, v7, v12}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 219
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getLocalFlags()Ljava/util/EnumSet;

    move-result-object v6

    .line 220
    .local v6, "lflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$LocalFlag;>;"
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v13, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOKE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-direct {v0, v7, v6, v13, v12}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 221
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v12, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-direct {v0, v7, v6, v12, v9}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 222
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOK:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-direct {v0, v7, v6, v9, v10}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 223
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-direct {v0, v7, v6, v9, v8}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 224
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->ECHONL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-direct {v0, v7, v6, v9, v11}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 225
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOPRT:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v10, 0x2000

    invoke-direct {v0, v7, v6, v9, v10}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 226
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOCTL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-direct {v0, v7, v6, v9, v15}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 227
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-direct {v0, v7, v6, v9, v5}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 228
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    const/4 v10, 0x2

    invoke-direct {v0, v7, v6, v9, v10}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 229
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-direct {v0, v7, v6, v9, v14}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 230
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->EXTPROC:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v10, 0x200000

    invoke-direct {v0, v7, v6, v9, v10}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 231
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->TOSTOP:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v10, 0x400

    invoke-direct {v0, v7, v6, v9, v10}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 232
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->FLUSHO:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v10, 0x10000

    invoke-direct {v0, v7, v6, v9, v10}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 233
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->PENDIN:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v10, 0x40000

    invoke-direct {v0, v7, v6, v9, v10}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 234
    iget v7, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_lflag:I

    sget-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->NOFLSH:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v10, 0x200

    invoke-direct {v0, v7, v6, v9, v10}, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->addFlag(ILjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 236
    invoke-virtual {v1}, Lorg/jline/terminal/Attributes;->getControlChars()Ljava/util/EnumMap;

    move-result-object v7

    .line 237
    .local v7, "cc":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lorg/jline/terminal/Attributes$ControlChar;Ljava/lang/Integer;>;"
    sget-object v9, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v10, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/4 v11, 0x4

    aget-byte v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v9, Lorg/jline/terminal/Attributes$ControlChar;->VEOL:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v10, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/16 v11, 0xb

    aget-byte v10, v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v9, Lorg/jline/terminal/Attributes$ControlChar;->VEOL2:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v10, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    aget-byte v8, v10, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v9, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v9, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/16 v10, 0xe

    aget-byte v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v9, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VREPRINT:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v9, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/16 v10, 0xc

    aget-byte v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v9, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v9, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    aget-byte v5, v9, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/16 v9, 0xa

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VSTART:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/16 v9, 0x8

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VSTOP:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/16 v9, 0x9

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/16 v9, 0xf

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VDISCARD:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/16 v9, 0xd

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/4 v9, 0x6

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v8, v0, Lorg/jline/terminal/impl/jna/solaris/CLibrary$termios;->c_cc:[B

    const/4 v9, 0x5

    aget-byte v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-object v1
.end method
