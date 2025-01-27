.class final Lorg/osgi/framework/BundlePermissionCollection;
.super Ljava/security/PermissionCollection;
.source "BundlePermission.java"


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x2d38303332363737L


# instance fields
.field private all_allowed:Z

.field private transient permissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/osgi/framework/BundlePermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 576
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/util/Hashtable;

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

    sput-object v0, Lorg/osgi/framework/BundlePermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 455
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osgi/framework/BundlePermissionCollection;->permissions:Ljava/util/Map;

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osgi/framework/BundlePermissionCollection;->all_allowed:Z

    .line 458
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

    .line 587
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 589
    .local v0, "gfields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "permissions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 590
    .local v1, "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/osgi/framework/BundlePermission;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lorg/osgi/framework/BundlePermissionCollection;->permissions:Ljava/util/Map;

    .line 591
    const-string v2, "all_allowed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/osgi/framework/BundlePermissionCollection;->all_allowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return-void

    .line 586
    .end local v0    # "gfields":Ljava/io/ObjectInputStream$GetField;
    .end local v1    # "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/osgi/framework/BundlePermission;>;"
    .end local p0    # "this":Lorg/osgi/framework/BundlePermissionCollection;
    .end local p1    # "in":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 579
    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/osgi/framework/BundlePermissionCollection;->permissions:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 580
    .local v0, "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/osgi/framework/BundlePermission;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 581
    .local v1, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string v2, "permissions"

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 582
    const-string v2, "all_allowed"

    iget-boolean v3, p0, Lorg/osgi/framework/BundlePermissionCollection;->all_allowed:Z

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 583
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    monitor-exit p0

    return-void

    .line 578
    .end local v0    # "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/osgi/framework/BundlePermission;>;"
    .end local v1    # "pfields":Ljava/io/ObjectOutputStream$PutField;
    .end local p0    # "this":Lorg/osgi/framework/BundlePermissionCollection;
    .end local p1    # "out":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .locals 8
    .param p1, "permission"    # Ljava/security/Permission;

    .line 471
    instance-of v0, p1, Lorg/osgi/framework/BundlePermission;

    if-eqz v0, :cond_4

    .line 474
    invoke-virtual {p0}, Lorg/osgi/framework/BundlePermissionCollection;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    .line 477
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/BundlePermission;

    .line 478
    .local v0, "bp":Lorg/osgi/framework/BundlePermission;
    invoke-virtual {v0}, Lorg/osgi/framework/BundlePermission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "name":Ljava/lang/String;
    monitor-enter p0

    .line 480
    :try_start_0
    iget-object v2, p0, Lorg/osgi/framework/BundlePermissionCollection;->permissions:Ljava/util/Map;

    .line 481
    .local v2, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/BundlePermission;>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osgi/framework/BundlePermission;

    .line 482
    .local v3, "existing":Lorg/osgi/framework/BundlePermission;
    if-eqz v3, :cond_1

    .line 483
    invoke-virtual {v3}, Lorg/osgi/framework/BundlePermission;->getActionsMask()I

    move-result v4

    .line 484
    .local v4, "oldMask":I
    invoke-virtual {v0}, Lorg/osgi/framework/BundlePermission;->getActionsMask()I

    move-result v5

    .line 485
    .local v5, "newMask":I
    if-eq v4, v5, :cond_0

    .line 486
    new-instance v6, Lorg/osgi/framework/BundlePermission;

    or-int v7, v4, v5

    invoke-direct {v6, v1, v7}, Lorg/osgi/framework/BundlePermission;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .end local v4    # "oldMask":I
    .end local v5    # "newMask":I
    :cond_0
    goto :goto_0

    .line 490
    :cond_1
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :goto_0
    iget-boolean v4, p0, Lorg/osgi/framework/BundlePermissionCollection;->all_allowed:Z

    if-nez v4, :cond_2

    .line 494
    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 495
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/osgi/framework/BundlePermissionCollection;->all_allowed:Z

    .line 497
    .end local v2    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/BundlePermission;>;"
    .end local v3    # "existing":Lorg/osgi/framework/BundlePermission;
    :cond_2
    monitor-exit p0

    .line 498
    return-void

    .line 497
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 475
    .end local v0    # "bp":Lorg/osgi/framework/BundlePermission;
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "attempt to add a Permission to a readonly PermissionCollection"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_4
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

    .line 571
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/osgi/framework/BundlePermissionCollection;->permissions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 572
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 570
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    .end local p0    # "this":Lorg/osgi/framework/BundlePermissionCollection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 12
    .param p1, "permission"    # Ljava/security/Permission;

    .line 511
    instance-of v0, p1, Lorg/osgi/framework/BundlePermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 512
    return v1

    .line 514
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/BundlePermission;

    .line 515
    .local v0, "requested":Lorg/osgi/framework/BundlePermission;
    invoke-virtual {v0}, Lorg/osgi/framework/BundlePermission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "requestedName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/osgi/framework/BundlePermission;->getActionsMask()I

    move-result v3

    .line 517
    .local v3, "desired":I
    const/4 v4, 0x0

    .line 520
    .local v4, "effective":I
    monitor-enter p0

    .line 521
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lorg/osgi/framework/BundlePermissionCollection;->permissions:Ljava/util/Map;

    .line 523
    .local v6, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/BundlePermission;>;"
    iget-boolean v7, p0, Lorg/osgi/framework/BundlePermissionCollection;->all_allowed:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 524
    const-string v7, "*"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osgi/framework/BundlePermission;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v7

    .line 525
    .local v5, "bp":Lorg/osgi/framework/BundlePermission;
    if-eqz v5, :cond_1

    .line 526
    :try_start_1
    invoke-virtual {v5}, Lorg/osgi/framework/BundlePermission;->getActionsMask()I

    move-result v7

    or-int/2addr v4, v7

    .line 527
    and-int v7, v4, v3

    if-ne v7, v3, :cond_1

    .line 528
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v8

    .line 532
    .end local v5    # "bp":Lorg/osgi/framework/BundlePermission;
    :cond_1
    :try_start_2
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osgi/framework/BundlePermission;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v7

    .line 536
    .restart local v5    # "bp":Lorg/osgi/framework/BundlePermission;
    if-eqz v5, :cond_2

    .line 538
    :try_start_3
    invoke-virtual {v5}, Lorg/osgi/framework/BundlePermission;->getActionsMask()I

    move-result v7

    or-int/2addr v4, v7

    .line 539
    and-int v7, v4, v3

    if-ne v7, v3, :cond_2

    .line 540
    monitor-exit p0

    return v8

    .line 545
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    .line 546
    .local v7, "offset":I
    :goto_0
    const-string v9, "."

    invoke-virtual {v2, v9, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v9

    move v10, v9

    .local v10, "last":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_4

    .line 547
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v2, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "*"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 548
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/osgi/framework/BundlePermission;

    move-object v5, v9

    .line 549
    if-eqz v5, :cond_3

    .line 550
    invoke-virtual {v5}, Lorg/osgi/framework/BundlePermission;->getActionsMask()I

    move-result v9

    or-int/2addr v4, v9

    .line 551
    and-int v9, v4, v3

    if-ne v9, v3, :cond_3

    .line 552
    monitor-exit p0

    return v8

    .line 555
    :cond_3
    add-int/lit8 v7, v10, -0x1

    goto :goto_0

    .line 559
    :cond_4
    monitor-exit p0

    return v1

    .line 560
    .end local v5    # "bp":Lorg/osgi/framework/BundlePermission;
    .end local v6    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/BundlePermission;>;"
    .end local v7    # "offset":I
    .end local v10    # "last":I
    :catchall_0
    move-exception v1

    .restart local v5    # "bp":Lorg/osgi/framework/BundlePermission;
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method
