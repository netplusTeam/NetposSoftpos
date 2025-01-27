.class public Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs$Cmyk;
.super Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs;
.source "PdfDeviceCs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cmyk"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x244a7a36dd2fa78fL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfDeviceCs;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getNumberOfComponents()I
    .locals 1

    .line 99
    const/4 v0, 0x4

    return v0
.end method
