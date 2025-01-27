.class Lcom/sleepycat/je/log/UtilizationFileReader$NodeInfo;
.super Ljava/lang/Object;
.source "UtilizationFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/UtilizationFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeInfo"
.end annotation


# instance fields
.field dbId:J

.field size:I

.field summary:Lcom/sleepycat/je/log/UtilizationFileReader$ExtendedFileSummary;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
