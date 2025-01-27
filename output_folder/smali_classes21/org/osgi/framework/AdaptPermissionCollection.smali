.class final Lorg/osgi/framework/AdaptPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "AdaptPermission.java"


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = -0x2e80498d96e492d3L


# instance fields
.field private all_allowed:Z

.field private permissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/osgi/framework/AdaptPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 606
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/util/HashMap;

    const-string v3, "permissions"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "all_allowed"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/osgi/framework/AdaptPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 494
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osgi/framework/AdaptPermissionCollection;->permissions:Ljava/util/Map;

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osgi/framework/AdaptPermissionCollection;->all_allowed:Z

    .line 497
    return-void
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 616
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 618
    .local v0, "gfields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "permissions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 619
    .local v1, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/osgi/framework/AdaptPermission;>;"
    iput-object v1, p0, Lorg/osgi/framework/AdaptPermissionCollection;->permissions:Ljava/util/Map;

    .line 620
    const-string v2, "all_allowed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/osgi/framework/AdaptPermissionCollection;->all_allowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    monitor-exit p0

    return-void

    .line 615
    .end local v0    # "gfields":Ljava/io/ObjectInputStream$GetField;
    .end local v1    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/osgi/framework/AdaptPermission;>;"
    .end local p0    # "this":Lorg/osgi/framework/AdaptPermissionCollection;
    .end local p1    # "in":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 609
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 610
    .local v0, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "permissions"

    iget-object v2, p0, Lorg/osgi/framework/AdaptPermissionCollection;->permissions:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    const-string v1, "all_allowed"

    iget-boolean v2, p0, Lorg/osgi/framework/AdaptPermissionCollection;->all_allowed:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 612
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    monitor-exit p0

    return-void

    .line 608
    .end local v0    # "pfields":Ljava/io/ObjectOutputStream$PutField;
    .end local p0    # "this":Lorg/osgi/framework/AdaptPermissionCollection;
    .end local p1    # "out":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .locals 9
    .param p1, "permission"    # Ljava/security/Permission;

    .line 511
    instance-of v0, p1, Lorg/osgi/framework/AdaptPermission;

    if-eqz v0, :cond_5

    .line 514
    invoke-virtual {p0}, Lorg/osgi/framework/AdaptPermissionCollection;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 518
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/AdaptPermission;

    .line 519
    .local v0, "ap":Lorg/osgi/framework/AdaptPermission;
    iget-object v1, v0, Lorg/osgi/framework/AdaptPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-nez v1, :cond_3

    .line 523
    invoke-virtual {v0}, Lorg/osgi/framework/AdaptPermission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "name":Ljava/lang/String;
    monitor-enter p0

    .line 525
    :try_start_0
    iget-object v2, p0, Lorg/osgi/framework/AdaptPermissionCollection;->permissions:Ljava/util/Map;

    .line 526
    .local v2, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/AdaptPermission;>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osgi/framework/AdaptPermission;

    .line 527
    .local v3, "existing":Lorg/osgi/framework/AdaptPermission;
    if-eqz v3, :cond_1

    .line 528
    iget v4, v3, Lorg/osgi/framework/AdaptPermission;->action_mask:I

    .line 529
    .local v4, "oldMask":I
    iget v5, v0, Lorg/osgi/framework/AdaptPermission;->action_mask:I

    .line 530
    .local v5, "newMask":I
    if-eq v4, v5, :cond_0

    .line 531
    new-instance v6, Lorg/osgi/framework/AdaptPermission;

    iget-object v7, v3, Lorg/osgi/framework/AdaptPermission;->filter:Lorg/osgi/framework/Filter;

    or-int v8, v4, v5

    invoke-direct {v6, v7, v8}, Lorg/osgi/framework/AdaptPermission;-><init>(Lorg/osgi/framework/Filter;I)V

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .end local v4    # "oldMask":I
    .end local v5    # "newMask":I
    :cond_0
    goto :goto_0

    .line 535
    :cond_1
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :goto_0
    iget-boolean v4, p0, Lorg/osgi/framework/AdaptPermissionCollection;->all_allowed:Z

    if-nez v4, :cond_2

    .line 539
    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 540
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/osgi/framework/AdaptPermissionCollection;->all_allowed:Z

    .line 543
    .end local v2    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/AdaptPermission;>;"
    .end local v3    # "existing":Lorg/osgi/framework/AdaptPermission;
    :cond_2
    monitor-exit p0

    .line 544
    return-void

    .line 543
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 520
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot add to collection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    .end local v0    # "ap":Lorg/osgi/framework/AdaptPermission;
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "attempt to add a Permission to a readonly PermissionCollection"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 601
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/osgi/framework/AdaptPermissionCollection;->permissions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 602
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 600
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    .end local p0    # "this":Lorg/osgi/framework/AdaptPermissionCollection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 9
    .param p1, "permission"    # Ljava/security/Permission;

    .line 557
    instance-of v0, p1, Lorg/osgi/framework/AdaptPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 558
    return v1

    .line 560
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/AdaptPermission;

    .line 562
    .local v0, "requested":Lorg/osgi/framework/AdaptPermission;
    iget-object v2, v0, Lorg/osgi/framework/AdaptPermission;->filter:Lorg/osgi/framework/Filter;

    if-eqz v2, :cond_1

    .line 563
    return v1

    .line 566
    :cond_1
    const/4 v2, 0x0

    .line 569
    .local v2, "effective":I
    monitor-enter p0

    .line 570
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lorg/osgi/framework/AdaptPermissionCollection;->permissions:Ljava/util/Map;

    .line 572
    .local v4, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/AdaptPermission;>;"
    iget-boolean v5, p0, Lorg/osgi/framework/AdaptPermissionCollection;->all_allowed:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 573
    const-string v5, "*"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osgi/framework/AdaptPermission;

    .line 574
    .local v5, "ap":Lorg/osgi/framework/AdaptPermission;
    if-eqz v5, :cond_2

    .line 575
    iget v7, v5, Lorg/osgi/framework/AdaptPermission;->action_mask:I

    or-int/2addr v2, v7

    .line 576
    iget v7, v0, Lorg/osgi/framework/AdaptPermission;->action_mask:I

    .line 577
    .local v7, "desired":I
    and-int v8, v2, v7

    if-ne v8, v7, :cond_2

    .line 578
    monitor-exit p0

    return v6

    .line 582
    .end local v5    # "ap":Lorg/osgi/framework/AdaptPermission;
    .end local v7    # "desired":I
    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    .end local v4    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/AdaptPermission;>;"
    .local v3, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/AdaptPermission;>;"
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 585
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osgi/framework/AdaptPermission;

    .line 586
    .local v5, "perm":Lorg/osgi/framework/AdaptPermission;
    invoke-virtual {v5, v0, v2}, Lorg/osgi/framework/AdaptPermission;->implies0(Lorg/osgi/framework/AdaptPermission;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 587
    return v6

    .end local v5    # "perm":Lorg/osgi/framework/AdaptPermission;
    :cond_3
    goto :goto_0

    .line 590
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    return v1

    .line 583
    .end local v3    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/AdaptPermission;>;"
    :catchall_0
    move-exception v1

    .restart local v3    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/AdaptPermission;>;"
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method
