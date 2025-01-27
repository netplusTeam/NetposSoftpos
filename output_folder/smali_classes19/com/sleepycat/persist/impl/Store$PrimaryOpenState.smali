.class Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/impl/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrimaryOpenState"
.end annotation


# instance fields
.field private databases:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/sleepycat/je/Database;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private entityClassName:Ljava/lang/String;

.field private secNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sleepycat/persist/impl/Store;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/impl/Store;Ljava/lang/String;)V
    .locals 0
    .param p2, "entityClassName"    # Ljava/lang/String;

    .line 472
    iput-object p1, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->this$0:Lcom/sleepycat/persist/impl/Store;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-object p2, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->entityClassName:Ljava/lang/String;

    .line 474
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->databases:Ljava/util/IdentityHashMap;

    .line 475
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->secNames:Ljava/util/Set;

    .line 476
    return-void
.end method


# virtual methods
.method addDatabase(Lcom/sleepycat/je/Database;)V
    .locals 2
    .param p1, "db"    # Lcom/sleepycat/je/Database;

    .line 482
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->databases:Ljava/util/IdentityHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    return-void
.end method

.method addSecondaryName(Ljava/lang/String;)V
    .locals 1
    .param p1, "secName"    # Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->secNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 491
    return-void
.end method

.method undoState()V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->databases:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/Database;

    .line 505
    .local v1, "db":Lcom/sleepycat/je/Database;
    :try_start_0
    invoke-virtual {v1}, Lcom/sleepycat/je/Database;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    goto :goto_1

    .line 506
    :catch_0
    move-exception v2

    .line 508
    .end local v1    # "db":Lcom/sleepycat/je/Database;
    :goto_1
    goto :goto_0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->this$0:Lcom/sleepycat/persist/impl/Store;

    invoke-static {v0}, Lcom/sleepycat/persist/impl/Store;->access$000(Lcom/sleepycat/persist/impl/Store;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->entityClassName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->secNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 511
    .local v1, "secName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->this$0:Lcom/sleepycat/persist/impl/Store;

    invoke-static {v2}, Lcom/sleepycat/persist/impl/Store;->access$100(Lcom/sleepycat/persist/impl/Store;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .end local v1    # "secName":Ljava/lang/String;
    goto :goto_2

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->databases:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/Database;

    .line 514
    .local v1, "db":Lcom/sleepycat/je/Database;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->this$0:Lcom/sleepycat/persist/impl/Store;

    invoke-static {v2}, Lcom/sleepycat/persist/impl/Store;->access$200(Lcom/sleepycat/persist/impl/Store;)Ljava/util/IdentityHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .end local v1    # "db":Lcom/sleepycat/je/Database;
    goto :goto_3

    .line 516
    :cond_2
    return-void
.end method
