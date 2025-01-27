.class final Lorg/osgi/framework/CapabilityPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "CapabilityPermission.java"


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = -0x88a1051cee51498L


# instance fields
.field private all_allowed:Z

.field private filterPermissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/osgi/framework/CapabilityPermission;",
            ">;"
        }
    .end annotation
.end field

.field private permissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/osgi/framework/CapabilityPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 764
    const/4 v0, 0x3

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

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/util/HashMap;

    const-string v3, "filterPermissions"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/osgi/framework/CapabilityPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 603
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->permissions:Ljava/util/Map;

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->all_allowed:Z

    .line 606
    return-void
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 776
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 778
    .local v0, "gfields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "permissions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 779
    .local v1, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/osgi/framework/CapabilityPermission;>;"
    iput-object v1, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->permissions:Ljava/util/Map;

    .line 780
    const-string v3, "all_allowed"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->all_allowed:Z

    .line 782
    const-string v3, "filterPermissions"

    invoke-virtual {v0, v3, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 783
    .local v2, "fp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/osgi/framework/CapabilityPermission;>;"
    iput-object v2, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->filterPermissions:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    monitor-exit p0

    return-void

    .line 775
    .end local v0    # "gfields":Ljava/io/ObjectInputStream$GetField;
    .end local v1    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/osgi/framework/CapabilityPermission;>;"
    .end local v2    # "fp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/osgi/framework/CapabilityPermission;>;"
    .end local p0    # "this":Lorg/osgi/framework/CapabilityPermissionCollection;
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

    .line 768
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 769
    .local v0, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "permissions"

    iget-object v2, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->permissions:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 770
    const-string v1, "all_allowed"

    iget-boolean v2, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->all_allowed:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 771
    const-string v1, "filterPermissions"

    iget-object v2, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->filterPermissions:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 772
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    monitor-exit p0

    return-void

    .line 767
    .end local v0    # "pfields":Ljava/io/ObjectOutputStream$PutField;
    .end local p0    # "this":Lorg/osgi/framework/CapabilityPermissionCollection;
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

    .line 619
    instance-of v0, p1, Lorg/osgi/framework/CapabilityPermission;

    if-eqz v0, :cond_7

    .line 622
    invoke-virtual {p0}, Lorg/osgi/framework/CapabilityPermissionCollection;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_6

    .line 626
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/CapabilityPermission;

    .line 627
    .local v0, "cp":Lorg/osgi/framework/CapabilityPermission;
    iget-object v1, v0, Lorg/osgi/framework/CapabilityPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-nez v1, :cond_5

    .line 631
    invoke-virtual {v0}, Lorg/osgi/framework/CapabilityPermission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "name":Ljava/lang/String;
    iget-object v2, v0, Lorg/osgi/framework/CapabilityPermission;->filter:Lorg/osgi/framework/Filter;

    .line 633
    .local v2, "f":Lorg/osgi/framework/Filter;
    monitor-enter p0

    .line 636
    if-eqz v2, :cond_0

    .line 637
    :try_start_0
    iget-object v3, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->filterPermissions:Ljava/util/Map;

    .line 638
    .local v3, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/CapabilityPermission;>;"
    if-nez v3, :cond_1

    .line 639
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    iput-object v4, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->filterPermissions:Ljava/util/Map;

    goto :goto_0

    .line 642
    .end local v3    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/CapabilityPermission;>;"
    :cond_0
    iget-object v3, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->permissions:Ljava/util/Map;

    .line 644
    .restart local v3    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/CapabilityPermission;>;"
    :cond_1
    :goto_0
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osgi/framework/CapabilityPermission;

    .line 646
    .local v4, "existing":Lorg/osgi/framework/CapabilityPermission;
    if-eqz v4, :cond_3

    .line 647
    iget v5, v4, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    .line 648
    .local v5, "oldMask":I
    iget v6, v0, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    .line 649
    .local v6, "newMask":I
    if-eq v5, v6, :cond_2

    .line 650
    new-instance v7, Lorg/osgi/framework/CapabilityPermission;

    or-int v8, v5, v6

    invoke-direct {v7, v1, v8}, Lorg/osgi/framework/CapabilityPermission;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .end local v5    # "oldMask":I
    .end local v6    # "newMask":I
    :cond_2
    goto :goto_1

    .line 653
    :cond_3
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    :goto_1
    iget-boolean v5, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->all_allowed:Z

    if-nez v5, :cond_4

    .line 657
    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 658
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->all_allowed:Z

    .line 661
    .end local v3    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/CapabilityPermission;>;"
    .end local v4    # "existing":Lorg/osgi/framework/CapabilityPermission;
    :cond_4
    monitor-exit p0

    .line 662
    return-void

    .line 661
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 628
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "f":Lorg/osgi/framework/Filter;
    :cond_5
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

    .line 623
    .end local v0    # "cp":Lorg/osgi/framework/CapabilityPermission;
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "attempt to add a Permission to a readonly PermissionCollection"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_7
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 755
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->permissions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 756
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    iget-object v1, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->filterPermissions:Ljava/util/Map;

    .line 757
    .local v1, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/CapabilityPermission;>;"
    if-eqz v1, :cond_0

    .line 758
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 760
    .end local p0    # "this":Lorg/osgi/framework/CapabilityPermissionCollection;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 754
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    .end local v1    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/CapabilityPermission;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 13
    .param p1, "permission"    # Ljava/security/Permission;

    .line 674
    instance-of v0, p1, Lorg/osgi/framework/CapabilityPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 675
    return v1

    .line 677
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/CapabilityPermission;

    .line 679
    .local v0, "requested":Lorg/osgi/framework/CapabilityPermission;
    iget-object v2, v0, Lorg/osgi/framework/CapabilityPermission;->filter:Lorg/osgi/framework/Filter;

    if-eqz v2, :cond_1

    .line 680
    return v1

    .line 683
    :cond_1
    invoke-virtual {v0}, Lorg/osgi/framework/CapabilityPermission;->getName()Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, "requestedName":Ljava/lang/String;
    iget v3, v0, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    .line 685
    .local v3, "desired":I
    const/4 v4, 0x0

    .line 688
    .local v4, "effective":I
    monitor-enter p0

    .line 689
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->permissions:Ljava/util/Map;

    .line 692
    .local v6, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/CapabilityPermission;>;"
    iget-boolean v7, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->all_allowed:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    .line 693
    const-string v7, "*"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osgi/framework/CapabilityPermission;

    .line 694
    .local v7, "cp":Lorg/osgi/framework/CapabilityPermission;
    if-eqz v7, :cond_2

    .line 695
    iget v9, v7, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    or-int/2addr v4, v9

    .line 696
    and-int v9, v4, v3

    if-ne v9, v3, :cond_2

    .line 697
    monitor-exit p0

    return v8

    .line 706
    .end local v7    # "cp":Lorg/osgi/framework/CapabilityPermission;
    :cond_2
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osgi/framework/CapabilityPermission;

    .line 707
    .restart local v7    # "cp":Lorg/osgi/framework/CapabilityPermission;
    if-eqz v7, :cond_3

    .line 709
    iget v9, v7, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    or-int/2addr v4, v9

    .line 710
    and-int v9, v4, v3

    if-ne v9, v3, :cond_3

    .line 711
    monitor-exit p0

    return v8

    .line 716
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v8

    .line 717
    .local v9, "offset":I
    :goto_0
    const-string v10, "."

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v10

    move v11, v10

    .local v11, "last":I
    const/4 v12, -0x1

    if-eq v10, v12, :cond_5

    .line 718
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v2, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "*"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 719
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/osgi/framework/CapabilityPermission;

    move-object v7, v10

    .line 720
    if-eqz v7, :cond_4

    .line 721
    iget v10, v7, Lorg/osgi/framework/CapabilityPermission;->action_mask:I

    or-int/2addr v4, v10

    .line 722
    and-int v10, v4, v3

    if-ne v10, v3, :cond_4

    .line 723
    monitor-exit p0

    return v8

    .line 726
    :cond_4
    add-int/lit8 v9, v11, -0x1

    goto :goto_0

    .line 732
    :cond_5
    iget-object v10, p0, Lorg/osgi/framework/CapabilityPermissionCollection;->filterPermissions:Ljava/util/Map;

    move-object v6, v10

    .line 733
    if-nez v6, :cond_6

    .line 734
    monitor-exit p0

    return v1

    .line 736
    :cond_6
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    .end local v6    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/CapabilityPermission;>;"
    .end local v7    # "cp":Lorg/osgi/framework/CapabilityPermission;
    .end local v9    # "offset":I
    .end local v11    # "last":I
    .local v5, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/CapabilityPermission;>;"
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 739
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osgi/framework/CapabilityPermission;

    .line 740
    .local v7, "perm":Lorg/osgi/framework/CapabilityPermission;
    invoke-virtual {v7, v0, v4}, Lorg/osgi/framework/CapabilityPermission;->implies0(Lorg/osgi/framework/CapabilityPermission;I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 741
    return v8

    .end local v7    # "perm":Lorg/osgi/framework/CapabilityPermission;
    :cond_7
    goto :goto_1

    .line 744
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    return v1

    .line 737
    .end local v5    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/CapabilityPermission;>;"
    :catchall_0
    move-exception v1

    .restart local v5    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/CapabilityPermission;>;"
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2
.end method
