.class public Lorg/jpos/iso/IFB_LLLHNUM;
.super Lorg/jpos/iso/ISOStringFieldPackager;
.source "IFB_LLLHNUM.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    sget-object v0, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    sget-object v1, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    sget-object v2, Lorg/jpos/iso/BinaryPrefixer;->BB:Lorg/jpos/iso/BinaryPrefixer;

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/iso/ISOStringFieldPackager;-><init>(Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "pad"    # Z

    .line 39
    sget-object v3, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    if-eqz p3, :cond_0

    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->LEFT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    :goto_0
    move-object v4, v0

    sget-object v5, Lorg/jpos/iso/BinaryPrefixer;->BB:Lorg/jpos/iso/BinaryPrefixer;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/jpos/iso/ISOStringFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 42
    iput-boolean p3, p0, Lorg/jpos/iso/IFB_LLLHNUM;->pad:Z

    .line 43
    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFB_LLLHNUM;->checkLength(II)V

    .line 44
    return-void
.end method


# virtual methods
.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .line 48
    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFB_LLLHNUM;->checkLength(II)V

    .line 49
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOStringFieldPackager;->setLength(I)V

    .line 50
    return-void
.end method

.method public setPad(Z)V
    .locals 1
    .param p1, "pad"    # Z

    .line 53
    iput-boolean p1, p0, Lorg/jpos/iso/IFB_LLLHNUM;->pad:Z

    .line 54
    if-eqz p1, :cond_0

    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->LEFT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jpos/iso/IFB_LLLHNUM;->setInterpreter(Lorg/jpos/iso/Interpreter;)V

    .line 55
    return-void
.end method
