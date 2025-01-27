.class public Lbsh/CollectionManager;
.super Ljava/lang/Object;
.source "CollectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/CollectionManager$BasicBshIterator;
    }
.end annotation


# static fields
.field private static manager:Lbsh/CollectionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCollectionManager()Lbsh/CollectionManager;
    .locals 4

    const-class v0, Lbsh/CollectionManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;

    if-nez v1, :cond_0

    const-string v1, "java.util.Collection"

    .line 51
    invoke-static {v1}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 55
    :try_start_1
    const-string v1, "bsh.collection.CollectionManagerImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 56
    .local v1, "clas":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsh/CollectionManager;

    sput-object v2, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    goto :goto_0

    .line 57
    .end local v1    # "clas":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to load CollectionManagerImpl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v1, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;

    if-nez v1, :cond_1

    .line 63
    new-instance v1, Lbsh/CollectionManager;

    invoke-direct {v1}, Lbsh/CollectionManager;-><init>()V

    sput-object v1, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;

    .line 65
    :cond_1
    sget-object v1, Lbsh/CollectionManager;->manager:Lbsh/CollectionManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 84
    new-instance v0, Lbsh/CollectionManager$BasicBshIterator;

    invoke-direct {v0, p1}, Lbsh/CollectionManager$BasicBshIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFromMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "map"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 92
    move-object v0, p1

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isBshIterable(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 74
    :try_start_0
    invoke-virtual {p0, p1}, Lbsh/CollectionManager;->getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const/4 v0, 0x1

    return v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method public isMap(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 88
    instance-of v0, p1, Ljava/util/Hashtable;

    return v0
.end method

.method public putInMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "map"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 97
    move-object v0, p1

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
