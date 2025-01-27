.class Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;
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
    name = "HorizontalHeader"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5f29e7401a503bc3L


# instance fields
.field Ascender:S

.field Descender:S

.field LineGap:S

.field advanceWidthMax:I

.field caretSlopeRise:S

.field caretSlopeRun:S

.field minLeftSideBearing:S

.field minRightSideBearing:S

.field numberOfHMetrics:I

.field xMaxExtent:S


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
