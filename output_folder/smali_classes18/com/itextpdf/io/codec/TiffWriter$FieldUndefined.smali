.class public Lcom/itextpdf/io/codec/TiffWriter$FieldUndefined;
.super Lcom/itextpdf/io/codec/TiffWriter$FieldBase;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldUndefined"
.end annotation


# direct methods
.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "values"    # [B

    .line 227
    array-length v0, p2

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1, v0}, Lcom/itextpdf/io/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 228
    iput-object p2, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldUndefined;->data:[B

    .line 229
    return-void
.end method
