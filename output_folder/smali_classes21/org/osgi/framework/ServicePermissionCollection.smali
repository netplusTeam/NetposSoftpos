.class final Lorg/osgi/framework/ServicePermissionCollection;
.super Ljava/security/PermissionCollection;
.source "ServicePermission.java"


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x932156a0b25ffedL


# instance fields
.field private all_allowed:Z

.field private filterPermissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/osgi/framework/ServicePermission;",
            ">;"
        }
    .end annotation
.end field

.field private transient permissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/osgi/framework/ServicePermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 901
    const/4 v0, 0x3

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

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/util/HashMap;

    const-string v3, "filterPermissions"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/osgi/framework/ServicePermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 714
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 715
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osgi/framework/ServicePermissionCollection;->permissions:Ljava/util/Map;

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osgi/framework/ServicePermissionCollection;->all_allowed:Z

    .line 717
    return-void
.end method

.method private effective(Ljava/lang/String;II)I
    .locals 7
    .param p1, "requestedName"    # Ljava/lang/String;
    .param p2, "desired"    # I
    .param p3, "effective"    # I

    .line 851
    iget-object v0, p0, Lorg/osgi/framework/ServicePermissionCollection;->permissions:Ljava/util/Map;

    .line 852
    .local v0, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osgi/framework/ServicePermission;

    .line 856
    .local v1, "sp":Lorg/osgi/framework/ServicePermission;
    if-eqz v1, :cond_0

    .line 858
    iget v2, v1, Lorg/osgi/framework/ServicePermission;->action_mask:I

    or-int/2addr p3, v2

    .line 859
    and-int v2, p3, p2

    if-ne v2, p2, :cond_0

    .line 860
    return p3

    .line 865
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 866
    .local v2, "offset":I
    :goto_0
    const-string v3, "."

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    move v4, v3

    .local v4, "last":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 868
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lorg/osgi/framework/ServicePermission;

    .line 869
    if-eqz v1, :cond_1

    .line 870
    iget v3, v1, Lorg/osgi/framework/ServicePermission;->action_mask:I

    or-int/2addr p3, v3

    .line 871
    and-int v3, p3, p2

    if-ne v3, p2, :cond_1

    .line 872
    return p3

    .line 875
    :cond_1
    add-int/lit8 v2, v4, -0x1

    goto :goto_0

    .line 881
    :cond_2
    return p3
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

    .line 914
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 916
    .local v0, "gfields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "permissions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 917
    .local v1, "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lorg/osgi/framework/ServicePermissionCollection;->permissions:Ljava/util/Map;

    .line 918
    const-string v3, "all_allowed"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/osgi/framework/ServicePermissionCollection;->all_allowed:Z

    .line 920
    const-string v3, "filterPermissions"

    invoke-virtual {v0, v3, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 921
    .local v2, "fp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    iput-object v2, p0, Lorg/osgi/framework/ServicePermissionCollection;->filterPermissions:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    monitor-exit p0

    return-void

    .line 913
    .end local v0    # "gfields":Ljava/io/ObjectInputStream$GetField;
    .end local v1    # "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    .end local v2    # "fp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    .end local p0    # "this":Lorg/osgi/framework/ServicePermissionCollection;
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

    .line 905
    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/osgi/framework/ServicePermissionCollection;->permissions:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 906
    .local v0, "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 907
    .local v1, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string v2, "permissions"

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 908
    const-string v2, "all_allowed"

    iget-boolean v3, p0, Lorg/osgi/framework/ServicePermissionCollection;->all_allowed:Z

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 909
    const-string v2, "filterPermissions"

    iget-object v3, p0, Lorg/osgi/framework/ServicePermissionCollection;->filterPermissions:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 910
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    monitor-exit p0

    return-void

    .line 904
    .end local v0    # "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    .end local v1    # "pfields":Ljava/io/ObjectOutputStream$PutField;
    .end local p0    # "this":Lorg/osgi/framework/ServicePermissionCollection;
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

    .line 730
    instance-of v0, p1, Lorg/osgi/framework/ServicePermission;

    if-eqz v0, :cond_7

    .line 733
    invoke-virtual {p0}, Lorg/osgi/framework/ServicePermissionCollection;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_6

    .line 737
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/ServicePermission;

    .line 738
    .local v0, "sp":Lorg/osgi/framework/ServicePermission;
    iget-object v1, v0, Lorg/osgi/framework/ServicePermission;->service:Lorg/osgi/framework/ServiceReference;

    if-nez v1, :cond_5

    .line 742
    invoke-virtual {v0}, Lorg/osgi/framework/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "name":Ljava/lang/String;
    iget-object v2, v0, Lorg/osgi/framework/ServicePermission;->filter:Lorg/osgi/framework/Filter;

    .line 744
    .local v2, "f":Lorg/osgi/framework/Filter;
    monitor-enter p0

    .line 747
    if-eqz v2, :cond_0

    .line 748
    :try_start_0
    iget-object v3, p0, Lorg/osgi/framework/ServicePermissionCollection;->filterPermissions:Ljava/util/Map;

    .line 749
    .local v3, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    if-nez v3, :cond_1

    .line 750
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    iput-object v4, p0, Lorg/osgi/framework/ServicePermissionCollection;->filterPermissions:Ljava/util/Map;

    goto :goto_0

    .line 753
    .end local v3    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    :cond_0
    iget-object v3, p0, Lorg/osgi/framework/ServicePermissionCollection;->permissions:Ljava/util/Map;

    .line 755
    .restart local v3    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    :cond_1
    :goto_0
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osgi/framework/ServicePermission;

    .line 757
    .local v4, "existing":Lorg/osgi/framework/ServicePermission;
    if-eqz v4, :cond_3

    .line 758
    iget v5, v4, Lorg/osgi/framework/ServicePermission;->action_mask:I

    .line 759
    .local v5, "oldMask":I
    iget v6, v0, Lorg/osgi/framework/ServicePermission;->action_mask:I

    .line 760
    .local v6, "newMask":I
    if-eq v5, v6, :cond_2

    .line 761
    new-instance v7, Lorg/osgi/framework/ServicePermission;

    or-int v8, v5, v6

    invoke-direct {v7, v1, v8}, Lorg/osgi/framework/ServicePermission;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    .end local v5    # "oldMask":I
    .end local v6    # "newMask":I
    :cond_2
    goto :goto_1

    .line 764
    :cond_3
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :goto_1
    iget-boolean v5, p0, Lorg/osgi/framework/ServicePermissionCollection;->all_allowed:Z

    if-nez v5, :cond_4

    .line 768
    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 769
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/osgi/framework/ServicePermissionCollection;->all_allowed:Z

    .line 772
    .end local v3    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    .end local v4    # "existing":Lorg/osgi/framework/ServicePermission;
    :cond_4
    monitor-exit p0

    .line 773
    return-void

    .line 772
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 739
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

    .line 734
    .end local v0    # "sp":Lorg/osgi/framework/ServicePermission;
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "attempt to add a Permission to a readonly PermissionCollection"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
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

    .line 892
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/osgi/framework/ServicePermissionCollection;->permissions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 893
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    iget-object v1, p0, Lorg/osgi/framework/ServicePermissionCollection;->filterPermissions:Ljava/util/Map;

    .line 894
    .local v1, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    if-eqz v1, :cond_0

    .line 895
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 897
    .end local p0    # "this":Lorg/osgi/framework/ServicePermissionCollection;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 891
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    .end local v1    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 10
    .param p1, "permission"    # Ljava/security/Permission;

    .line 785
    instance-of v0, p1, Lorg/osgi/framework/ServicePermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 786
    return v1

    .line 788
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/ServicePermission;

    .line 790
    .local v0, "requested":Lorg/osgi/framework/ServicePermission;
    iget-object v2, v0, Lorg/osgi/framework/ServicePermission;->filter:Lorg/osgi/framework/Filter;

    if-eqz v2, :cond_1

    .line 791
    return v1

    .line 794
    :cond_1
    const/4 v2, 0x0

    .line 796
    .local v2, "effective":I
    monitor-enter p0

    .line 797
    const/4 v3, 0x0

    :try_start_0
    iget v4, v0, Lorg/osgi/framework/ServicePermission;->action_mask:I

    .line 799
    .local v4, "desired":I
    iget-boolean v5, p0, Lorg/osgi/framework/ServicePermissionCollection;->all_allowed:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 800
    iget-object v5, p0, Lorg/osgi/framework/ServicePermissionCollection;->permissions:Ljava/util/Map;

    const-string v7, "*"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osgi/framework/ServicePermission;

    .line 801
    .local v5, "sp":Lorg/osgi/framework/ServicePermission;
    if-eqz v5, :cond_2

    .line 802
    iget v7, v5, Lorg/osgi/framework/ServicePermission;->action_mask:I

    or-int/2addr v2, v7

    .line 803
    and-int v7, v2, v4

    if-ne v7, v4, :cond_2

    .line 804
    monitor-exit p0

    return v6

    .line 809
    .end local v5    # "sp":Lorg/osgi/framework/ServicePermission;
    :cond_2
    iget-object v5, v0, Lorg/osgi/framework/ServicePermission;->objectClass:[Ljava/lang/String;

    .line 811
    .local v5, "requestedNames":[Ljava/lang/String;
    if-nez v5, :cond_3

    .line 812
    invoke-virtual {v0}, Lorg/osgi/framework/ServicePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v4, v2}, Lorg/osgi/framework/ServicePermissionCollection;->effective(Ljava/lang/String;II)I

    move-result v7

    or-int/2addr v2, v7

    .line 813
    and-int v7, v2, v4

    if-ne v7, v4, :cond_5

    .line 814
    monitor-exit p0

    return v6

    .line 819
    :cond_3
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v5

    .local v8, "l":I
    :goto_0
    if-ge v7, v8, :cond_5

    .line 820
    aget-object v9, v5, v7

    invoke-direct {p0, v9, v4, v2}, Lorg/osgi/framework/ServicePermissionCollection;->effective(Ljava/lang/String;II)I

    move-result v9

    and-int/2addr v9, v4

    if-ne v9, v4, :cond_4

    .line 821
    monitor-exit p0

    return v6

    .line 819
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 825
    .end local v7    # "i":I
    .end local v8    # "l":I
    :cond_5
    iget-object v7, p0, Lorg/osgi/framework/ServicePermissionCollection;->filterPermissions:Ljava/util/Map;

    .line 826
    .local v7, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    if-nez v7, :cond_6

    .line 827
    monitor-exit p0

    return v1

    .line 829
    :cond_6
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    .end local v4    # "desired":I
    .end local v5    # "requestedNames":[Ljava/lang/String;
    .end local v7    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/ServicePermission;>;"
    .local v3, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/ServicePermission;>;"
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 833
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osgi/framework/ServicePermission;

    .line 834
    .local v5, "perm":Lorg/osgi/framework/ServicePermission;
    invoke-virtual {v5, v0, v2}, Lorg/osgi/framework/ServicePermission;->implies0(Lorg/osgi/framework/ServicePermission;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 835
    return v6

    .end local v5    # "perm":Lorg/osgi/framework/ServicePermission;
    :cond_7
    goto :goto_1

    .line 838
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    return v1

    .line 830
    .end local v3    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/ServicePermission;>;"
    :catchall_0
    move-exception v1

    .restart local v3    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/ServicePermission;>;"
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
