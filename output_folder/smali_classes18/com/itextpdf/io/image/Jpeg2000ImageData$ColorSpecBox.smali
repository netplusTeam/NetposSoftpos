.class public Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;
.super Ljava/util/ArrayList;
.source "Jpeg2000ImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/image/Jpeg2000ImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorSpecBox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x536272a2f176cb45L


# instance fields
.field private colorProfile:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public getApprox()I
    .locals 1

    .line 79
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorProfile()[B
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->colorProfile:[B

    return-object v0
.end method

.method public getEnumCs()I
    .locals 1

    .line 83
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMeth()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPrec()I
    .locals 1

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method setColorProfile([B)V
    .locals 0
    .param p1, "colorProfile"    # [B

    .line 91
    iput-object p1, p0, Lcom/itextpdf/io/image/Jpeg2000ImageData$ColorSpecBox;->colorProfile:[B

    .line 92
    return-void
.end method
