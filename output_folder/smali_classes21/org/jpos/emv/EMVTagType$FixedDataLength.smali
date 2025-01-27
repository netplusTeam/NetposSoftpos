.class public Lorg/jpos/emv/EMVTagType$FixedDataLength;
.super Lorg/jpos/emv/EMVTagType$DataLength;
.source "EMVTagType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/emv/EMVTagType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedDataLength"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "length"    # I

    .line 131
    invoke-direct {p0, p1, p1}, Lorg/jpos/emv/EMVTagType$DataLength;-><init>(II)V

    .line 132
    return-void
.end method


# virtual methods
.method public isFixedLength()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method
