.class public abstract Lorg/jpos/emv/EMVTagType$DataLength;
.super Ljava/lang/Object;
.source "EMVTagType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/emv/EMVTagType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DataLength"
.end annotation


# static fields
.field public static final DATA_LENGTH_PROPRIETARY:I = -0x1

.field public static final DATA_LENGTH_VAR:I = -0x2


# instance fields
.field private maxLength:I

.field private minLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "minLength"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lorg/jpos/emv/EMVTagType$DataLength;->minLength:I

    .line 75
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "minLength"    # I
    .param p2, "maxLength"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lorg/jpos/emv/EMVTagType$DataLength;->minLength:I

    .line 69
    iput p2, p0, Lorg/jpos/emv/EMVTagType$DataLength;->maxLength:I

    .line 70
    return-void
.end method


# virtual methods
.method public getMaxLength()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/jpos/emv/EMVTagType$DataLength;->maxLength:I

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/jpos/emv/EMVTagType$DataLength;->minLength:I

    return v0
.end method

.method public abstract isFixedLength()Z
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .line 90
    iput p1, p0, Lorg/jpos/emv/EMVTagType$DataLength;->maxLength:I

    .line 91
    return-void
.end method

.method public setMinLength(I)V
    .locals 0
    .param p1, "minLength"    # I

    .line 82
    iput p1, p0, Lorg/jpos/emv/EMVTagType$DataLength;->minLength:I

    .line 83
    return-void
.end method
