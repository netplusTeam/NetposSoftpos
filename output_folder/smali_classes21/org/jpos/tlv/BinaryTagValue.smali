.class public Lorg/jpos/tlv/BinaryTagValue;
.super Lorg/jpos/tlv/TagValueBase;
.source "BinaryTagValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jpos/tlv/TagValueBase<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/jpos/tlv/TagValueBase;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    return-void
.end method
