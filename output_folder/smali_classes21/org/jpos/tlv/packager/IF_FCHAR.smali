.class public Lorg/jpos/tlv/packager/IF_FCHAR;
.super Lorg/jpos/iso/ISOStringFieldPackager;
.source "IF_FCHAR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/tlv/packager/IF_FCHAR$FullyConsumingPrefixer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 36
    sget-object v0, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    sget-object v1, Lorg/jpos/iso/AsciiInterpreter;->INSTANCE:Lorg/jpos/iso/AsciiInterpreter;

    invoke-static {}, Lorg/jpos/tlv/packager/IF_FCHAR$FullyConsumingPrefixer;->access$000()Lorg/jpos/tlv/packager/IF_FCHAR$FullyConsumingPrefixer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jpos/iso/ISOStringFieldPackager;-><init>(Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V

    .line 37
    return-void
.end method
