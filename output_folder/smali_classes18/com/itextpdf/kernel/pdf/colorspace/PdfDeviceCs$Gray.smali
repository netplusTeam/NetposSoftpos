.class public Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Gray;
.super Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs;
.source "PdfDeviceCs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gray"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25c9b4c603747b67L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getNumberOfComponents()I
    .locals 1

    .line 71
    const/4 v0, 0x1

    return v0
.end method
