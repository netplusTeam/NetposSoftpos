.class public Lorg/jpos/emv/EMVTagType$VariableDiscreteDataLength;
.super Lorg/jpos/emv/EMVTagType$DataLength;
.source "EMVTagType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/emv/EMVTagType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariableDiscreteDataLength"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "minLength"    # I
    .param p2, "maxLength"    # I

    .line 155
    invoke-direct {p0, p1, p2}, Lorg/jpos/emv/EMVTagType$DataLength;-><init>(II)V

    .line 156
    return-void
.end method


# virtual methods
.method public isFixedLength()Z
    .locals 1

    .line 160
    const/4 v0, 0x1

    return v0
.end method
