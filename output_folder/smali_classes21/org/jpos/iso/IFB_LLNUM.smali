.class public Lorg/jpos/iso/IFB_LLNUM;
.super Lorg/jpos/iso/ISOStringFieldPackager;
.source "IFB_LLNUM.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    sget-object v0, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    sget-object v1, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    sget-object v2, Lorg/jpos/iso/BcdPrefixer;->LL:Lorg/jpos/iso/BcdPrefixer;

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/iso/ISOStringFieldPackager;-><init>(Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isLeftPadded"    # Z

    .line 37
    sget-object v3, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    if-eqz p3, :cond_0

    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->LEFT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    :goto_0
    move-object v4, v0

    sget-object v5, Lorg/jpos/iso/BcdPrefixer;->LL:Lorg/jpos/iso/BcdPrefixer;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/jpos/iso/ISOStringFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 40
    const/16 v0, 0x63

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFB_LLNUM;->checkLength(II)V

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 6
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isLeftPadded"    # Z
    .param p4, "fPadded"    # Z

    .line 44
    sget-object v3, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    if-eqz p3, :cond_0

    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->LEFT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED_F:Lorg/jpos/iso/BCDInterpreter;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    goto :goto_0

    :goto_1
    sget-object v5, Lorg/jpos/iso/BcdPrefixer;->LL:Lorg/jpos/iso/BcdPrefixer;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/jpos/iso/ISOStringFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 48
    const/16 v0, 0x63

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFB_LLNUM;->checkLength(II)V

    .line 49
    return-void
.end method


# virtual methods
.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .line 53
    const/16 v0, 0x63

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFB_LLNUM;->checkLength(II)V

    .line 54
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOStringFieldPackager;->setLength(I)V

    .line 55
    return-void
.end method

.method public setPad(Z)V
    .locals 1
    .param p1, "pad"    # Z

    .line 60
    if-eqz p1, :cond_0

    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->LEFT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jpos/iso/IFB_LLNUM;->setInterpreter(Lorg/jpos/iso/Interpreter;)V

    .line 61
    iput-boolean p1, p0, Lorg/jpos/iso/IFB_LLNUM;->pad:Z

    .line 62
    return-void
.end method
