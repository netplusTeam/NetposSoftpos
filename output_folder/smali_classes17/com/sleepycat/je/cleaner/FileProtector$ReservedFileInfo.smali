.class Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
.super Ljava/lang/Object;
.source "FileProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/FileProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReservedFileInfo"
.end annotation


# instance fields
.field final endVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field final size:J


# direct methods
.method constructor <init>(JLcom/sleepycat/je/utilint/VLSN;)V
    .locals 0
    .param p1, "size"    # J
    .param p3, "endVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-wide p1, p0, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->size:J

    .line 198
    iput-object p3, p0, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->endVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 199
    return-void
.end method
