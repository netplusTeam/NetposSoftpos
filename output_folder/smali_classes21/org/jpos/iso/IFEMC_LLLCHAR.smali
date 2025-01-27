.class public Lorg/jpos/iso/IFEMC_LLLCHAR;
.super Lorg/jpos/iso/ISOTagStringFieldPackager;
.source "IFEMC_LLLCHAR.java"


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 23
    sget-object v3, Lorg/jpos/iso/EbcdicPrefixer;->LLLL:Lorg/jpos/iso/EbcdicPrefixer;

    sget-object v4, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    sget-object v5, Lorg/jpos/iso/EbcdicInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicInterpreter;

    sget-object v6, Lorg/jpos/iso/EbcdicPrefixer;->LLL:Lorg/jpos/iso/EbcdicPrefixer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/jpos/iso/ISOTagStringFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 31
    sget-object v3, Lorg/jpos/iso/EbcdicPrefixer;->LLLL:Lorg/jpos/iso/EbcdicPrefixer;

    sget-object v4, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    sget-object v5, Lorg/jpos/iso/EbcdicInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicInterpreter;

    sget-object v6, Lorg/jpos/iso/EbcdicPrefixer;->LLL:Lorg/jpos/iso/EbcdicPrefixer;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/jpos/iso/ISOTagStringFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 33
    return-void
.end method
