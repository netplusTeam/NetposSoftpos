.class public Lorg/jpos/iso/IFB_HEX;
.super Lorg/jpos/iso/ISOStringFieldPackager;
.source "IFB_HEX.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 29
    sget-object v0, Lorg/jpos/iso/LeftPadder;->ZERO_PADDER:Lorg/jpos/iso/LeftPadder;

    sget-object v1, Lorg/jpos/iso/HEXInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/HEXInterpreter;

    sget-object v2, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/iso/ISOStringFieldPackager;-><init>(Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isLeftPadded"    # Z

    .line 36
    sget-object v3, Lorg/jpos/iso/LeftPadder;->ZERO_PADDER:Lorg/jpos/iso/LeftPadder;

    if-eqz p3, :cond_0

    sget-object v0, Lorg/jpos/iso/HEXInterpreter;->LEFT_PADDED:Lorg/jpos/iso/HEXInterpreter;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jpos/iso/HEXInterpreter;->RIGHT_PADDED_F:Lorg/jpos/iso/HEXInterpreter;

    :goto_0
    move-object v4, v0

    sget-object v5, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/jpos/iso/ISOStringFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 39
    return-void
.end method


# virtual methods
.method public setPad(Z)V
    .locals 1
    .param p1, "pad"    # Z

    .line 44
    if-eqz p1, :cond_0

    sget-object v0, Lorg/jpos/iso/HEXInterpreter;->LEFT_PADDED:Lorg/jpos/iso/HEXInterpreter;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jpos/iso/HEXInterpreter;->RIGHT_PADDED_F:Lorg/jpos/iso/HEXInterpreter;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jpos/iso/IFB_HEX;->setInterpreter(Lorg/jpos/iso/Interpreter;)V

    .line 45
    iput-boolean p1, p0, Lorg/jpos/iso/IFB_HEX;->pad:Z

    .line 46
    return-void
.end method
