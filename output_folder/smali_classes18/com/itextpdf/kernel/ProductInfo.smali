.class public Lcom/itextpdf/kernel/ProductInfo;
.super Ljava/lang/Object;
.source "ProductInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2174a63b722431d0L


# instance fields
.field private major:I

.field private minor:I

.field private name:Ljava/lang/String;

.field private patch:I

.field private snapshot:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "major"    # I
    .param p3, "minor"    # I
    .param p4, "patch"    # I
    .param p5, "snapshot"    # Z

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/itextpdf/kernel/ProductInfo;->name:Ljava/lang/String;

    .line 72
    iput p2, p0, Lcom/itextpdf/kernel/ProductInfo;->major:I

    .line 73
    iput p3, p0, Lcom/itextpdf/kernel/ProductInfo;->minor:I

    .line 74
    iput p4, p0, Lcom/itextpdf/kernel/ProductInfo;->patch:I

    .line 75
    iput-boolean p5, p0, Lcom/itextpdf/kernel/ProductInfo;->snapshot:Z

    .line 76
    return-void
.end method


# virtual methods
.method public getMajor()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/itextpdf/kernel/ProductInfo;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/itextpdf/kernel/ProductInfo;->minor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/itextpdf/kernel/ProductInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPatch()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/itextpdf/kernel/ProductInfo;->patch:I

    return v0
.end method

.method public isSnapshot()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/itextpdf/kernel/ProductInfo;->snapshot:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/kernel/ProductInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/kernel/ProductInfo;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/itextpdf/kernel/ProductInfo;->minor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/kernel/ProductInfo;->patch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/itextpdf/kernel/ProductInfo;->snapshot:Z

    if-eqz v1, :cond_0

    const-string v1, "-SNAPSHOT"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
