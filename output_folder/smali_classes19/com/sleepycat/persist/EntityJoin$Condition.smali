.class Lcom/sleepycat/persist/EntityJoin$Condition;
.super Ljava/lang/Object;
.source "EntityJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/EntityJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Condition"
.end annotation


# instance fields
.field private db:Lcom/sleepycat/je/Database;

.field private key:Lcom/sleepycat/je/DatabaseEntry;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 0
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/sleepycat/persist/EntityJoin$Condition;->db:Lcom/sleepycat/je/Database;

    .line 253
    iput-object p2, p0, Lcom/sleepycat/persist/EntityJoin$Condition;->key:Lcom/sleepycat/je/DatabaseEntry;

    .line 254
    return-void
.end method


# virtual methods
.method openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/sleepycat/persist/EntityJoin$Condition;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    .line 262
    .local v0, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    sget-object v1, Lcom/sleepycat/persist/BasicIndex;->NO_RETURN_ENTRY:Lcom/sleepycat/je/DatabaseEntry;

    .line 263
    .local v1, "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v2, p0, Lcom/sleepycat/persist/EntityJoin$Condition;->key:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/sleepycat/je/Cursor;->getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 269
    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    nop

    .line 270
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v1, v2, :cond_0

    .line 271
    return-object v0

    .line 273
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->close()V

    .line 274
    return-object v3

    .line 264
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    :goto_0
    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    .line 268
    :goto_1
    throw v1
.end method
