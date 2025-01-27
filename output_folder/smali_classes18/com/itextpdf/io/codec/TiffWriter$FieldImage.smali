.class public Lcom/itextpdf/io/codec/TiffWriter$FieldImage;
.super Lcom/itextpdf/io/codec/TiffWriter$FieldBase;
.source "TiffWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/codec/TiffWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldImage"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "values"    # [B

    .line 237
    const/16 v0, 0x111

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/io/codec/TiffWriter$FieldBase;-><init>(III)V

    .line 238
    iput-object p1, p0, Lcom/itextpdf/io/codec/TiffWriter$FieldImage;->data:[B

    .line 239
    return-void
.end method
