.class public Lorg/jpos/iso/IFE_LCHAR;
.super Lorg/jpos/iso/ISOStringFieldPackager;
.source "IFE_LCHAR.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 34
    sget-object v0, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    sget-object v1, Lorg/jpos/iso/EbcdicInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicInterpreter;

    sget-object v2, Lorg/jpos/iso/EbcdicPrefixer;->L:Lorg/jpos/iso/EbcdicPrefixer;

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/iso/ISOStringFieldPackager;-><init>(Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 41
    sget-object v3, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    sget-object v4, Lorg/jpos/iso/EbcdicInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicInterpreter;

    sget-object v5, Lorg/jpos/iso/EbcdicPrefixer;->L:Lorg/jpos/iso/EbcdicPrefixer;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/jpos/iso/ISOStringFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 42
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFE_LCHAR;->checkLength(II)V

    .line 43
    return-void
.end method


# virtual methods
.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .line 47
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/IFE_LCHAR;->checkLength(II)V

    .line 48
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOStringFieldPackager;->setLength(I)V

    .line 49
    return-void
.end method
