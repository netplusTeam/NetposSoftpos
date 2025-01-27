.class public Lcom/sleepycat/je/log/entry/FileHeaderEntry;
.super Lcom/sleepycat/je/log/entry/SingleItemEntry;
.source "FileHeaderEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/log/entry/SingleItemEntry<",
        "Lcom/sleepycat/je/log/FileHeader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/FileHeader;)V
    .locals 0
    .param p1, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p2, "item"    # Lcom/sleepycat/je/log/FileHeader;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/entry/SingleItemEntry;-><init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/sleepycat/je/log/FileHeader;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sleepycat/je/log/FileHeader;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;-><init>(Ljava/lang/Class;)V

    .line 33
    return-void
.end method


# virtual methods
.method public readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p3, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 52
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/FileHeaderEntry;->getMainItem()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/FileHeader;

    .line 53
    .local v0, "entry":Lcom/sleepycat/je/log/FileHeader;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHeader;->getLogVersion()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sleepycat/je/log/LogEntryHeader;->setFileHeaderVersion(I)V

    .line 54
    return-void
.end method
