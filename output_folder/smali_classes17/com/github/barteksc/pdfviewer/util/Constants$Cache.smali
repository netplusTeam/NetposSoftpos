.class public Lcom/github/barteksc/pdfviewer/util/Constants$Cache;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# static fields
.field public static CACHE_SIZE:I

.field public static THUMBNAILS_CACHE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/16 v0, 0x78

    sput v0, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    .line 40
    const/16 v0, 0x8

    sput v0, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->THUMBNAILS_CACHE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
