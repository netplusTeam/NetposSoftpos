.class public Lcom/itextpdf/io/util/IntHashtable$Entry;
.super Ljava/lang/Object;
.source "IntHashtable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/util/IntHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6fd298a8cc186161L


# instance fields
.field key:I

.field next:Lcom/itextpdf/io/util/IntHashtable$Entry;

.field value:I


# direct methods
.method constructor <init>(IILcom/itextpdf/io/util/IntHashtable$Entry;)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "value"    # I
    .param p3, "next"    # Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput p1, p0, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    .line 401
    iput p2, p0, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    .line 402
    iput-object p3, p0, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 404
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 417
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable$Entry;

    iget v1, p0, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    iget v2, p0, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    iget-object v3, p0, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itextpdf/io/util/IntHashtable$Entry;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/io/util/IntHashtable$Entry;-><init>(IILcom/itextpdf/io/util/IntHashtable$Entry;)V

    return-object v0
.end method

.method public getKey()I
    .locals 1

    .line 408
    iget v0, p0, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 412
    iget v0, p0, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 422
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "{0}={1}"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
