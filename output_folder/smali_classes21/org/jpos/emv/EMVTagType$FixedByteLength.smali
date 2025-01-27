.class public Lorg/jpos/emv/EMVTagType$FixedByteLength;
.super Lorg/jpos/emv/EMVTagType$ByteLength;
.source "EMVTagType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/emv/EMVTagType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedByteLength"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "length"    # I

    .line 216
    invoke-direct {p0, p1, p1}, Lorg/jpos/emv/EMVTagType$ByteLength;-><init>(II)V

    .line 217
    return-void
.end method


# virtual methods
.method public isFixedLength()Z
    .locals 1

    .line 221
    const/4 v0, 0x1

    return v0
.end method
