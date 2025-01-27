.class public abstract Lorg/jpos/emv/EMVTagType$ByteLength;
.super Ljava/lang/Object;
.source "EMVTagType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/emv/EMVTagType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ByteLength"
.end annotation


# static fields
.field public static final BYTE_LENGTH_PROPRIETARY:I = -0x1

.field public static final BYTE_LENGTH_VAR:I = -0x2


# instance fields
.field private maxLength:I

.field private minLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "minLength"    # I

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p1, p0, Lorg/jpos/emv/EMVTagType$ByteLength;->minLength:I

    .line 180
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "minLength"    # I
    .param p2, "maxLength"    # I

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Lorg/jpos/emv/EMVTagType$ByteLength;->minLength:I

    .line 174
    iput p2, p0, Lorg/jpos/emv/EMVTagType$ByteLength;->maxLength:I

    .line 175
    return-void
.end method


# virtual methods
.method public getMaxLength()I
    .locals 1

    .line 191
    iget v0, p0, Lorg/jpos/emv/EMVTagType$ByteLength;->maxLength:I

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 183
    iget v0, p0, Lorg/jpos/emv/EMVTagType$ByteLength;->minLength:I

    return v0
.end method

.method public abstract isFixedLength()Z
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .line 195
    iput p1, p0, Lorg/jpos/emv/EMVTagType$ByteLength;->maxLength:I

    .line 196
    return-void
.end method

.method public setMinLength(I)V
    .locals 0
    .param p1, "minLength"    # I

    .line 187
    iput p1, p0, Lorg/jpos/emv/EMVTagType$ByteLength;->minLength:I

    .line 188
    return-void
.end method
