.class public Lcom/sleepycat/je/dbi/DbCleanup;
.super Ljava/lang/Object;
.source "DbCleanup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/DbCleanup$Action;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static modifyDbRootHook:Lcom/sleepycat/je/utilint/TestHook;


# instance fields
.field private final action:Lcom/sleepycat/je/dbi/DbCleanup$Action;

.field private final atCommit:Z

.field private final dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private final newName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DbCleanup$Action;Z)V
    .locals 1
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "action"    # Lcom/sleepycat/je/dbi/DbCleanup$Action;
    .param p3, "atCommit"    # Z

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/dbi/DbCleanup;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DbCleanup$Action;ZLjava/lang/String;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DbCleanup$Action;ZLjava/lang/String;)V
    .locals 3
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "action"    # Lcom/sleepycat/je/dbi/DbCleanup$Action;
    .param p3, "atCommit"    # Z
    .param p4, "newName"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/sleepycat/je/dbi/DbCleanup$Action;->RENAME:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-ne v0, v1, :cond_2

    .line 48
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DbCleanup;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 49
    iput-object p2, p0, Lcom/sleepycat/je/dbi/DbCleanup;->action:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    .line 50
    iput-boolean p3, p0, Lcom/sleepycat/je/dbi/DbCleanup;->atCommit:Z

    .line 51
    iput-object p4, p0, Lcom/sleepycat/je/dbi/DbCleanup;->newName:Ljava/lang/String;

    .line 52
    return-void

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static checkRepeatedDeletedDB([Lcom/sleepycat/je/dbi/DbCleanup;Lcom/sleepycat/je/dbi/DbCleanup;)Z
    .locals 6
    .param p0, "array"    # [Lcom/sleepycat/je/dbi/DbCleanup;
    .param p1, "cleanup"    # Lcom/sleepycat/je/dbi/DbCleanup;

    .line 164
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 165
    .local v3, "element":Lcom/sleepycat/je/dbi/DbCleanup;
    iget-object v4, v3, Lcom/sleepycat/je/dbi/DbCleanup;->action:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    sget-object v5, Lcom/sleepycat/je/dbi/DbCleanup$Action;->DELETE:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Lcom/sleepycat/je/dbi/DbCleanup;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 166
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    iget-object v5, p1, Lcom/sleepycat/je/dbi/DbCleanup;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/sleepycat/je/dbi/DbCleanup;->atCommit:Z

    iget-boolean v5, p1, Lcom/sleepycat/je/dbi/DbCleanup;->atCommit:Z

    if-eq v4, v5, :cond_0

    .line 168
    const/4 v0, 0x1

    return v0

    .line 164
    .end local v3    # "element":Lcom/sleepycat/je/dbi/DbCleanup;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    return v1
.end method

.method public static execute(Lcom/sleepycat/je/dbi/EnvironmentImpl;[Lcom/sleepycat/je/dbi/DbCleanup;Z)V
    .locals 7
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "cleanupArray"    # [Lcom/sleepycat/je/dbi/DbCleanup;
    .param p2, "isCommit"    # Z

    .line 109
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 111
    .local v0, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    .line 113
    .local v3, "cleanup":Lcom/sleepycat/je/dbi/DbCleanup;
    iget-object v4, v3, Lcom/sleepycat/je/dbi/DbCleanup;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 115
    .local v4, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    sget-object v5, Lcom/sleepycat/je/dbi/DbCleanup$1;->$SwitchMap$com$sleepycat$je$dbi$DbCleanup$Action:[I

    iget-object v6, v3, Lcom/sleepycat/je/dbi/DbCleanup;->action:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    invoke-virtual {v6}, Lcom/sleepycat/je/dbi/DbCleanup$Action;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 135
    :pswitch_0
    iget-boolean v5, v3, Lcom/sleepycat/je/dbi/DbCleanup;->atCommit:Z

    if-ne v5, p2, :cond_1

    .line 141
    invoke-static {p1, v3}, Lcom/sleepycat/je/dbi/DbCleanup;->checkRepeatedDeletedDB([Lcom/sleepycat/je/dbi/DbCleanup;Lcom/sleepycat/je/dbi/DbCleanup;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->startDbExtinction(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_1

    .line 153
    :cond_1
    invoke-static {p1, v3}, Lcom/sleepycat/je/dbi/DbCleanup;->checkRepeatedDeletedDB([Lcom/sleepycat/je/dbi/DbCleanup;Lcom/sleepycat/je/dbi/DbCleanup;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 154
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_1

    .line 122
    :pswitch_1
    :try_start_0
    iget-boolean v5, v3, Lcom/sleepycat/je/dbi/DbCleanup;->atCommit:Z

    if-ne v5, p2, :cond_3

    .line 124
    sget-object v5, Lcom/sleepycat/je/dbi/DbCleanup;->modifyDbRootHook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v5, :cond_2

    .line 125
    invoke-interface {v5}, Lcom/sleepycat/je/utilint/TestHook;->doHook()V

    .line 128
    :cond_2
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbTree;->modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_3
    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 132
    nop

    .line 133
    goto :goto_1

    .line 131
    :catchall_0
    move-exception v1

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v1

    .line 111
    .end local v3    # "cleanup":Lcom/sleepycat/je/dbi/DbCleanup;
    .end local v4    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setState(Lcom/sleepycat/je/dbi/DbCleanup;Z)V
    .locals 3
    .param p0, "cleanup"    # Lcom/sleepycat/je/dbi/DbCleanup;
    .param p1, "isCommit"    # Z

    .line 85
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbCleanup;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 87
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    sget-object v1, Lcom/sleepycat/je/dbi/DbCleanup$1;->$SwitchMap$com$sleepycat$je$dbi$DbCleanup$Action:[I

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbCleanup;->action:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DbCleanup$Action;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    iget-boolean v1, p0, Lcom/sleepycat/je/dbi/DbCleanup;->atCommit:Z

    if-ne v1, p1, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDeleteStarted()V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-boolean v1, p0, Lcom/sleepycat/je/dbi/DbCleanup;->atCommit:Z

    if-ne v1, p1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DbCleanup;->newName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setNameAndType(Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setStateAndExecute(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/DbCleanup;)V
    .locals 4
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "cleanup"    # Lcom/sleepycat/je/dbi/DbCleanup;

    .line 181
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 182
    .local v0, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    iget-object v1, p1, Lcom/sleepycat/je/dbi/DbCleanup;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 184
    .local v1, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    sget-object v2, Lcom/sleepycat/je/dbi/DbCleanup$1;->$SwitchMap$com$sleepycat$je$dbi$DbCleanup$Action:[I

    iget-object v3, p1, Lcom/sleepycat/je/dbi/DbCleanup;->action:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DbCleanup$Action;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    iget-boolean v2, p1, Lcom/sleepycat/je/dbi/DbCleanup;->atCommit:Z

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDeleteStarted()V

    .line 204
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getExtinctionScanner()Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->startDbExtinction(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_0

    .line 187
    :pswitch_1
    :try_start_0
    iget-boolean v2, p1, Lcom/sleepycat/je/dbi/DbCleanup;->atCommit:Z

    if-eqz v2, :cond_2

    .line 188
    iget-object v2, p1, Lcom/sleepycat/je/dbi/DbCleanup;->newName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setNameAndType(Ljava/lang/String;)V

    .line 190
    sget-object v2, Lcom/sleepycat/je/dbi/DbCleanup;->modifyDbRootHook:Lcom/sleepycat/je/utilint/TestHook;

    if-eqz v2, :cond_1

    .line 191
    invoke-interface {v2}, Lcom/sleepycat/je/utilint/TestHook;->doHook()V

    .line 194
    :cond_1
    iget-object v2, p1, Lcom/sleepycat/je/dbi/DbCleanup;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbTree;->modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_2
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 198
    nop

    .line 199
    goto :goto_0

    .line 197
    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    throw v2

    .line 210
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 62
    instance-of v0, p1, Lcom/sleepycat/je/dbi/DbCleanup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 63
    return v1

    .line 66
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/dbi/DbCleanup;

    .line 68
    .local v0, "other":Lcom/sleepycat/je/dbi/DbCleanup;
    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbCleanup;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iget-object v3, v0, Lcom/sleepycat/je/dbi/DbCleanup;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DbCleanup;->action:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    iget-object v3, v0, Lcom/sleepycat/je/dbi/DbCleanup;->action:Lcom/sleepycat/je/dbi/DbCleanup$Action;

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/sleepycat/je/dbi/DbCleanup;->atCommit:Z

    iget-boolean v3, v0, Lcom/sleepycat/je/dbi/DbCleanup;->atCommit:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbCleanup;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
