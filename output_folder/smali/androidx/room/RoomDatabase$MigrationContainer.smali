.class public Landroidx/room/RoomDatabase$MigrationContainer;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MigrationContainer"
.end annotation


# instance fields
.field private mMigrations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Landroidx/room/migration/Migration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Ljava/util/HashMap;

    return-void
.end method

.method private addMigration(Landroidx/room/migration/Migration;)V
    .locals 6
    .param p1, "migration"    # Landroidx/room/migration/Migration;

    .line 1524
    iget v0, p1, Landroidx/room/migration/Migration;->startVersion:I

    .line 1525
    .local v0, "start":I
    iget v1, p1, Landroidx/room/migration/Migration;->endVersion:I

    .line 1526
    .local v1, "end":I
    iget-object v2, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeMap;

    .line 1527
    .local v2, "targetMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Landroidx/room/migration/Migration;>;"
    if-nez v2, :cond_0

    .line 1528
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    move-object v2, v3

    .line 1529
    iget-object v3, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/migration/Migration;

    .line 1532
    .local v3, "existing":Landroidx/room/migration/Migration;
    if-eqz v3, :cond_1

    .line 1533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overriding migration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ROOM"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    return-void
.end method

.method private findUpMigrationPath(Ljava/util/List;ZII)Ljava/util/List;
    .locals 8
    .param p2, "upgrade"    # Z
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;ZII)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 1571
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    :goto_0
    if-eqz p2, :cond_0

    if-ge p3, p4, :cond_9

    goto :goto_1

    :cond_0
    if-le p3, p4, :cond_9

    .line 1572
    :goto_1
    iget-object v0, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 1573
    .local v0, "targetNodes":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Landroidx/room/migration/Migration;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1574
    return-object v1

    .line 1578
    :cond_1
    if-eqz p2, :cond_2

    .line 1579
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v2

    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 1581
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1583
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_2
    const/4 v3, 0x0

    .line 1584
    .local v3, "found":Z
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1586
    .local v5, "targetVersion":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_4

    .line 1587
    if-gt v5, p4, :cond_3

    if-le v5, p3, :cond_3

    goto :goto_4

    :cond_3
    move v6, v7

    .local v6, "shouldAddToPath":Z
    :goto_4
    goto :goto_5

    .line 1589
    .end local v6    # "shouldAddToPath":Z
    :cond_4
    if-lt v5, p4, :cond_5

    if-ge v5, p3, :cond_5

    goto :goto_5

    :cond_5
    move v6, v7

    .line 1591
    .restart local v6    # "shouldAddToPath":Z
    :goto_5
    if-eqz v6, :cond_6

    .line 1592
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/room/migration/Migration;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    move p3, v5

    .line 1594
    const/4 v3, 0x1

    .line 1595
    goto :goto_6

    .line 1597
    .end local v5    # "targetVersion":I
    .end local v6    # "shouldAddToPath":Z
    :cond_6
    goto :goto_3

    .line 1598
    :cond_7
    :goto_6
    if-nez v3, :cond_8

    .line 1599
    return-object v1

    .line 1601
    .end local v0    # "targetNodes":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Landroidx/room/migration/Migration;>;"
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "found":Z
    :cond_8
    goto :goto_0

    .line 1602
    :cond_9
    return-object p1
.end method


# virtual methods
.method public addMigrations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;)V"
        }
    .end annotation

    .line 1518
    .local p1, "migrations":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/migration/Migration;

    .line 1519
    .local v1, "migration":Landroidx/room/migration/Migration;
    invoke-direct {p0, v1}, Landroidx/room/RoomDatabase$MigrationContainer;->addMigration(Landroidx/room/migration/Migration;)V

    .line 1520
    .end local v1    # "migration":Landroidx/room/migration/Migration;
    goto :goto_0

    .line 1521
    :cond_0
    return-void
.end method

.method public varargs addMigrations([Landroidx/room/migration/Migration;)V
    .locals 3
    .param p1, "migrations"    # [Landroidx/room/migration/Migration;

    .line 1506
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1507
    .local v2, "migration":Landroidx/room/migration/Migration;
    invoke-direct {p0, v2}, Landroidx/room/RoomDatabase$MigrationContainer;->addMigration(Landroidx/room/migration/Migration;)V

    .line 1506
    .end local v2    # "migration":Landroidx/room/migration/Migration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1509
    :cond_0
    return-void
.end method

.method public findMigrationPath(II)Ljava/util/List;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 1561
    if-ne p1, p2, :cond_0

    .line 1562
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1564
    :cond_0
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1565
    .local v0, "migrateUp":Z
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroidx/room/migration/Migration;>;"
    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/room/RoomDatabase$MigrationContainer;->findUpMigrationPath(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getMigrations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/room/migration/Migration;",
            ">;>;"
        }
    .end annotation

    .line 1546
    iget-object v0, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
