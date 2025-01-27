.class public Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;
.super Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
.source "FileProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/FileProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtectedActiveFileSet"
.end annotation


# instance fields
.field private protectedFiles:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private rangeStart:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/NavigableSet;Ljava/lang/Long;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "rangeStart"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 991
    .local p2, "protectedFiles":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;-><init>(Ljava/lang/String;ZLcom/sleepycat/je/cleaner/FileProtector$1;)V

    .line 992
    iput-object p2, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->protectedFiles:Ljava/util/NavigableSet;

    .line 993
    iput-object p3, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->rangeStart:Ljava/lang/Long;

    .line 994
    return-void
.end method


# virtual methods
.method public declared-synchronized getProtectedFiles()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1009
    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->protectedFiles:Ljava/util/NavigableSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1009
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z
    .locals 4
    .param p1, "file"    # Ljava/lang/Long;
    .param p2, "info"    # Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    monitor-enter p0

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->rangeStart:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->rangeStart:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->protectedFiles:Ljava/util/NavigableSet;

    .line 1001
    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1000
    :goto_0
    monitor-exit p0

    return v0

    .line 999
    .end local p1    # "file":Ljava/lang/Long;
    .end local p2    # "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFile(Ljava/lang/Long;)V
    .locals 4
    .param p1, "file"    # Ljava/lang/Long;

    monitor-enter p0

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->protectedFiles:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->remove(Ljava/lang/Object;)Z

    .line 1039
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->rangeStart:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->rangeStart:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->rangeStart:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;
    :cond_0
    monitor-exit p0

    return-void

    .line 1032
    .end local p1    # "file":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized truncateHead(J)V
    .locals 3
    .param p1, "firstProtectedFile"    # J

    monitor-enter p0

    .line 1025
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->protectedFiles:Ljava/util/NavigableSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->protectedFiles:Ljava/util/NavigableSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    monitor-exit p0

    return-void

    .line 1024
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;
    .end local p1    # "firstProtectedFile":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized truncateTail(J)V
    .locals 3
    .param p1, "lastProtectedFile"    # J

    monitor-enter p0

    .line 1017
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->protectedFiles:Ljava/util/NavigableSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->protectedFiles:Ljava/util/NavigableSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    monitor-exit p0

    return-void

    .line 1016
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;
    .end local p1    # "lastProtectedFile":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
