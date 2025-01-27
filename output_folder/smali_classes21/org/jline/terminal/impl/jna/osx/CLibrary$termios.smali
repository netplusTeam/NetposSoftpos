.class public Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;
.super Lcom/sun/jna/Structure;
.source "CLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/jna/osx/CLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "termios"
.end annotation


# instance fields
.field public c_cc:[B

.field public c_cflag:Lcom/sun/jna/NativeLong;

.field public c_iflag:Lcom/sun/jna/NativeLong;

.field public c_ispeed:Lcom/sun/jna/NativeLong;

.field public c_lflag:Lcom/sun/jna/NativeLong;

.field public c_oflag:Lcom/sun/jna/NativeLong;

.field public c_ospeed:Lcom/sun/jna/NativeLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 77
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Attributes;)V
    .locals 16
    .param p1, "t"    # Lorg/jline/terminal/Attributes;

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 77
    const/16 v2, 0x14

    new-array v2, v2, [B

    iput-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    .line 99
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x1

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 100
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->BRKINT:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v6, 0x2

    invoke-direct {v0, v2, v6, v7, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 101
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IGNPAR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v8, 0x4

    invoke-direct {v0, v2, v8, v9, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 102
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->PARMRK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v10, 0x8

    invoke-direct {v0, v2, v10, v11, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 103
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->INPCK:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v12, 0x10

    invoke-direct {v0, v2, v12, v13, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 104
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->ISTRIP:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v14, 0x20

    invoke-direct {v0, v2, v14, v15, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 105
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v14, 0x40

    invoke-direct {v0, v2, v14, v15, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 106
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v14, 0x80

    invoke-direct {v0, v2, v14, v15, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 107
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v14, 0x100

    invoke-direct {v0, v2, v14, v15, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 108
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IXON:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v14, 0x200

    invoke-direct {v0, v2, v14, v15, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 109
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IXOFF:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v14, 0x400

    invoke-direct {v0, v2, v14, v15, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 110
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IXANY:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v14, 0x800

    invoke-direct {v0, v2, v14, v15, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 111
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IMAXBEL:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v14, 0x2000

    invoke-direct {v0, v2, v14, v15, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 112
    sget-object v2, Lorg/jline/terminal/Attributes$InputFlag;->IUTF8:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getInputFlag(Lorg/jline/terminal/Attributes$InputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v14, 0x4000

    invoke-direct {v0, v2, v14, v15, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 114
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 115
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-direct {v0, v2, v6, v7, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 116
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->OXTABS:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-direct {v0, v2, v8, v9, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 117
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->ONOEOT:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-direct {v0, v2, v10, v11, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 118
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->OCRNL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-direct {v0, v2, v12, v13, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 119
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->ONOCR:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v12, 0x20

    invoke-direct {v0, v2, v12, v13, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 120
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->ONLRET:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v12, 0x40

    invoke-direct {v0, v2, v12, v13, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 121
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->OFILL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v12, 0x80

    invoke-direct {v0, v2, v12, v13, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 122
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->NLDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v12, 0x300

    invoke-direct {v0, v2, v12, v13, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 123
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->TABDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v10, 0xc04

    invoke-direct {v0, v2, v10, v11, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 124
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->CRDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v10, 0x3000

    invoke-direct {v0, v2, v10, v11, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 125
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->FFDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-direct {v0, v2, v14, v15, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 126
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->BSDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    const-wide/32 v10, 0x8000

    invoke-direct {v0, v2, v10, v11, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 127
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->VTDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    const-wide/32 v8, 0x10000

    invoke-direct {v0, v2, v8, v9, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 128
    sget-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->OFDEL:Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getOutputFlag(Lorg/jline/terminal/Attributes$OutputFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    const-wide/32 v6, 0x20000

    invoke-direct {v0, v2, v6, v7, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 130
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CIGNORE:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 131
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CS5:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 132
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CS6:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x100

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 133
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CS7:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x200

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 134
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CS8:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-direct {v0, v2, v12, v13, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 135
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CSTOPB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x400

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 136
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CREAD:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x800

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 137
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->PARENB:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x1000

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 138
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->PARODD:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x2000

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 139
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->HUPCL:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-direct {v0, v2, v14, v15, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 140
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CLOCAL:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-direct {v0, v2, v10, v11, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 141
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CCTS_OFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-direct {v0, v2, v8, v9, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 142
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CRTS_IFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-direct {v0, v2, v6, v7, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 143
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CDTR_IFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    const-wide/32 v4, 0x40000

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 144
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CDSR_OFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    const-wide/32 v4, 0x80000

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 145
    sget-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CCAR_OFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getControlFlag(Lorg/jline/terminal/Attributes$ControlFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    const-wide/32 v4, 0x100000

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 147
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOKE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x1

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 148
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x2

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 149
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOK:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x4

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 150
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x8

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 151
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHONL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x10

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 152
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOPRT:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x20

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 153
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOCTL:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x40

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 154
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x80

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 155
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x100

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 156
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->ALTWERASE:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x200

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 157
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x400

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 158
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->EXTPROC:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/16 v4, 0x800

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 159
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->TOSTOP:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/32 v4, 0x400000

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 160
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->FLUSHO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/32 v4, 0x800000

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 161
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->NOKERNINFO:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/32 v4, 0x2000000

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 162
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->PENDIN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/32 v4, 0x20000000

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 163
    sget-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->NOFLSH:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Attributes;->getLocalFlag(Lorg/jline/terminal/Attributes$LocalFlag;)Z

    move-result v2

    iget-object v3, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    const-wide/32 v4, -0x80000000

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->setFlag(ZJLcom/sun/jna/NativeLong;)V

    .line 165
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 166
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    .line 167
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOL2:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    .line 168
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    .line 169
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x4

    aput-byte v3, v2, v4

    .line 170
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v2, v4

    .line 171
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VREPRINT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v2, v4

    .line 172
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x8

    aput-byte v3, v2, v4

    .line 173
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x9

    aput-byte v3, v2, v4

    .line 174
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xa

    aput-byte v3, v2, v4

    .line 175
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VDSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xb

    aput-byte v3, v2, v4

    .line 176
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSTART:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xc

    aput-byte v3, v2, v4

    .line 177
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSTOP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xd

    aput-byte v3, v2, v4

    .line 178
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xe

    aput-byte v3, v2, v4

    .line 179
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VDISCARD:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0xf

    aput-byte v3, v2, v4

    .line 180
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x10

    aput-byte v3, v2, v4

    .line 181
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x11

    aput-byte v3, v2, v4

    .line 182
    iget-object v2, v0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSTATUS:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v1, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x12

    aput-byte v3, v2, v4

    .line 183
    return-void
.end method

.method private addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V
    .locals 4
    .param p1, "value"    # J
    .param p5, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(J",
            "Ljava/util/EnumSet<",
            "TT;>;TT;I)V"
        }
    .end annotation

    .line 286
    .local p3, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TT;>;"
    .local p4, "flag":Ljava/lang/Enum;, "TT;"
    int-to-long v0, p5

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p3, p4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_0
    return-void
.end method

.method private setFlag(ZJLcom/sun/jna/NativeLong;)V
    .locals 2
    .param p1, "flag"    # Z
    .param p2, "value"    # J
    .param p4, "org"    # Lcom/sun/jna/NativeLong;

    .line 186
    invoke-virtual {p4}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v0

    if-eqz p1, :cond_0

    or-long/2addr v0, p2

    :cond_0
    invoke-virtual {p4, v0, v1}, Lcom/sun/jna/NativeLong;->setValue(J)V

    .line 187
    return-void
.end method


# virtual methods
.method protected getFieldOrder()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    const-string v0, "c_iflag"

    const-string v1, "c_oflag"

    const-string v2, "c_cflag"

    const-string v3, "c_lflag"

    const-string v4, "c_cc"

    const-string v5, "c_ispeed"

    const-string v6, "c_ospeed"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toAttributes()Lorg/jline/terminal/Attributes;
    .locals 11

    .line 190
    new-instance v0, Lorg/jline/terminal/Attributes;

    invoke-direct {v0}, Lorg/jline/terminal/Attributes;-><init>()V

    move-object v6, v0

    .line 192
    .local v6, "attr":Lorg/jline/terminal/Attributes;
    invoke-virtual {v6}, Lorg/jline/terminal/Attributes;->getInputFlags()Ljava/util/EnumSet;

    move-result-object v7

    .line 193
    .local v7, "iflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$InputFlag;>;"
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 194
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 195
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->BRKINT:Lorg/jline/terminal/Attributes$InputFlag;

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 196
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IGNPAR:Lorg/jline/terminal/Attributes$InputFlag;

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 197
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->PARMRK:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v5, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 198
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->INPCK:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v5, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 199
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->ISTRIP:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v5, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 200
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v5, 0x40

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 201
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v5, 0x80

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 202
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v5, 0x100

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 203
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IXON:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v5, 0x200

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 204
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IXOFF:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v5, 0x400

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 205
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IXANY:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v5, 0x800

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 206
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IMAXBEL:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v5, 0x2000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 207
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_iflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$InputFlag;->IUTF8:Lorg/jline/terminal/Attributes$InputFlag;

    const/16 v5, 0x4000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 209
    invoke-virtual {v6}, Lorg/jline/terminal/Attributes;->getOutputFlags()Ljava/util/EnumSet;

    move-result-object v8

    .line 210
    .local v8, "oflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$OutputFlag;>;"
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 211
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 212
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->OXTABS:Lorg/jline/terminal/Attributes$OutputFlag;

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 213
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->ONOEOT:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v5, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 214
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->OCRNL:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v5, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 215
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->ONOCR:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v5, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 216
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->ONLRET:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v5, 0x40

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 217
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->OFILL:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v5, 0x80

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 218
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->NLDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v5, 0x300

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 219
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->TABDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v5, 0xc04

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 220
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->CRDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v5, 0x3000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 221
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->FFDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    const/16 v5, 0x4000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 222
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->BSDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    const v5, 0x8000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 223
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->VTDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    const/high16 v5, 0x10000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 224
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_oflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->OFDEL:Lorg/jline/terminal/Attributes$OutputFlag;

    const/high16 v5, 0x20000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 226
    invoke-virtual {v6}, Lorg/jline/terminal/Attributes;->getControlFlags()Ljava/util/EnumSet;

    move-result-object v9

    .line 227
    .local v9, "cflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$ControlFlag;>;"
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CIGNORE:Lorg/jline/terminal/Attributes$ControlFlag;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 228
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CS5:Lorg/jline/terminal/Attributes$ControlFlag;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 229
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CS6:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v5, 0x100

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 230
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CS7:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v5, 0x200

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 231
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CS8:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v5, 0x300

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 232
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CSTOPB:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v5, 0x400

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 233
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CREAD:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v5, 0x800

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 234
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->PARENB:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v5, 0x1000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 235
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->PARODD:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v5, 0x2000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 236
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->HUPCL:Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v5, 0x4000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 237
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CLOCAL:Lorg/jline/terminal/Attributes$ControlFlag;

    const v5, 0x8000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 238
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CCTS_OFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    const/high16 v5, 0x10000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 239
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CRTS_IFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    const/high16 v5, 0x20000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 240
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CDSR_OFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    const/high16 v5, 0x80000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 241
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CCAR_OFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    const/high16 v5, 0x100000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 243
    invoke-virtual {v6}, Lorg/jline/terminal/Attributes;->getLocalFlags()Ljava/util/EnumSet;

    move-result-object v10

    .line 244
    .local v10, "lflag":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/Attributes$LocalFlag;>;"
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOKE:Lorg/jline/terminal/Attributes$LocalFlag;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 245
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOE:Lorg/jline/terminal/Attributes$LocalFlag;

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 246
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOK:Lorg/jline/terminal/Attributes$LocalFlag;

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 247
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v5, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 248
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->ECHONL:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v5, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 249
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOPRT:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v5, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 250
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOCTL:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v5, 0x40

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 251
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v5, 0x80

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 252
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v5, 0x100

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 253
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->ALTWERASE:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v5, 0x200

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 254
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v5, 0x400

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 255
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->EXTPROC:Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v5, 0x800

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 256
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->TOSTOP:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v5, 0x400000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 257
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->FLUSHO:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v5, 0x800000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 258
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->NOKERNINFO:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v5, 0x2000000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 259
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->PENDIN:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v5, 0x20000000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 260
    iget-object v0, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_lflag:Lcom/sun/jna/NativeLong;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->NOFLSH:Lorg/jline/terminal/Attributes$LocalFlag;

    const/high16 v5, -0x80000000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->addFlag(JLjava/util/EnumSet;Ljava/lang/Enum;I)V

    .line 262
    invoke-virtual {v6}, Lorg/jline/terminal/Attributes;->getControlChars()Ljava/util/EnumMap;

    move-result-object v0

    .line 263
    .local v0, "cc":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lorg/jline/terminal/Attributes$ControlChar;Ljava/lang/Integer;>;"
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VEOL:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VEOL2:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VREPRINT:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/16 v3, 0x8

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/16 v3, 0xa

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VDSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/16 v3, 0xb

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VSTART:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/16 v3, 0xc

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VSTOP:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/16 v3, 0xd

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VDISCARD:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/16 v3, 0xf

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/16 v3, 0x10

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/16 v3, 0x11

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VSTATUS:Lorg/jline/terminal/Attributes$ControlChar;

    iget-object v2, p0, Lorg/jline/terminal/impl/jna/osx/CLibrary$termios;->c_cc:[B

    const/16 v3, 0x12

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-object v6
.end method
