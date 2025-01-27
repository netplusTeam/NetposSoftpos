.class Lcom/sleepycat/je/cleaner/DataEraser$AbortCurrentFileException;
.super Ljava/lang/RuntimeException;
.source "DataEraser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/DataEraser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbortCurrentFileException"
.end annotation


# instance fields
.field final file:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .param p1, "file"    # J

    .line 1978
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1979
    iput-wide p1, p0, Lcom/sleepycat/je/cleaner/DataEraser$AbortCurrentFileException;->file:J

    .line 1980
    return-void
.end method
