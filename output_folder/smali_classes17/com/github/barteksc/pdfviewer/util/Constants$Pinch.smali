.class public Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pinch"
.end annotation


# static fields
.field public static MAXIMUM_ZOOM:F

.field public static MINIMUM_ZOOM:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MAXIMUM_ZOOM:F

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MINIMUM_ZOOM:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
