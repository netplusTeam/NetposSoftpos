.class public Lorg/jpos/tlv/packager/IF_FBINARY;
.super Lorg/jpos/iso/ISOBinaryFieldPackager;
.source "IF_FBINARY.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/tlv/packager/IF_FBINARY$FullyConsumingPrefixer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    invoke-static {}, Lorg/jpos/tlv/packager/IF_FBINARY$FullyConsumingPrefixer;->access$000()Lorg/jpos/tlv/packager/IF_FBINARY$FullyConsumingPrefixer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 34
    return-void
.end method
