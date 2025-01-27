.class final Lorg/osgi/framework/AdminPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "AdminPermission.java"


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x3636393930373730L


# instance fields
.field private all_allowed:Z

.field private transient permissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/osgi/framework/AdminPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1000
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

    sput-object v0, Lorg/osgi/framework/AdminPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 891
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 892
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osgi/framework/AdminPermissionCollection;->permissions:Ljava/util/Map;

    .line 893
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

    .line 1011
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1013
    .local v0, "gfields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "permissions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 1014
    .local v1, "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/osgi/framework/AdminPermission;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lorg/osgi/framework/AdminPermissionCollection;->permissions:Ljava/util/Map;

    .line 1015
    const-string v2, "all_allowed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/osgi/framework/AdminPermissionCollection;->all_allowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    monitor-exit p0

    return-void

    .line 1010
    .end local v0    # "gfields":Ljava/io/ObjectInputStream$GetField;
    .end local v1    # "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/osgi/framework/AdminPermission;>;"
    .end local p0    # "this":Lorg/osgi/framework/AdminPermissionCollection;
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

    .line 1003
    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/osgi/framework/AdminPermissionCollection;->permissions:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 1004
    .local v0, "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/osgi/framework/AdminPermission;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 1005
    .local v1, "pfields":Ljava/io/ObjectOutputStream$PutField;
    const-string v2, "permissions"

    invoke-virtual {v1, v2, v0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1006
    const-string v2, "all_allowed"

    iget-boolean v3, p0, Lorg/osgi/framework/AdminPermissionCollection;->all_allowed:Z

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1007
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    monitor-exit p0

    return-void

    .line 1002
    .end local v0    # "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/osgi/framework/AdminPermission;>;"
    .end local v1    # "pfields":Ljava/io/ObjectOutputStream$PutField;
    .end local p0    # "this":Lorg/osgi/framework/AdminPermissionCollection;
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

    .line 907
    instance-of v0, p1, Lorg/osgi/framework/AdminPermission;

    if-eqz v0, :cond_5

    .line 910
    invoke-virtual {p0}, Lorg/osgi/framework/AdminPermissionCollection;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 913
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/AdminPermission;

    .line 914
    .local v0, "ap":Lorg/osgi/framework/AdminPermission;
    iget-object v1, v0, Lorg/osgi/framework/AdminPermission;->bundle:Lorg/osgi/framework/Bundle;

    if-nez v1, :cond_3

    .line 917
    invoke-virtual {v0}, Lorg/osgi/framework/AdminPermission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 918
    .local v1, "name":Ljava/lang/String;
    monitor-enter p0

    .line 919
    :try_start_0
    iget-object v2, p0, Lorg/osgi/framework/AdminPermissionCollection;->permissions:Ljava/util/Map;

    .line 920
    .local v2, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/AdminPermission;>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osgi/framework/AdminPermission;

    .line 921
    .local v3, "existing":Lorg/osgi/framework/AdminPermission;
    if-eqz v3, :cond_1

    .line 922
    iget v4, v3, Lorg/osgi/framework/AdminPermission;->action_mask:I

    .line 923
    .local v4, "oldMask":I
    iget v5, v0, Lorg/osgi/framework/AdminPermission;->action_mask:I

    .line 925
    .local v5, "newMask":I
    if-eq v4, v5, :cond_0

    .line 926
    new-instance v6, Lorg/osgi/framework/AdminPermission;

    iget-object v7, v3, Lorg/osgi/framework/AdminPermission;->filter:Lorg/osgi/framework/Filter;

    or-int v8, v4, v5

    invoke-direct {v6, v7, v8}, Lorg/osgi/framework/AdminPermission;-><init>(Lorg/osgi/framework/Filter;I)V

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .end local v4    # "oldMask":I
    .end local v5    # "newMask":I
    :cond_0
    goto :goto_0

    .line 929
    :cond_1
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    :goto_0
    iget-boolean v4, p0, Lorg/osgi/framework/AdminPermissionCollection;->all_allowed:Z

    if-nez v4, :cond_2

    .line 932
    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 933
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/osgi/framework/AdminPermissionCollection;->all_allowed:Z

    .line 936
    .end local v2    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/AdminPermission;>;"
    .end local v3    # "existing":Lorg/osgi/framework/AdminPermission;
    :cond_2
    monitor-exit p0

    .line 937
    return-void

    .line 936
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 915
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

    .line 911
    .end local v0    # "ap":Lorg/osgi/framework/AdminPermission;
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "attempt to add a Permission to a readonly PermissionCollection"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
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

    .line 995
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/osgi/framework/AdminPermissionCollection;->permissions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 996
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 994
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/security/Permission;>;"
    .end local p0    # "this":Lorg/osgi/framework/AdminPermissionCollection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 9
    .param p1, "permission"    # Ljava/security/Permission;

    .line 951
    instance-of v0, p1, Lorg/osgi/framework/AdminPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 952
    return v1

    .line 955
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/AdminPermission;

    .line 957
    .local v0, "requested":Lorg/osgi/framework/AdminPermission;
    iget-object v2, v0, Lorg/osgi/framework/AdminPermission;->filter:Lorg/osgi/framework/Filter;

    if-eqz v2, :cond_1

    .line 958
    return v1

    .line 960
    :cond_1
    const/4 v2, 0x0

    .line 962
    .local v2, "effective":I
    monitor-enter p0

    .line 963
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lorg/osgi/framework/AdminPermissionCollection;->permissions:Ljava/util/Map;

    .line 965
    .local v4, "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/AdminPermission;>;"
    iget-boolean v5, p0, Lorg/osgi/framework/AdminPermissionCollection;->all_allowed:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 966
    const-string v5, "*"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osgi/framework/AdminPermission;

    .line 967
    .local v5, "ap":Lorg/osgi/framework/AdminPermission;
    if-eqz v5, :cond_2

    .line 968
    iget v7, v5, Lorg/osgi/framework/AdminPermission;->action_mask:I

    or-int/2addr v2, v7

    .line 969
    iget v7, v0, Lorg/osgi/framework/AdminPermission;->action_mask:I

    .line 970
    .local v7, "desired":I
    and-int v8, v2, v7

    if-ne v8, v7, :cond_2

    .line 971
    monitor-exit p0

    return v6

    .line 975
    .end local v5    # "ap":Lorg/osgi/framework/AdminPermission;
    .end local v7    # "desired":I
    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    .end local v4    # "pc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/osgi/framework/AdminPermission;>;"
    .local v3, "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/AdminPermission;>;"
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 979
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osgi/framework/AdminPermission;

    .line 980
    .local v5, "perm":Lorg/osgi/framework/AdminPermission;
    invoke-virtual {v5, v0, v2}, Lorg/osgi/framework/AdminPermission;->implies0(Lorg/osgi/framework/AdminPermission;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 981
    return v6

    .end local v5    # "perm":Lorg/osgi/framework/AdminPermission;
    :cond_3
    goto :goto_0

    .line 984
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    return v1

    .line 976
    .end local v3    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/AdminPermission;>;"
    :catchall_0
    move-exception v1

    .restart local v3    # "perms":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/osgi/framework/AdminPermission;>;"
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
