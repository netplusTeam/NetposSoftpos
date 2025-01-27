.class public Lcom/sleepycat/je/log/entry/SingleItemEntry;
.super Lcom/sleepycat/je/log/entry/BaseEntry;
.source "SingleItemEntry.java"

# interfaces
.implements Lcom/sleepycat/je/log/entry/LogEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sleepycat/je/log/Loggable;",
        ">",
        "Lcom/sleepycat/je/log/entry/BaseEntry<",
        "TT;>;",
        "Lcom/sleepycat/je/log/entry/LogEntry;"
    }
.end annotation


# instance fields
.field private item:Lcom/sleepycat/je/log/Loggable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)V
    .locals 0
    .param p1, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/LogEntryType;",
            "TT;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    .local p2, "item":Lcom/sleepycat/je/log/Loggable;, "TT;"
    invoke-direct {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->setLogType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 71
    iput-object p2, p0, Lcom/sleepycat/je/log/entry/SingleItemEntry;->item:Lcom/sleepycat/je/log/Loggable;

    .line 72
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    .local p1, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/entry/BaseEntry;-><init>(Ljava/lang/Class;)V

    .line 55
    return-void
.end method

.method public static create(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)Lcom/sleepycat/je/log/entry/SingleItemEntry;
    .locals 1
    .param p0, "entryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sleepycat/je/log/Loggable;",
            ">(",
            "Lcom/sleepycat/je/log/LogEntryType;",
            "TT;)",
            "Lcom/sleepycat/je/log/entry/SingleItemEntry<",
            "TT;>;"
        }
    .end annotation

    .line 63
    .local p1, "item":Lcom/sleepycat/je/log/Loggable;, "TT;"
    new-instance v0, Lcom/sleepycat/je/log/entry/SingleItemEntry;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;-><init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/SingleItemEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sleepycat/je/log/Loggable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/sleepycat/je/log/entry/SingleItemEntry<",
            "TT;>;"
        }
    .end annotation

    .line 47
    .local p0, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/sleepycat/je/log/entry/SingleItemEntry;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/log/entry/SingleItemEntry;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 1

    .line 33
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;->clone()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    return-object v0
.end method

.method public dumpEntry(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 86
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/SingleItemEntry;->item:Lcom/sleepycat/je/log/Loggable;

    invoke-interface {v0, p1, p2}, Lcom/sleepycat/je/log/Loggable;->dumpLog(Ljava/lang/StringBuilder;Z)V

    .line 87
    return-object p1
.end method

.method public dumpRep(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 92
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    return-void
.end method

.method public getDbId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 106
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLogClass()Ljava/lang/Class;
    .locals 1

    .line 33
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;->getLogClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLogType()Lcom/sleepycat/je/log/LogEntryType;
    .locals 1

    .line 33
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;->getLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    return-object v0
.end method

.method public getMainItem()Lcom/sleepycat/je/log/Loggable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/SingleItemEntry;->item:Lcom/sleepycat/je/log/Loggable;

    return-object v0
.end method

.method public bridge synthetic getMainItem()Ljava/lang/Object;
    .locals 1

    .line 33
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->getMainItem()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;
    .locals 0

    .line 33
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/BaseEntry;->getResolvedItem(Lcom/sleepycat/je/dbi/DatabaseImpl;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 115
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/SingleItemEntry;->item:Lcom/sleepycat/je/log/Loggable;

    invoke-interface {v0}, Lcom/sleepycat/je/log/Loggable;->getLogSize()I

    move-result v0

    return v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 101
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/SingleItemEntry;->item:Lcom/sleepycat/je/log/Loggable;

    invoke-interface {v0}, Lcom/sleepycat/je/log/Loggable;->getTransactionId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic isDeleted()Z
    .locals 1

    .line 33
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;->isDeleted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z
    .locals 0

    .line 33
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/BaseEntry;->isImmediatelyObsolete(Lcom/sleepycat/je/dbi/DatabaseImpl;)Z

    move-result p1

    return p1
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/entry/LogEntry;)Z
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/log/entry/LogEntry;

    .line 125
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/SingleItemEntry;->item:Lcom/sleepycat/je/log/Loggable;

    invoke-interface {p1}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/log/Loggable;

    invoke-interface {v0, v1}, Lcom/sleepycat/je/log/Loggable;->logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0

    .line 33
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/BaseEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    return-void
.end method

.method public bridge synthetic postLogWork(Lcom/sleepycat/je/log/LogEntryHeader;JLcom/sleepycat/je/utilint/VLSN;)V
    .locals 0

    .line 33
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/log/entry/BaseEntry;->postLogWork(Lcom/sleepycat/je/log/LogEntryHeader;JLcom/sleepycat/je/utilint/VLSN;)V

    return-void
.end method

.method public readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "header"    # Lcom/sleepycat/je/log/LogEntryHeader;
    .param p3, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 79
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->newInstanceOfType()Lcom/sleepycat/je/log/Loggable;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/entry/SingleItemEntry;->item:Lcom/sleepycat/je/log/Loggable;

    .line 80
    invoke-virtual {p2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v1

    invoke-interface {v0, p3, v1}, Lcom/sleepycat/je/log/Loggable;->readFromLog(Ljava/nio/ByteBuffer;I)V

    .line 81
    return-void
.end method

.method public bridge synthetic setLogType(Lcom/sleepycat/je/log/LogEntryType;)V
    .locals 0

    .line 33
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    invoke-super {p0, p1}, Lcom/sleepycat/je/log/entry/BaseEntry;->setLogType(Lcom/sleepycat/je/log/LogEntryType;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 33
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    invoke-super {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeEntry(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "destBuffer"    # Ljava/nio/ByteBuffer;

    .line 120
    .local p0, "this":Lcom/sleepycat/je/log/entry/SingleItemEntry;, "Lcom/sleepycat/je/log/entry/SingleItemEntry<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/log/entry/SingleItemEntry;->item:Lcom/sleepycat/je/log/Loggable;

    invoke-interface {v0, p1}, Lcom/sleepycat/je/log/Loggable;->writeToLog(Ljava/nio/ByteBuffer;)V

    .line 121
    return-void
.end method
