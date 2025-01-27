.class public Lorg/jpos/iso/IFE_AMOUNT;
.super Lorg/jpos/iso/ISOAmountFieldPackager;
.source "IFE_AMOUNT.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 34
    sget-object v3, Lorg/jpos/iso/LeftPadder;->ZERO_PADDER:Lorg/jpos/iso/LeftPadder;

    sget-object v4, Lorg/jpos/iso/EbcdicInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicInterpreter;

    sget-object v5, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jpos/iso/ISOAmountFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 41
    sget-object v3, Lorg/jpos/iso/LeftPadder;->ZERO_PADDER:Lorg/jpos/iso/LeftPadder;

    sget-object v4, Lorg/jpos/iso/EbcdicInterpreter;->INSTANCE:Lorg/jpos/iso/EbcdicInterpreter;

    sget-object v5, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/jpos/iso/ISOAmountFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 42
    return-void
.end method
