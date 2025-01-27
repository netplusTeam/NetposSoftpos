.class Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;
.super Ljava/lang/Object;
.source "OpenTypeParser.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/OpenTypeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WindowsMetrics"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e867fc4e723c5a2L


# instance fields
.field achVendID:[B

.field fsSelection:I

.field fsType:S

.field panose:[B

.field sCapHeight:I

.field sFamilyClass:S

.field sTypoAscender:S

.field sTypoDescender:S

.field sTypoLineGap:S

.field sxHeight:I

.field ulCodePageRange1:I

.field ulCodePageRange2:I

.field usFirstCharIndex:I

.field usLastCharIndex:I

.field usWeightClass:I

.field usWidthClass:I

.field usWinAscent:I

.field usWinDescent:I

.field xAvgCharWidth:S

.field yStrikeoutPosition:S

.field yStrikeoutSize:S

.field ySubscriptXOffset:S

.field ySubscriptXSize:S

.field ySubscriptYOffset:S

.field ySubscriptYSize:S

.field ySuperscriptXOffset:S

.field ySuperscriptXSize:S

.field ySuperscriptYOffset:S

.field ySuperscriptYSize:S


# direct methods
.method constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->panose:[B

    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->achVendID:[B

    return-void
.end method
