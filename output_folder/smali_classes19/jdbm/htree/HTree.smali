.class public Ljdbm/htree/HTree;
.super Ljava/lang/Object;
.source "HTree.java"


# instance fields
.field private _root:Ljdbm/htree/HashDirectory;


# direct methods
.method private constructor <init>(Ljdbm/htree/HashDirectory;)V
    .locals 0
    .param p1, "root"    # Ljdbm/htree/HashDirectory;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    .line 79
    return-void
.end method

.method public static createInstance(Ljdbm/RecordManager;)Ljdbm/htree/HTree;
    .locals 4
    .param p0, "recman"    # Ljdbm/RecordManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljdbm/htree/HashDirectory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljdbm/htree/HashDirectory;-><init>(B)V

    .line 94
    .local v0, "root":Ljdbm/htree/HashDirectory;
    invoke-interface {p0, v0}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide v1

    .line 95
    .local v1, "recid":J
    invoke-virtual {v0, p0, v1, v2}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 97
    new-instance v3, Ljdbm/htree/HTree;

    invoke-direct {v3, v0}, Ljdbm/htree/HTree;-><init>(Ljdbm/htree/HashDirectory;)V

    return-object v3
.end method

.method public static load(Ljdbm/RecordManager;J)Ljdbm/htree/HTree;
    .locals 2
    .param p0, "recman"    # Ljdbm/RecordManager;
    .param p1, "root_recid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-interface {p0, p1, p2}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/htree/HashDirectory;

    .line 114
    .local v0, "root":Ljdbm/htree/HashDirectory;
    invoke-virtual {v0, p0, p1, p2}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 115
    new-instance v1, Ljdbm/htree/HTree;

    invoke-direct {v1, v0}, Ljdbm/htree/HTree;-><init>(Ljdbm/htree/HashDirectory;)V

    .line 116
    .local v1, "tree":Ljdbm/htree/HTree;
    return-object v1
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    invoke-virtual {v0, p1}, Ljdbm/htree/HashDirectory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 142
    .end local p0    # "this":Ljdbm/htree/HTree;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRecid()J
    .locals 2

    .line 184
    iget-object v0, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    invoke-virtual {v0}, Ljdbm/htree/HashDirectory;->getRecid()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized keys()Ljdbm/helper/FastIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    invoke-virtual {v0}, Ljdbm/htree/HashDirectory;->keys()Ljdbm/helper/FastIterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 165
    .end local p0    # "this":Ljdbm/htree/HTree;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    invoke-virtual {v0, p1, p2}, Ljdbm/htree/HashDirectory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 128
    .end local p0    # "this":Ljdbm/htree/HTree;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    invoke-virtual {v0, p1}, Ljdbm/htree/HashDirectory;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 154
    .end local p0    # "this":Ljdbm/htree/HTree;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized values()Ljdbm/helper/FastIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    invoke-virtual {v0}, Ljdbm/htree/HashDirectory;->values()Ljdbm/helper/FastIterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 175
    .end local p0    # "this":Ljdbm/htree/HTree;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
