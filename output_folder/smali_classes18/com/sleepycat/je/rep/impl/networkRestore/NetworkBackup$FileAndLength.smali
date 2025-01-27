.class Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;
.super Ljava/lang/Object;
.source "NetworkBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileAndLength"
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field final length:J


# direct methods
.method constructor <init>(Ljava/io/File;J)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "length"    # J

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;->file:Ljava/io/File;

    .line 517
    iput-wide p2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;->length:J

    .line 518
    return-void
.end method
