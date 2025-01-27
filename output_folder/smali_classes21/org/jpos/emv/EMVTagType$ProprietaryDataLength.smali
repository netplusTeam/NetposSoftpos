.class public Lorg/jpos/emv/EMVTagType$ProprietaryDataLength;
.super Lorg/jpos/emv/EMVTagType$DataLength;
.source "EMVTagType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/emv/EMVTagType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProprietaryDataLength"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lorg/jpos/emv/EMVTagType$DataLength;-><init>(II)V

    .line 100
    return-void
.end method


# virtual methods
.method public getMaxLength()I
    .locals 1

    .line 114
    invoke-super {p0}, Lorg/jpos/emv/EMVTagType$DataLength;->getMaxLength()I

    move-result v0

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 104
    invoke-super {p0}, Lorg/jpos/emv/EMVTagType$DataLength;->getMinLength()I

    move-result v0

    return v0
.end method

.method public isFixedLength()Z
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .line 119
    invoke-super {p0, p1}, Lorg/jpos/emv/EMVTagType$DataLength;->setMaxLength(I)V

    .line 120
    return-void
.end method

.method public setMinLength(I)V
    .locals 0
    .param p1, "minLength"    # I

    .line 109
    invoke-super {p0, p1}, Lorg/jpos/emv/EMVTagType$DataLength;->setMinLength(I)V

    .line 110
    return-void
.end method
