.class public Lorg/jpos/iso/IFMC_LLCHAR;
.super Lorg/jpos/iso/ISOTagStringFieldPackager;
.source "IFMC_LLCHAR.java"


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 38
    sget-object v3, Lorg/jpos/iso/AsciiPrefixer;->LL:Lorg/jpos/iso/AsciiPrefixer;

    sget-object v4, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    sget-object v5, Lorg/jpos/iso/AsciiInterpreter;->INSTANCE:Lorg/jpos/iso/AsciiInterpreter;

    sget-object v6, Lorg/jpos/iso/AsciiPrefixer;->LL:Lorg/jpos/iso/AsciiPrefixer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/jpos/iso/ISOTagStringFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 46
    sget-object v3, Lorg/jpos/iso/AsciiPrefixer;->LL:Lorg/jpos/iso/AsciiPrefixer;

    sget-object v4, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    sget-object v5, Lorg/jpos/iso/AsciiInterpreter;->INSTANCE:Lorg/jpos/iso/AsciiInterpreter;

    sget-object v6, Lorg/jpos/iso/AsciiPrefixer;->LL:Lorg/jpos/iso/AsciiPrefixer;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/jpos/iso/ISOTagStringFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 48
    return-void
.end method
