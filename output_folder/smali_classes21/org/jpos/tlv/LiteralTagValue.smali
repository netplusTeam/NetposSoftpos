.class public Lorg/jpos/tlv/LiteralTagValue;
.super Lorg/jpos/tlv/TagValueBase;
.source "LiteralTagValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jpos/tlv/TagValueBase<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/jpos/tlv/TagValueBase;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    return-void
.end method
