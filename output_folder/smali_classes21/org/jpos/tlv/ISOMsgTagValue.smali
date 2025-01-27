.class public Lorg/jpos/tlv/ISOMsgTagValue;
.super Lorg/jpos/tlv/TagValueBase;
.source "ISOMsgTagValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jpos/tlv/TagValueBase<",
        "Lorg/jpos/iso/ISOMsg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jpos/iso/ISOMsg;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/jpos/iso/ISOMsg;

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/jpos/tlv/TagValueBase;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    return-void
.end method
