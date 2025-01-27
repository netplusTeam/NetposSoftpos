.class public Lcom/github/barteksc/pdfviewer/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;,
        Lcom/github/barteksc/pdfviewer/util/Constants$Cache;
    }
.end annotation


# static fields
.field public static DEBUG_MODE:Z

.field public static PART_SIZE:F

.field public static PRELOAD_OFFSET:I

.field public static THUMBNAIL_RATIO:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/github/barteksc/pdfviewer/util/Constants;->DEBUG_MODE:Z

    .line 23
    const v0, 0x3e99999a    # 0.3f

    sput v0, Lcom/github/barteksc/pdfviewer/util/Constants;->THUMBNAIL_RATIO:F

    .line 30
    const/high16 v0, 0x43800000    # 256.0f

    sput v0, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    .line 33
    const/16 v0, 0x14

    sput v0, Lcom/github/barteksc/pdfviewer/util/Constants;->PRELOAD_OFFSET:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
